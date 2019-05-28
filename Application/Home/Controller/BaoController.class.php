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

class BaoController extends  BaseController
{
   public function index(){
       $this->display();
   }

    public function lst(){
        $this->display();
    }

    public function detail(){
        $this->display();
    }

}