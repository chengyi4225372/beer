<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/25
 * Time: 13:33
 */
namespace Mobile\Controller;

use Mobile\Controller\BaseController;

class NewsController extends BaseController
{
    public function index(){
        $this->display();
    }
}