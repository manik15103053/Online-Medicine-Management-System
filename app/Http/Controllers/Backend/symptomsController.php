<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Symptoms;

class symptomsController extends Controller
{
    public function showSymptoms()
    {
        $symptoms = Symptoms::all();
        //dd($symptoms);
        return view('backend.pages.symptoms.showSymptoms', compact('symptoms'));
    }

    public function createSymptoms(Request $request)
    {
        $symptoms=new Symptoms();
        $symptoms->symptom_name = $request->symptom_name;
        $symptoms->save();

        session()->flash('success', 'Symptoms has Created successfully !!');
        return redirect()->back();

    }

    public function updateSymptoms($id)
    {
        $symptoms=Symptoms::where('id', $id)->first();
        //dd($symptoms);
        return view('backend.pages.symptoms.editSymptoms', compact('symptoms'));

    }

    public function updateSymptomsProcess($id, Request $request)
    {
        //dd($id);
        $symptoms=Symptoms::find($id);
        $symptoms->symptom_name = $request->symptom_name;
        $symptoms->save();

        session()->flash('success', 'Symptoms has updated successfully !!');
        return redirect()->route('showSymptoms');
        /*return view('backend.pages.symptoms.showSymptoms');*/

    }

    public function deleteSymptoms($id)
    {
        $symptom=Symptoms::find($id);
        $symptom->delete();
        /*session()->flash('success', 'Symptom has been deleted successfully !!');*/
        return back();
    }
}
