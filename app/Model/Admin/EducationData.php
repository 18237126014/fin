<?php

namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;

class EducationData extends Model
{
    protected $table = 'zwf_admin_education_data';
    //有时间字段,不自动更新,手动更新
    public $timestamps = false;
    //白名单
    protected $fillable = ['news_id','class_id','writer','befrom','newstext'];
    //主键
    protected $primaryKey = 'news_id';

    //内容表一对一
    public function news()
    {
        return $this ->hasOne('App\Model\Admin\Education','news_id','news_id');
    }
    //获取文本信息content
    public function getContentById($id=0)

    {
        if(empty($id))
        {
            return '';
        }

        $info =$this ->where('news_id',$id)->first();
            if(!empty($info)){
            $content = $info->newstext;
            if(!empty($content))
            {
                return $content;
            }else
            {
                return '';
            }

            }else{
                return '';
            }
    
        
    }

        


}
