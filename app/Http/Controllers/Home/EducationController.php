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
        $url = '/education/business';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column->getIdByUrl($url);
        $column_id = $info['column_id'];

        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        $this ->assign['info'] = $info;
        $this ->assign['res'] = $res;
    	return view('home.education.education',$this->assign);
    }
    //投资者教育-风险管理与防范
    public function risk()
    {
        $url = '/education/risk';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column ->getIdByUrl($url);
        $column_id = $info['column_id'];
        
        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        $this->assign['info'] = $info;
        $this->assign['res'] = $res;
        return view('home.education.education',$this->assign);
    }
    //投资者教育-投资者权益保护
    public function equity()
    {   $url = '/education/equity';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column->getIdByUrl($url);
        $column_id = $info['column_id'];
       
        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        $this->assign['info'] = $info;
        $this->assign['res'] = $res;
        return view('home.education.education',$this->assign);
    }
    //投资者教育-产品知识
    public function knowledge()
    {   $url = '/education/knowledge';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column->getIdByUrl($url);
        $column_id = $info['column_id'];

        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        $this->assign['info'] = $info;
        $this->assign['res'] = $res;

        return view('home.education.education',$this->assign);
    }

    //投资者教育-常见问题
    public function question()
    {   $url = '/education/question';
        $model_column = new \App\Model\Admin\Column();
        $info = $model_column->getIdByUrl($url);
        $column_id = $info['column_id'];

        $model_education = new \App\Model\Admin\Education();
        $res = $model_education->getMessageById($column_id);
        $this->assign['info'] = $info;
        $this->assign['res'] = $res;

        return view('home.education.education',$this->assign);
    }
    
    //投资者教育-详情展示
    public function showEducation($id=0)
    {   
        $model = new \App\Model\Admin\EducationData();
        $res = $model->getContentById($id);
        $model_data = new \App\Model\Admin\Education();
        $data = $model_data->getDataById($id);
        $title = $data->title;
        
        $this->assign['res'] = $res;
        $this->assign['title']=$title;
        return view('home.education.edudetail',$this->assign);
    }
     
   
  
}
