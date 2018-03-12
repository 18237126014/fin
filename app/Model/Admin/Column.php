<?php

namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;

class Column extends Model
{
    //表名
    protected $table = 'zwf_admin_column';
    //没有时间字段,不自动更新
    //public $timestamps = true;
    //白名单
    protected $fillable = ['column_id','column_name','column_pid','column_path','column_filename','column_chaining','column_display','created_at','updated_at'];
    //主键
    protected $primaryKey = 'column_id';

    public function getMenuList(){
    	$menus = $this->where('state', 1)->where('column_display',1)
    					->orderBy('column_pid')->orderBy('sort')->get();
    	if(!empty($menus))
    	{
    		$list = [];
    		foreach($menus as $menu)
    		{
    			// echo $menu->column_pid;
    			if($menu->column_pid == 0){
    				$list[$menu->column_id] = $menu->toArray();
    			}else{
    				$list[$menu->column_pid]['list'][$menu->column_id] = $menu->toArray();
    			}
    			// var_dump($menu->toArray());
    		}

    		return $list;
    		// echo '<pre>';
    		// print_r($list);
    	}

    	return [];

    }
    //(Home)通过url取id
    public function getIdByUrl($url='')
    {
        if(empty($url))
        {
            return [];
        }

        $data =$this->where('column_chaining',$url)->first();
       if(!empty($data)){
        return $data;
       }
       return [];
    }

    //通过column_id查询信息
    public function getInformationById($id='')
    {
        if(empty($id))
        {
            return [];
        }

        $information = $this->where('column_id',$id)->first();
        
        if(!empty($information))
        {
            return $information;
        }

        return [];
    }
}
