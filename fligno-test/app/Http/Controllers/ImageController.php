<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Image;
use App\User;

use Illuminate\Support\Facades\Auth;

class ImageController extends Controller
{

    public function uploadImage(Request $request)
    {
        $image = $request->image;
        list($type, $image) = explode(';', $image);
        list(, $image)      = explode(',', $image);
        $image = base64_decode($image);
        $image_name= time().'.png';
        $path = public_path('profileimg/'.$image_name);
        file_put_contents($path, $image);
        if(Auth::check()){
            $userId = Auth::user()->id;
        }
        $dataProfile = User::where('id', '=', $userId)->take(1)->get();
        if (count($dataProfile) > 0) {
            foreach($dataProfile as $Profile){
                $image_path = public_path('profileimg/'.$Profile->profileimage); 
                if($Profile->profileimage != 'profile.jpg'){
                    @unlink($image_path);
                }
                $profileUpdate = User::where('id', '=', $userId)
                    ->update(['profileimage' => $image_name]);
            }          
        }
        // else {
        //     $profileUpdate = new User();
        //     $profileUpdate->id = $userId;
        //     $profileUpdate->profileimage = $image_name;
        //     $profileUpdate->save();
        // }
        return response()->json(['status'=>true]);

    }
}
