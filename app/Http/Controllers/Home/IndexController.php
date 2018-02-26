<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Home\HomeController;
use Illuminate\Support\Facades\DB;
// use App\Model\Admin\Column;
// use App\Model\Admin\Education;
// use App\Model\Admin\EducationData;

class IndexController extends HomeController
{
	public $assign = [];
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
    //开户流程
    public function serviceCenter()
    {
    	return view('home.servicecenter.servicecenter',$this->assign);
    }
    //投资者教育

    public function education()
     {   //$educations =new App\Model\Admin\Education;

        return view('home.education.education',$this->assign);
    }
    // public function education()
    // {  
    //     $news = DB::table('zwf_admin_education as zwf')
    //         ->join('zwf_admin_education_data as zlq','zwf.news_id','=','zlq.news_id')
    //         ->select('zwf.news_id','zwf.title','zwf.onclick','zwf.column_id','zwf.truetime','zlq.writer','zlq.befrom','zwf.state')
    //         ->latest('news_id')
    //         ->where('state',1)
    //         ->paginate(10);
    //     //var_dump($news->toArray());
    //     // $columns_id = Column::select();
    //     // dd($columns_id);
    //     foreach($news as &$v)
    //     {

    //         $column_name = Column::select(['column_name'])->find($v ->column_id)->column_name;
    //         // var_dump($column_name);
    //         $v->column_name = $column_name;

    //     }

        
    //     return view('home.education.education',$this->assign)->with([
    //         'newses' => $news,
    //         'search' => []
    //     ]);
       
    // 	// return view('home.education.education',$this->assign);

    // }
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
    // 联系我们
    public function contact()
    {	
    	$contents = new \App\Model\Admin\Contact;

    	$data = $contents->getContact();
        // dd($data->toArray());
       // echo  arrval( $data , '0.duty' , '' );die;
    	$this->assign['data'] = $data->toArray();
    	return view('home.contact.contact',$this->assign);
        
    	

    }
    //社会责任
    public function social()
    {
    	return view('home.social.social',$this->assign);
    }
}
