<?php

namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;

class Information extends Model
{
    protected $table = 'zwf_admin_information';
    //有时间字段,不自动更新,手动更新
    public $timestamps = false;
    //白名单
    protected $fillable = ['news_id','class_id','column_id','title','onclick','titlepic','smalltext','keyboard','truetime','lastdotime'];
    //主键
    protected $primaryKey = 'news_id';

    //内容表一对一
    public function newData()
    {
        return $this ->hasOne('App\Model\Admin\InformationData','news_id','news_id');
    }
    //查询Information数据
    public function getInformation()
    {
        // $data = $this->select('*')->get();
        $data = $this ->select('*')->paginate(10);
        if(!empty($data))
        {
            return $data;
        }else{
            return [];
        }

    }
    //查询一条
    public function getInformationById($id=0)
    {
        if(!empty($id)){
            return $this->where('news_id',$id)->first();
        }else{
            return '';
        }
    }
}
