<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 11:22
 */
namespace Home\Controller;
use Think\Controller;
use Home\Controller\BaseController;

//零售控制器
class MaiController extends  BaseController{

   public function lst(){
       $this->display();
   }

}