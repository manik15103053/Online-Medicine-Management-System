@extends('backend.layouts.master')

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="card">
                <div class="card-header">
                    Manage Mapping
                </div>
                <div class="card-header">


                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
                        Add Mapping
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Add Mapping</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">


                                    <form action="{{route('createMapping')}}" method="post" enctype="multipart/form-data">
                                        @csrf
                                        @include('backend.partials.messages')

                                        <div class="form-group">
                                            <label for="sel1">Diseases Name</label>
                                            <select class="form-control" name="disease_id" id="sel1">
                                                @foreach($disease as $disease_all)
                                                    <option value="{{$disease_all->id}}">{{$disease_all->disease_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="sel2">Symptom Name</label>
                                            <select class="form-control" name="symptom_id"  name="" id="sel2">
                                                @foreach($symptoms as $symptom)
                                                    <option value="{{$symptom->id}}">{{$symptom->symptom_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>


                                        <button type="submit" class="btn btn-primary">Add Mapping</button>
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
                            <th>Symptom Name</th>
                            <th>Disease Name</th>
                            <th>Action</th>
                        </tr>

                        @foreach ($mapping as $mappings)
                            <tr>
                                <td>#</td>
                                @foreach($mappings->symptoms as $symptom)
                                <td>{{ $symptom->symptom_name }}</td>
                                @endforeach
                                @foreach($mappings->diseases as $disease)
                                <td>{{ $disease->disease_name }}</td>
                                @endforeach
                                <td>

                                    <a href="{{route('updateMapping', $mappings->id)}}" class="btn btn-success">Update</a>


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
