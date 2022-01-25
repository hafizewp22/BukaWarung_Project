<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="{{url('/')}}">BukaWarung</a>
        <div class="search-bar">
            <form action="{{ url('searchproduct')}}" method="POST">
                @csrf
                <div class="input-group">
                    <input type="search" class="form-control" id="search_product" name="product_name" required placeholder="Search your product" aria-describedby="basic-addon1">
                    <button type="submit" class="input-group-text"><i class="fa fa-search"></i></button>
                </div>
            </form>
        </div>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <li class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{url('/')}}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('category')}}">Category</a>
                </li>
                @guest
                    @if (Route::has('login'))
                        <a href="{{ route('login') }}" class="nav-link">Login</a>
                    @endif

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="nav-link">Register</a>
                    @endif
                @endguest

                @if (Route::has('login'))
                    <li class="nav-item dropdown">
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="{{url('cart')}}">Cart
                                <span type="hidden" class="badge badge-pill bg-primary cart-count">0</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{url('wishlist')}}">Wishlist
                                <span  type="hidden" class="badge badge-pill bg-success wishlist-count">0</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{url('my-orders')}}">
                                My Orders
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </li>
                    @endauth
                @endif
            </ul>
    </div>
</nav>
