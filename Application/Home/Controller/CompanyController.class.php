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
      //酒业新闻 7
      $jiu_news  =M('news')->where(array('id'=>7,'is_deleted'=>0))->order('lan desc')->limit(3)->select();
      //合作案例 10
      $good =M('good')->where(array('id'=>10,'is_deleted'=>0))->order('lan desc')->limit(3)->select();
      //公司新闻
      $com_news  =M('news')->where(array('id'=>5,'is_deleted'=>0))->order('lan desc')->limit(3)->select();
      $this->assign('jiu_news',$jiu_news);
      $this->assign('com_news',$com_news);
      $this->assign('good',$good);
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
        //产品最高4
         $pro =M('protuct')->where()->order(array('is_deleted'=>0))->order('lan desc')->limit(4)->select();
         $this->assign('pro',$pro);
         //公司新闻
         $news =M('news')->where(array('pid'=>5,'is_deleted'=>0))->order('lan desc')->limit(3)->select();
         $this->assign('news',$news);
         $this->display();
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