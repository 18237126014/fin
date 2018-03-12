<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Home\HomeController;


class InformationController extends HomeController
{
    //信息中心-中心公告
    public function information()
    {   $url = '/information/announcement';
        $model_column = new \App\Model\Admin\Column();
        $info_column = $model_column->getIdByUrl($url);
        $column_id =  $info_column['column_id'];

        $model_getInformation = new \App\Model\Admin\Information();
        $info = $model_getInformation->getInformation($column_id);


        // $arr = $info->toArray();
        // foreach ($arr as $key => &$value) {
        //     $times = $value['lastdotime'];
        //     $time = date('Y-m-d H:i:s',$times);
        //     $value['lastdotime'] = $time;
        // }
        // $this->assign['arr'] = $arr;
        $this->assign['info'] = $info;
        $this->assign['info_column'] = $info_column;
        return view('home.information.information',$this->assign);
    }

    
    //信息中心-中心动态
    public function dynamics()
    {   $url = '/information/dynamics';
        $model_column = new \App\Model\Admin\Column();
        $info_column = $model_column->getIdByUrl($url);
        $column_id =  $info_column['column_id'];

        $model_getInformation = new \App\Model\Admin\Information();
        $info = $model_getInformation->getInformation($column_id);

        $this->assign['info'] = $info;
        $this->assign['info_column']=$info_column;
        return view('home.information.dynamics',$this->assign);
    }
    //信息中心-资讯要闻
    public function impnews()
    {   
        $url = '/information/impnews';
        $model_column = new \App\Model\Admin\Column();
        $info_column = $model_column->getIdByUrl($url);
        $column_id =  $info_column['column_id'];

        $model_getInformation = new \App\Model\Admin\Information();
        $info = $model_getInformation->getInformation($column_id);

        $this->assign['info'] = $info;
        $this->assign['info_column']=$info_column;
        return view('home.information.impnews',$this->assign);
    }

    //信息中心-中心公告-详情页
    public function detailed($id)
    {   
        $model_getInformationData = new \App\Model\Admin\InformationData();
        $info = $model_getInformationData->getInformationData($id);
        $model_getInformation = new \App\Model\Admin\Information();
        $info_information = $model_getInformation->getInformationById($id);
        $title = $info_information->title;

        $column_id = $info_information->column_id;
        $model_column = new \App\Model\Admin\Column();
        $column_info = $model_column->getInformationById($column_id);
        $column = $column_info->column_name;

        
        $this->assign['info'] = $info;
        $this->assign['title'] = $title;
        $this->assign['column'] = $column;
        return view('home.information.detailed',$this->assign);
    }
    

}
