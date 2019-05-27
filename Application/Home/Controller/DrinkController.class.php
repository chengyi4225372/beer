<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:35
 */

//手机端 白酒 控制器
// todo 白酒和 产品重叠 估计需要更换

namespace Home\Controller;
use Think\Controller;
use Home\Controller\BaseController;

class DrinkController extends  BaseController
{

    public function baijiu(){
         $this->display();
     }

    public function index(){
        return $this->display();
    }
}