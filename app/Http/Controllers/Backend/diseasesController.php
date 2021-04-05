<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Diseases;

class diseasesController extends Controller
{
    public function showDiseases()
    {
        $diseases = Diseases::all();
        //dd($diseases);
        return view('backend.pages.diseases.showDiseases', compact('diseases'));
    }

    public function createDiseases(Request $request)
    {
        $diseases=new Diseases();
        $diseases->disease_name = $request->disease_name;
        $diseases->medicine_name = $request->medicine_name;
        $diseases->save();
        //dd($diseases);

        session()->flash('success', 'diseases has Created successfully !!');
        return redirect()->back();

    }

    public function updateDiseases($id)
    {
        $diseases=Diseases::where('id', $id)->first();
        //dd($diseases);
        return view('backend.pages.diseases.editDiseases', compact('diseases'));

    }

    public function updateDiseasesProcess($id, Request $request)
    {
        //dd($id);
        $diseases=Diseases::find($id);
        $diseases->disease_name = $request->disease_name;
        $diseases->medicine_name = $request->medicine_name;
        $diseases->save();

        session()->flash('success', 'Diseases has updated successfully !!');
        return redirect()->route('showDiseases');

    }
}
