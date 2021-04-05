@extends('backend.layouts.master')

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="card">
                <div class="card-header">
                    Manage Symptoms
                </div>
                <div class="card-body">
                    @include('backend.partials.messages')

                    <form action="{{route('updateSymptomsProcess', $symptoms->id)}}" method="post" enctype="multipart/form-data">
                        {{ method_field('PUT') }}
                        @csrf
                        @include('backend.partials.messages')
                        <div class="form-group">
                            <label for="name">Symptom Name</label>
                            <input type="text" class="form-control" value="{{$symptoms->symptom_name}}" name="symptom_name" id="name" aria-describedby="emailHelp" placeholder="Enter Category Name">
                        </div>


                        <button type="submit" class="btn btn-primary">Update Symptom</button>
                    </form>

                </div>
            </div>

        </div>
    </div>
    <!-- main-panel ends -->
@endsection
