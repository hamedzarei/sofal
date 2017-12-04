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
    {{--    <link rel="stylesheet" href="{{ URL::asset('css/') }}">--}}
    <link rel="stylesheet" href="{{ URL::asset('css/side-bar.css') }}">
    <style>
        /*.side-bar {*/
            /*!*background-color: rgba(25,25,25,0.24);*!*/
        /*}*/
        .main .row {
            position: relative;
        }
        .sidenav .item {
            width: 90%;
            margin: auto;
        }

        .sidenav {
            height: 100%;
            width: 200px;
            position: fixed;
            z-index: 1;
            top: 0;
            right: 0;
            background-color: rgb(55, 60, 67);
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidenav a {
            padding: 6px 6px 6px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #8181a1 !important;
            display: block;
        }

        .sidenav a:hover {
            color: #f1f1f1 !important;
        }

        .main {
            margin-left: 200px; /* Same as the width of the sidenav */
        }

        /*
            file
        */
        /*.custom-file-text placeholder {*/
            /*en: "Choose file...";*/
        /*}*/
        /*.custom-file-text .button-label {*/
            /*en: "Browse";*/
        /*}*/


    </style>
</head>
<body>
@include('common.header')
{{--@include('common.navigation-bar')--}}
<div class="container-fluid main">
    <div class="row">
        <div class="col-3">
            <div class="sidenav">
                <a href="{{ route('panel.product.add') }}" class="center">تعریف کالا</a>
            </div>
        </div>
        <div class="col-7 content">
            @if(isset($type))
                @include("auth.$type")
            @endif

        </div>
        <div class="col-2"></div>
    </div>
</div>
@include('common.js')
<script !src="">
//    toastr.options.newestOnTop = true;
//    toastr.options.rtl = true;
//    toastr.info('اثم');
</script>
</body>
</html>
