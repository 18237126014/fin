<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Home\HomeController;


class InformationController extends HomeController
{
    //信息中心-中心公告
    public function information()
    {
        $model_getInformation = new \App\Model\Admin\Information();
        $info = $model_getInformation->getInformation();

        // $arr = $info->toArray();
        // foreach ($arr as $key => &$value) {
        //     $times = $value['lastdotime'];
        //     $time = date('Y-m-d H:i:s',$times);
        //     $value['lastdotime'] = $time;
        // }
        // $this->assign['arr'] = $arr;
        $this->assign['info'] = $info;
        return view('home.information.information',$this->assign);
    }

    //信息中心-中心公告-详情页
    public function detailed($id)
    {   

        $model_getInformationData = new \App\Model\Admin\InformationData();
        $info = $model_getInformationData->getInformationData($id);
        $model_getInformation = new \App\Model\Admin\Information();
        $info_information = $model_getInformation->getInformationById($id);
        $title = $info_information->title;
        


        $this->assign['info'] = $info;
        $this->assign['title'] = $title;
        return view('home.information.detailed',$this->assign);
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
    

    public function education()
     {   
        $url = '/education/law';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column ->getIdByUrl($url);
        $column_id = $info['column_id'];

        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        
        $this->assign['info'] = $info;
        $this->assign['res'] = $res;
        return view('home.education.education',$this->assign);
    }
    
   
  
}
