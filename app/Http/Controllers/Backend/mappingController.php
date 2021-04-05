<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Mapping;
use App\Models\Diseases;
use App\Models\Symptoms;

class mappingController extends Controller
{
    public function showMappingList()
    {
        //$test=Mapping::with('diseases')->with('symptoms')->get();
        //dd($test);
        $mapping = Mapping::with('diseases')->with('symptoms')->get();
        $disease = Diseases::all();
        $symptoms = Symptoms::all();
        //dd($mapping);
        return view('backend.pages.mapping.showMapping', compact('mapping', 'disease', 'symptoms'));
    }

    public function createMapping(Request $request)
    {
        $mapping=new Mapping();
        $mapping->disease_id = $request->disease_id;
        $mapping->symptom_id = $request->symptom_id;
        $mapping->save();
        //dd($mapping);

        session()->flash('success', 'mapping has Created successfully !!');
        return redirect()->back();

    }/*

    public function updateMapping($id)
    {
        $mapping=Mapping::where('id', $id)->first();
        //dd($mapping);
        return view('backend.pages.mapping.editMapping', compact('mapping'));

    }

    public function updateMappingProcess($id, Request $request)
    {
        //dd($id);
        $mapping=Mapping::find($id);
        $mapping->disease_name = $request->disease_name;
        $mapping->medicine_name = $request->medicine_name;
        $mapping->save();

        session()->flash('success', 'Mapping has updated successfully !!');
        return redirect()->route('showMapping');

    }*/
}
