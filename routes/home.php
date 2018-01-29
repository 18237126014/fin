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
// Route::get('/','Home\IndexController@index');

// Route::get('/', function () {
//     return view('home/index');
// });

//前台分组
Route::group(['namespace'=>'Home'],function()
{
    
    Route::get('/','IndexController@index');
    //关于我们-中心简介
    Route::get('related','IndexController@aboutUs');
    
});





?>  