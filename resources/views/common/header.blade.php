<div class="container-fluid header">
    <div class="row social-icons-header">
        <div class="col-2"></div>
        <div class="col-2">
            @if(!\Illuminate\Support\Facades\Auth::check())
                <a href="{{ route('login') }}" class="no-decorated text-white">ورود</a>
                <a href="" class="text-white"> | </a>
                <a href="{{ route('register') }}" class="no-decorated text-white">ایجاد اکانت</a>
            @else
                <div class="dropdown">
                    <a href="#" class="dropdown-toggle text-white no-decorated" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" class="no-decorated text-dark center">
                                خروج
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </li>
                    </ul>
                </div>
            @endif
        </div>
        <div class="col-4"></div>
        <div class="col-4">
            <i class="fa fa-twitter"></i>
            <i class="fa fa-facebook"></i>
            <i class="fa fa-instagram"></i>
            <i class="fa fa-telegram"></i>
            <i class="fa fa-skype"></i>
        </div>
    </div>

    <div class="row logo-row">
        <div class="col-2"></div>
        <div class="col-4 logo">
            <img src="{{ URL::asset('img/logo.png') }}" alt="">
        </div>
        <div class="col-2">

        </div>
        <div class="col-4">

        </div>
    </div>
</div>