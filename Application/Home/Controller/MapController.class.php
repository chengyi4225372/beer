<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 11:08
 */

//网站地图
namespace Home\Controller;
use Think\Controller;
use Home\Controller\BaseController;
class MapController extends  BaseController
{
    function index(){
        $this->display();
    }
}