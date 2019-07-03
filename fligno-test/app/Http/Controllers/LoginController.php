<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    //
    public function adminLogin(Request $request){
        //dd($request->all());
        
        if(Auth::attempt([
            'usernam' => $request->username,
            'password' => $request->password
        ])){
            $user = User::where('username', $request->username )->first();
        
            if($user->usertype=='admin'){
                return redirect('admin/dashboard');
               
            }
            else {
                return redirect('/home');
            }
        }
        else {
            //return('error');
            return redirect()->back()->with('error', 'Login Credentials Incorrect!');
        }
        //return redirect('dashboard');
    }
}
