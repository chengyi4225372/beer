<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/25
 * Time: 14:01
 */

namespace Mobile\Controller;

use Mobile\Controller\BaseController;

class BeerController extends BaseController
{
    public function index(){
        $this->display();
    }
}