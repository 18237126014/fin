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
    //关于我们
     public function aboutUs()
    {
        return view('home.aboutus.aboutUs',$this->assign);
    }
    //组织架构
     public function organizationalStructure()
    {
        return view('home.aboutus.organizationalstructure',$this->assign);
    }
    //发展历程
    public function develoPment()
    {
    	return view('home.aboutus.development',$this->assign);
    }
    //信息中心-中心公告
    public function information()
    {
    	return view('home.information.information',$this->assign);
    }
    //信息中心-中心动态
    public function dynamics()
    {
    	return view('home.information.dynamics',$this->assign);
    }
    //信息中心-资讯要闻
    public function impnews()
    {
    	return view('home.information.impnews',$this->assign);
    }
    //上市品种
    public function variety()
    {
    	return view('home.variety.variety',$this->assign);
    }
    //下载中心
    public function download()
    {
    	return view('home.download.download',$this->assign);
    }
    
}
