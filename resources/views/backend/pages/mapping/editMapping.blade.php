@extends('backend.layouts.master')

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="card">
                <div class="card-header">
                    Manage Diseases
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <form action="{{route('updateDiseasesProcess', $diseases->id)}}" method="post" enctype="multipart/form-data">
                        {{ method_field('PUT') }}
                        @csrf
                        @include('backend.partials.messages')
                        <div class="form-group">
                            <label for="name">Diseases Name</label>
                            <input type="text" class="form-control" value="{{$diseases->disease_name}}" name="disease_name" id="name" aria-describedby="emailHelp" placeholder="Enter Diseases Name">
                        </div>
                        <div class="form-group">
                            <label for="name">Medicine Name</label>
                            <input type="text" class="form-control" value="{{$diseases->medicine_name}}" name="medicine_name" id="name" aria-describedby="emailHelp" placeholder="Enter Diseases Name">
                        </div>


                        <button type="submit" class="btn btn-primary">Update Diseases</button>
                    </form>

                </div>
            </div>

        </div>
    </div>
    <!-- main-panel ends -->
@endsection
