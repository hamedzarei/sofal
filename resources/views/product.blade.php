<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{{ $title }}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">
    <link rel="apple-touch-icon" href="icon.png">
    <!-- Place favicon.ico in the root directory -->

    @include('common.css')
    <link rel="stylesheet" href="{{ URL::asset('css/product.css') }}">
    <style>
        .box .box-content img{
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
@include('common.header')
@include('common.navigation-bar')
<div class="container product">
    <div class="row">
        <h4 class="center">{{ $product['name'] }}</h4>
    </div>
    <hr>
    <div class="row">
        <div class="col-5">
            <div class="container images">
                <div class="row main-image">
                    @if(isset($product['images'][0]))
                        <img src="{{ URL::asset($product['images'][0]['path']) }}" alt="">
                    @else
                        <img src="{{ URL::asset('img/no.png') }}" alt="">
                    @endif
                </div>
                <div class="row">
                    @if($product['images'])
                        @foreach($product['images'] as $index=>$image)
                            @if($index > 0)
                                <div class="similar-images center">
                                    <img src="{{ URL::asset($image['path']) }}" alt="">
                                </div>
                            @endif
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        <div class="col-7">
            <h5 class="center border-bottom">مشخصات </h5>
            <div class="product-detail">
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">قیمت:‌ </span>
                    <span class="value">{{ $product['cost'] }} ریال</span>
                </p>
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">قابل شستشو:‌ </span>
                    <span class="value">
                        @if($product['washable'] == 1)
                            هست
                        @else
                        نیست
                        @endif
                    </span>
                </p>
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">جنس:‌ </span>
                    <span class="value">{{ $product['material'] }}</span>
                </p>
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">کد:‌ </span>
                    <span class="value">{{ $product['code'] }}</span>
                </p>
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">رنگ ها:‌ </span>
                    <span class="value">
                        @foreach(explode(',', $product['colors']) as $color)
                            <span class="color-item" style="background-color: {{ $color }}"></span>
                        @endforeach
                    </span>
                </p>
                <p class="detail-item">
                    <span class='fa fa-caret-left'></span>
                    <span class="label">توضیحات:‌ </span>
                    <span class="value">{{ $product['description'] }}</span>
                </p>
            </div>
        </div>
    </div>
</div>
@include('common.js')
</body>
</html>
