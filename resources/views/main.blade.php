<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">
    <link rel="apple-touch-icon" href="icon.png">
    <!-- Place favicon.ico in the root directory -->

    @include('common.css')
{{--    <link rel="stylesheet" href="{{ URL::asset('css/') }}">--}}
    <link rel="stylesheet" href="{{ URL::asset('css/side-bar.css') }}">
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
<div class="container-fluid main">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-2 side-bar">
            @include('common.side-bar')
        </div>
        <div class="col-6 content">
            <div class="container-fluid">
                <div class="row">دسته ها</div>
                <div class="row">
                    @foreach($cats as $cat)
                        <div class="box">
                            <div class="box-content">
                                <img src="{{ URL::asset($cat['images'][0]['path']) }}" alt="">
                            </div>
                            <div class="box-header">
                                {{ $cat['name'] }}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
        <div class="col-2"></div>
    </div>
</div>
@include('common.js')
</body>
</html>
