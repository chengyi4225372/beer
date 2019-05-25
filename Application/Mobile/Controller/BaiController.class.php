<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/25
 * Time: 13:23
 */
namespace Mobile\Controller;

use Mobile\Controller\BaseController;
use Think\Controller;
class BaiController extends BaseController
{
    public function index(){
        $this->display();
    }
}