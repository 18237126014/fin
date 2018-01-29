<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Home\HomeController;

class IndexController extends HomeController
{
    //显示首页
    public function index()
    {
        return view('home.index',$this->assign);
    }
     public function aboutUs()
    {
        return view('home.aboutus.aboutUs',$this->assign);
    }
    //组织架构
     public function organizationalStructure()
    {
        return view('home.aboutus.organizationalstructure');
    }

}
