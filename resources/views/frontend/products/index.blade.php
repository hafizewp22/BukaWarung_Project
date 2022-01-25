@extends('layouts.front')

@section('title')
    {{$category->name}}
@endsection

@section('content')
    <div class="py-3 mp-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
                <a href="{{url('category')}}">
                    Collections
                </a> /
                <a href="{{url('view-category/'.$category->slug)}}">
                    {{$category->name}}
                </a>

            </h6>
        </div>
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>{{$category->name}}</h2>
                @foreach($products as $prod)
                    <div class="col-md-3 mb-3">
                        <div class="card">
                            <a href="{{url('category/'.$category->slug.'/'.$prod->slug)}}">
                                <img style="height: 300px; width: 300px;" src="{{asset('assets/uploads/products/'.$prod->image)}}" alt="Product image">
                                <div class="card-body">
                                    <h5>{{$prod->name}}</h5>
                                    <small class="float-start">Rp. {{number_format($prod->selling_price)}}</small>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
