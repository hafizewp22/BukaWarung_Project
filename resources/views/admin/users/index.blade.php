@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-header">
            <h1>Registered users</h1>
        </div>

        <div class="card-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
                </thead>
                <thead>
                @foreach($users as $item)
                    <tr>
                        @if($item-> role_as < 1)
                            <td>{{$item->id}}</td>
                            <td>{{$item->name.' '.$item->lname}}</td>
                            <td>{{$item->email}}</td>
                            <td>{{$item->phone}}</td>
                            <td>
                                <a href="{{url('view-user/'.$item->id)}}" class="btn btn-primary btn-sm">View </a>
                            </td>
                        @endif
                    </tr>
                @endforeach
                </thead>
            </table>
        </div>
    </div>

@endsection
