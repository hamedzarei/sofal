<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    use AuthenticatesUsers;

    public function login(Request $request)
    {
        if (Auth::attempt([
            'email' => $request->input('email'),
            'password' => $request->input('password'),
        ])) {
            switch (Auth::user()->toArray()['role']) {
                case 'admin':
                    return view('auth.panel')->with([
                        'title' => 'پنل مدیریت',
                        'no_header_image' => true
                    ]);
                case 'editor':
                case 'regular':
                default:
                    return redirect(route('home'));
            }

        }
        else {
            $this->sendFailedLoginResponse($request);
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect(route('home'));
    }

    public function register(Request $request)
    {
        $data = $request->all();
        User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
        Auth::attempt([
            'email' => $data['email'],
            'password' => $data['password']
        ]);
        return redirect(route('home'));
    }

    public function password_request(Request $request)
    {

    }
}
