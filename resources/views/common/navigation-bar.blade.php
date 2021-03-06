<nav class="container-fluid navbar navbar-expand-lg navbar-light bg-light">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="row collapse navbar-collapse" id="navbarSupportedContent">
            <div class="col-2"></div>
            <ul class="col-6 navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">   صفحه اصلی <span class="sr-only">(current)</span> <i class="fa fa-home"></i></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        محصولات
                    </a>
                    <div class="dropdown-menu">
                        @foreach($nav['categories'] as $category)
                            <a class="dropdown-item" href="/category/{{ $category['id'] }}">{{ $category['name'] }}</a>
                        @endforeach
                        {{--<a class="dropdown-item" href="#">Link 2</a>--}}
                        {{--<a class="dropdown-item" href="#">Link 3</a>--}}
                    </div>
                </li>
            </ul>
            <form class="col-4 form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="جستجو" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">جستجو</button>
            </form>
        </div>
</nav>