<?php
/**
 * 使用编辑器 PhpStorm.
 * 用户: 曾伟峰
 * 日期: 2017/11/24 0024
 * 时间: 上午 10:25
 */

//获取当前角色权限
function getRights($role_id)
{
    //根据角色id 查询出所拥有的权限
    foreach(\App\Model\Admin\Role::find($role_id)->rightses()->get() as $rights)
    {
        $rightses[] = $rights -> pivot -> rights_id;
    }
    if(empty($rightses))
    {
        return '';
    }
    //根据权限id 组,查询出权限名,并拼接成字符串
    $rightses_name = '';
    foreach($rightses as $rights_id)
    {
        $rightses_name .= \App\Model\Admin\Rights::find($rights_id)->rights_name.',';
    }
    $rightses_name =  trim($rightses_name,',');
    return $rightses_name;

}

//获取当前用户角色
function getRoles($user_id)
{
    //var_dump($user_id);
    //根据用户id 查询出所拥有的权限
    foreach(\App\Model\Admin\User::find($user_id)->roles()->get() as $role)
    {
        $roles[] = $role->pivot -> role_id;
    }
    if(empty($roles))
    {
        return '';
    }
    //根据角色id组,查询出用户名,并拼接成字符串
    $roles_name = '';
    foreach($roles as $role_id)
    {
        $roles_name .= \App\Model\Admin\Role::find($role_id)->role_name.',';
    }
    $roles_name = trim($roles_name,',');
    return $roles_name;
}

//根据父级id 获取栏目名
function getParetColumn($pid)
{
    if($pid == 0)
    {
        return '/';
    }
    $paretInfo = \App\Model\Admin\Column::where('column_id',$pid)->first();
    return $paretInfo->column_name;
}

/**
     * 读取数组的元素，防止为空情况
     * @param Array $arr 数组
     * @param String $key 键值，查询$arr数组中的下标值
     * 支持 二维数组查找，key格式为 key1.key2，key1是一维数组下标，
     * key2是二维数组下标，目前只支持两级
     * @param String $val 默认值，查询不到数据的时候返回的默认值
     * @return String 查询到的值，
     * @author Toby.tu 2017-10-30
     */
    function arrval($arr=[],$key='',$val=''){
    if(empty($arr) || empty($key)) return $val;
    if(stripos($key,'.') > -1){//多级数组
        $keys = explode('.',$key);
        if(isset($arr[$keys[0]][$keys[1]]) && trim($arr[$keys[0]][$keys[1]]) != ''){
            return $arr[$keys[0]][$keys[1]];
        }
        return $val;
    }else if(isset($arr[$key]) && trim($arr[$key]) != ''){
        return $arr[$key];
    }else{
        return $val;
    }
}

// 用法 arrval( $data , ' depar ' , '默认值' )
