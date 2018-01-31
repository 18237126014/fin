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
    //中心简介
    Route::get('related/profile','IndexController@aboutUs');
    //关于我们-组织架构
    Route::get('related/organizationalstructure','IndexController@organizationalStructure');
    //关于我们-发展历程
    Route::get('related/development','IndexController@develoPment');
    //信息中心-中心公告
    Route::get('information','IndexController@information');
    Route::get('information/announcement','IndexController@information');
    //信息中心-资讯要闻
    Route::get('information/impnews','IndexController@impnews');
    //信息中心-中心动态
    Route::get('information/dynamics','IndexController@dynamics');
    //上市品种
    Route::get('variety','IndexController@variety');
    //下载中心
    Route::get('download','IndexController@download');
});





?>  