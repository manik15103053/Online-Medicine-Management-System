@extends('backend.layouts.master')

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="card">
                <div class="card-header">
                    Manage Symptoms
                </div>
                <div class="card-header">


                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
                        Add Symptoms
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Add Symptoms</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">


                                    <form action="{{route('createSymptoms')}}" method="post" enctype="multipart/form-data">
                                        @csrf
                                        @include('backend.partials.messages')
                                        <div class="form-group">
                                            <label for="name">Symptom Name</label>
                                            <input type="text" class="form-control" name="symptom_name" id="name" aria-describedby="emailHelp" placeholder="Enter Category Name">
                                        </div>


                                        <button type="submit" class="btn btn-primary">Add Symptom</button>
                                    </form>


                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="card-body">
                    @include('backend.partials.messages')
                    <table class="table table-hover table-striped">
                        <tr>
                            <th>#</th>
                            <th>Symptoms Name</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($symptoms as $symptom)
                            <tr>
                                <td>#</td>
                                <td>{{ $symptom->symptom_name }}</td>
                                <td>

                                    <a href="{{route('updateSymptoms', $symptom->id)}}" class="btn btn-success">Update</a>
                                    {{--<a href="{{route('deleteSymptoms', $symptom->id)}}" class="btn btn-danger">Delete</a>--}}


                                </td>
                            </tr>
                        @endforeach

                    </table>
                </div>
            </div>

        </div>
    </div>
    <!-- main-panel ends -->
@endsection
