{{--@extends('layouts.app')--}}

{{--@section('content')--}}
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>ورود</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="manifest" href="site.webmanifest">
    <link rel="apple-touch-icon" href="icon.png">
    <!-- Place favicon.ico in the root directory -->

    @include('common.css')
    {{--    <link rel="stylesheet" href="{{ URL::asset('css/') }}">--}}
    <style>
        body {
            background: #384047;
            font-family: sans-serif;
            font-size: 10px;
        }

        form * {
            direction: ltr !important;
            text-align: left;
            vertical-align: middle;
        }

        form {
            background: #fff;
            padding: 4em 4em 2em;
            max-width: 400px;
            margin: 50px auto 0;
            box-shadow: 0 0 1em #222;
            border-radius: 2px;
        }
        form h2 {
            margin: 0 0 50px 0;
            padding: 10px;
            text-align: center;
            font-size: 30px;
            color: #666666;
            border-bottom: solid 1px #e5e5e5;
        }
        form p {
            margin: 0 0 3em 0;
            position: relative;
        }
        form input {
            display: block;
            box-sizing: border-box;
            width: 100%;
            outline: none;
            margin: 0;
            line-height: 25px;
        }
        form input[type="text"],
        form input[type="email"],
        form input[type="password"] {
            background: #fff;
            border: 1px solid #dbdbdb;
            font-size: 1.6em;
            padding: .8em .5em;
            border-radius: 2px;
        }
        form input[type="text"]:focus,
        form input[type="email"]:focus,
        form input[type="password"]:focus {
            background: #fff;
        }
        form span {
            display: block;
            background: #F9A5A5;
            padding: 2px 5px;
            color: #666;
        }
        form input[type="submit"] {
            background: rgba(148, 186, 101, 0.7);
            box-shadow: 0 3px 0 0 rgba(123, 163, 73, 0.7);
            border-radius: 2px;
            border: none;
            color: #fff;
            cursor: pointer;
            display: block;
            font-size: 2em;
            line-height: 1.6em;
            margin: 2em 0 0;
            outline: none;
            padding: .8em 0;
            text-shadow: 0 1px #68B25B;
            text-align: center;
        }
        form input[type="submit"]:hover {
            background: #94af65;
            text-shadow: 0 1px 3px rgba(70, 93, 41, 0.7);
        }
        form label {
            position: absolute;
            left: 8px;
            top: 12px;
            color: #999;
            font-size: 16px;
            display: inline-block;
            padding: 4px 10px;
            font-weight: 400;
            background-color: rgba(255, 255, 255, 0);
            -moz-transition: color 0.3s, top 0.3s, background-color 0.8s;
            -o-transition: color 0.3s, top 0.3s, background-color 0.8s;
            -webkit-transition: color 0.3s, top 0.3s, background-color 0.8s;
            transition: color 0.3s, top 0.3s, background-color 0.8s;
        }
        form label.floatLabel {
            top: -11px;
            background-color: rgba(255, 255, 255, 0.8);
            font-size: 14px;
        }
        a,
        a:hover {
            text-decoration: none;
        }
    </style>
</head>
<body>

<form class="form-horizontal" method="POST" action="{{ route('login') }}">
    {{ csrf_field() }}
    <h2>ورود کاربران</h2>

    <p class="{{ $errors->has('email') ? ' has-error' : '' }}">
        <label for="email" class="control-label floatLabel">ایمیل</label>

        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

        @if ($errors->has('email'))
            <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
        @endif
    </p>

    <p class="{{ $errors->has('password') ? ' has-error' : '' }}">
        <label for="password" class="control-label floatLabel">رمز عبور</label>
        <input id="password" type="password" class="form-control" name="password" required>

        @if ($errors->has('password'))
            <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
        @endif
    </p>

    <p>
        <label for="remember" class="control-label floatLabel  "> به خاطر سپاردن</label>
        <input id="remember" type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
    </p>

    <p>
        <input type="submit" value="ورود" id="submit">
        <a class="btn btn-link" href="{{ route('password.request') }}">
            رمز کاربری خود را فراموش کرده اید؟
        </a>
    </p>
    <h4 style="text-align: left">
        <a href="{{ route('register') }}">ایجاد اکانت</a>
    </h4>
</form>
@include('common.js')

</body>
</html>
