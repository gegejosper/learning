<?php

namespace App\Http\Controllers;

use App\User;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //
    public function index()
    {
        $userData = User::sortable()->simplePaginate(20);
        //dd($userData);
        return view('admin.dashboard', compact('userData'));
    }
    public function memberedit(Request $req){
        $dataProfile = User::where('id', '=',$req->id)->take(1)->get();
        if (count($dataProfile) > 0) {
                $dataUser = User::find($req->id);
                $dataUser->name = $req->name;
                $dataUser->email = $req->email;
                $dataUser->address = $req->address;
                $dataUser->contactnum = $req->contactnum;
                $dataUser->save();
                return response()->json($req);   
        }
    }
    public function memberdelete(Request $req){

        $dataMember = User::find($req->id)->delete();
        return response()->json();
        
    }
    
    public function members (){

        $userData = User::sortable()->simplePaginate(20);
        //dd($userData);
        return view('admin.members', compact('userData'));

    }
    public function membersearch(Request $request){
        $userData = User::where('name','LIKE','%'.$request->q.'%')->sortable()->simplePaginate(20);
        //dd($dataUser);
        return view('admin.members', compact('userData')); 
    }
    public function memberprofile($id)
    {
        $userData = User::where('id', '=', $id)->get();
        //dd($userData);
        return view('admin.member-profile', compact('userData'));
    }
}
