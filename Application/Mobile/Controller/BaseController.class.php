<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/25
 * Time: 11:22
 */
namespace  Mobile\Controller;


use Think\Controller;

class BaseController extends Controller{

   public function  _initialize(){
        // parent::__construct();
         if(!is_mobile_request()){
             C('DEFAULT_V_LAYER','Home');
         }
   }
}