<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

class GuestController extends Controller
{
    //
    public function index()
    {
        $userData = User::sortable()->simplePaginate(20);
        return view('index', compact('userData'));
    }

    public function memberprofile($id)
    {
        $userData = User::where('id', '=', $id)->get();
        //dd($userData);
        return view('member-profile', compact('userData'));
    }

    public function members (){

        $userData = User::sortable()->simplePaginate(20);
        //dd($userData);
        return view('members', compact('userData'));

    }
    public function membersearch(Request $request){
            $userData = User::where('name','LIKE','%'.$request->q.'%')->sortable()->simplePaginate(20);
            //dd($dataUser);
            return view('members', compact('userData'));    
    }
}
