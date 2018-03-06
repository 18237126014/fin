<?php

namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    protected $table = 'zwf_admin_education';
    //有时间字段,不自动更新,手动更新
    public $timestamps = false;
    //白名单
    protected $fillable = ['news_id','class_id','column_id','title','onclick','truetime','lastdotime'];
    //主键
    protected $primaryKey = 'news_id';

    //内容表一对一
    public function newData()
    {
        return $this ->hasOne('App\Model\Admin\EducationData','news_id','news_id');
    }

    //(Home)通过id获取一个栏目的信息
    public function getMessageById($id='') 
    {
        if(empty($id))
        {
            return [];
        }
        $data = $this->where('column_id',$id)->where('state',1)->get();
        if(!empty($data)){
            return $data;
        }
        return [];

    }
    //通过news_id获取文章标题
    public function getDataById($id=0)
    {
        if(empty($id))
        {
            return '';
        }
        $data = $this->where('news_id',$id)->first();
        if(!empty($data))
        {
            return $data;
        }else{
            return '';
        }
    }
}
