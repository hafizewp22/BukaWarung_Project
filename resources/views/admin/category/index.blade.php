@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-header">
            <h1>Category Page</h1>
        </div>

        <div class="card-body">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <thead>
                @foreach($category as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->description}}</td>
                        <td>
                            <img src="{{ asset('assets/uploads/category/'.$item->image) }}" class="cate-image" alt="Image here">
                        </td>
                        <td>
                            <a href="{{url('edit-prod/'.$item->id)}}" class="btn btn-primary">Edit</a>
                            <a href="{{url('delete-category/'.$item->id)}}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                @endforeach
                </thead>
            </table>
        </div>
    </div>

@endsection
