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

    //藏酒洞视频
    public  function cjd(){
        $this->display();
    }

    public function fz(){
        $this->display();
    }

    public function gy(){
        $this->display();
    }


    public function lianxi(){
        $map = M('privacy')->find(1);
        $this->assign('map',$map);
        $this->display();
    }

     public function beer(){
        $this->display(T('company/beer','Mobile'));
     }

     //原料
    public function yl(){
        $this->display();
    }

    //工艺梁酒
    public function lj(){
        $this->display();
    }

    //储存文化
    public function chu(){
        $this->display();
    }
}