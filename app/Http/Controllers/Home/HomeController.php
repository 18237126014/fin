<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
	public $assign = [];
    public function __construct()
    {
    	// parent::__construct();
    	// echo 'hahhaaaa';
    	// $this->assign['title'] = '首页';
    	$column_model = new \App\Model\Admin\Column();
    	
    	$menu_list = $column_model->getMenuList();
    	$this->assign['menu_list'] = $menu_list;
    }
    
}
