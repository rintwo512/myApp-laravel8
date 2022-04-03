<?php

namespace App\Http\Controllers;

use App\Models\Ac;
use App\Models\User;
use App\Models\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class LoginController extends Controller
{


    public function index()
    {
        return view('auth.login');
    }

    public function postLogin(Request $request)
    {
        $validate = $request->validate([
            'nik' => 'required|numeric',
            'password' => 'required'
        ]);

        $nik = $request->nik;

        $users = User::where('nik', $nik)->get()->toArray();


        if ($users) {

            if ($users[0]['is_active'] === 1) {

                $sess = User::find($users[0]['id'])->userAgent;

                $id = $users[0]['id'];

                if (Auth::attempt($validate)) {

                    $user = User::find($id);
                    $user->userAgent->lat = $request->lat;
                    $user->userAgent->long = $request->long;
                    $user->userAgent->user_agent = $request->userAgent();
                    $user->push();

                    $request->session()->regenerate();
                    return redirect()->intended('/dashboard');
                }
            } else {

                return back()->with('loginError', 'Sorry,' . ' ' . '<span style="color:red">' . $users[0]['name'] . '</span>' . ' ' . 'your account is not active!');
            }
        } else {

            return back()->with('loginError', 'This' . ' ' . '<span style="color:red">' . $request->nik . '</span>' . ' ' . 'is not registered yet!');
        }

        return back()->with('loginError', 'Wrong NIK or Password!');
    }

    public function logout(Request $request, $id)
    {

        $log = User::find($id);

        $data = ['status_login' => 'offline'];

        $log->where('id', $id)->update($data);

        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
