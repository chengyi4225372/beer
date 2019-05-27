<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:01
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;
class CompanyController extends  BaseController
{
    public $table ='moves';

    public function index(){
        $id =I('get.id');
        $res= M($this->table)->where(array('id'=>$id))->find();
        $this->assign('res',$res);
        $this->display();
    }

    //藏酒洞
    public  function cjd(){
        $this->display();
    }

    public function fz(){
        $this->display();
    }

    public function gy(){
        $this->display();
    }

    public function cvideo(){
        $this->display();
    }

    public function lianxi(){
        $this->display();
    }

     public function beer(){
        $this->display(T('company/beer','Mobile'));
     }
}