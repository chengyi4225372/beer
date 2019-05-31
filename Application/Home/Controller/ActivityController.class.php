<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:47
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;

class ActivityController extends  BaseController
{
    public $table ='protuct';

    public function index(){
         $hot =  M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>3))->order('lan desc')->limit(3)->select();
         $yuan = M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>2))->order('lan desc')->limit(9)->select();
         $style= M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>1))->order('lan desc')->limit(9)->select();
         $this->assign('hot',$hot);
         $this->assign('yuan',$yuan);
         $this->assign('style',$style);
         $this->display();
    }



}