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

    <link rel="stylesheet" href="{{ URL::asset('css/app.css') }}">
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
            




        </div>
        <div class="col-2"></div>
    </div>
</div>
<script src="{{ URL::asset('js/app.js') }}"></script>
</body>
</html>
