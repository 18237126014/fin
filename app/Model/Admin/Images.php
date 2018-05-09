<?php
namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
	protected $table = 'zwf_images';
    //有时间字段,不自动更新,手动更新
    public $timestamps = false;
    //白名单
    protected $fillable = ['img_id','url','from','delete_time','update_time'];
    //获取zwf_images表的内容
    public function getContact(){
    	$data = $this->select('*')->get();
    	if(empty($data)){
    		return [];
    	}else{
    		return $data;
    	}
    }




}















?>