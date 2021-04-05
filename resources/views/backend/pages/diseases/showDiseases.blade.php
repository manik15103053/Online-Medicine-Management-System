@extends('backend.layouts.master')

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="card">
                <div class="card-header">
                    Manage Diseases
                </div>
                <div class="card-header">


                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
                        Add Diseases
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Add Diseases</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">


                                    <form action="{{route('createDiseases')}}" method="post" enctype="multipart/form-data">
                                        @csrf
                                        @include('backend.partials.messages')
                                        <div class="form-group">
                                            <label for="name">Diseases Name</label>
                                            <input type="text" class="form-control" name="disease_name" id="name" aria-describedby="emailHelp" placeholder="Enter Category Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Medicine Name</label>
                                            <input type="text" class="form-control" name="medicine_name" id="name" aria-describedby="emailHelp" placeholder="Enter Category Name">
                                        </div>


                                        <button type="submit" class="btn btn-primary">Add Diseases</button>
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
                            <th>Diseases Name</th>
                            <th>Medicine Name</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($diseases as $disease)
                            <tr>
                                <td>#</td>
                                <td>{{ $disease->disease_name }}</td>
                                <td>{{ $disease->medicine_name }}</td>
                                <td>

                                    <a href="{{route('updateDiseases', $disease->id)}}" class="btn btn-success">Update</a>


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
