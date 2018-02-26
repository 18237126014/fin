<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Home\HomeController;


class EducationController extends HomeController
{
	
    
    //投资者教育

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
    //投资者教育-业务规范
    public function business()
    {
    	return view('home.education.business',$this->assign);
    }
    //投资者教育-业务规范-现货
    // public function goods()
    // {
    // 	return view('home.education.goods');
    // }
  
}
