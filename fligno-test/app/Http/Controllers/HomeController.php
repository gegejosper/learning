<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
   
    public function profile()
    {
        if(Auth::check()){
            $userId = Auth::user()->id;
        }
        
        $userData = User::where('id', '=', $userId)->get();
        //dd($userData);
        return view('profile', compact('userData'));
    }
    public function home (){

        $userData = User::sortable()->simplePaginate(20);
        //dd($userData);
        return view('home', compact('userData'));

    }
    public function profileedit(Request $req){
        if(Auth::check()){
            $userId = Auth::user()->id;
        }

        $dataProfile = User::where('id', '=', $userId)->take(1)->get();
        if (count($dataProfile) > 0) {
            $dataUser = User::find($userId);
            $dataUser->name = $req->name;
            $dataUser->address = $req->address;
            $dataUser->contactnum = $req->contactnum;
            $dataUser->save();
            return response()->json($req);   
        }
    }
    public function profileimage()
    {
        if(Auth::check()){
            $userId = Auth::user()->id;
        }
        
        $userData = User::where('id', '=', $userId)->get();
       
        return view('image', compact('userData'));
    }
    
}
