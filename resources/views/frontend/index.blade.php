@extends('layouts.front')

@section('title')
    Welcome to BukaWarung
@endsection

@section('content')
    @include('layouts.inc.slider')

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Featured Products</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach($featured_products as $prod)
                        <div class="item">
                            <div class="card">
                                <a href="{{url('category/'.$prod->category->slug.'/'.$prod->slug)}}">
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
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Trending Category</h2>
                <div class="owl-carousel trending-carousel owl-theme">
                    @foreach($trending_category as $tcategory)
                        <div class="item">
                            <a href="{{ url('view-category/'.$tcategory->slug) }}">
                                <div class="card">
                                    <img style="height: 300px; width: 300px;" src="{{asset('assets/uploads/category/'.$tcategory->image)}}" alt="Category image">
                                    <div class="card-body">
                                        <h5>{{$tcategory->name}}</h5>
                                        <p>
                                            {{ $tcategory->description }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $('.featured-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:4
                }
            }
        })

        $('.trending-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:4
                }
            }
        })
    </script>
@endsection
