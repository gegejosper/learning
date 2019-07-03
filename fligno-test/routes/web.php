<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'GuestController@index')->name('index');

Route::get('/members', 'GuestController@members')->name('members');
Route::get('/membersearch', 'GuestController@membersearch')->name('membersearch');
Route::get('/member/{id}', 'GuestController@memberprofile')->name('memberprofile');

Auth::routes();

Route::group(['middleware' => 'memberAuth'], function(){
    Route::get('/home', 'HomeController@home')->name('home');

    Route::get('/profile', 'HomeController@profile')->name('profile');
    Route::post('/profile/edit', 'HomeController@profileedit')->name('profileedit');
    Route::get('/profile/image', 'HomeController@profileimage')->name('profileimage');
    Route::post('/crop-image', 'ImageController@uploadImage')->name('upload.image');
});

Route::group(['middleware' => 'adminAuth', 'prefix' => 'admin'], function(){ 
    Route::get('/dashboard', 'AdminController@index')->name('index');
    Route::get('/members', 'AdminController@members')->name('adminmembers');
    Route::get('/membersearch', 'AdminController@membersearch')->name('adminmembersearch');
    Route::post('/member/edit', 'AdminController@memberedit')->name('memberedit');
    Route::post('/member/delete', 'AdminController@memberdelete')->name('memberdelete');
    Route::get('/member/{id}', 'AdminController@memberprofile')->name('memberprofile');
    Route::post('/member/update/username', 'AdminController@memberupdateusername')->name('memberupdateusername');
});




