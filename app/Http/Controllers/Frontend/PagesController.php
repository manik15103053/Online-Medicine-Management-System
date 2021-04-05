<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Mapping;
use App\Models\Symptoms;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Product;

class PagesController extends Controller
{
    public function index()
    {
      $products = Product::orderBy('id', 'desc')->paginate(9);
      return view('frontend.pages.index', compact('products'));
    }

    public function contact()
    {
      return view('frontend.pages.contact');
    }

    public function search(Request $request)
    {
      $search = $request->search;

        $products = Product::orWhere('title', 'like', '%'.$search.'%')
        ->orWhere('description', 'like', '%'.$search.'%')
        ->orWhere('slug', 'like', '%'.$search.'%')
        ->orWhere('price', 'like', '%'.$search.'%')
        ->orWhere('quantity', 'like', '%'.$search.'%')
        ->orderBy('id', 'desc')
        ->paginate(9);

        return view('frontend.pages.product.search', compact('search', 'products'));
    }
    public function select_symptoms(){
        $symptom = Symptoms::all();
        //dd($symptom);
        return view('frontend.disease_finding.symptoms', compact('symptom'));
    }

    public function findSymptom(Request $request)
    {
        //dd($request->all());
        //dd($request->input('checkbox'));
        $diseases = join(',', $request->input('checkbox'));

       $all_diseases=Mapping::whereIn('symptom_id',$request->input('checkbox'))->with('diseases')->with('symptoms')->get();

        //dd($all_diseases);
        return view('frontend.disease_finding.symptomsResults', compact('all_diseases'));
    }

}
