<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/31
 * Time: 16:40
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;
class VideoController extends  BaseController
{
    public $table ='video';


    public function hot(){
        $arr = M($this->table)->order('lan desc,id desc')->limit(10)->select();
        return $arr?$arr:'';
    }


    public function index(){
        $pages= 8;
        $count =  M($this->table)->count();
        $size = $count/$pages;
        $list  =M($this->table)->order('id desc')->page($_GET['p'].','.$pages)->select();
        $this->assign('list',$list);
        $this->assign('size',$size);
        $this->display();
    }

    public function detail(){
        $id =I('get.id');
        $info = M($this->table)->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $hot =$this->hot();
        $this->assign('hot',$hot);
        $top =$this->top($id);
        $next =$this->next($id);
        $this->assign('top',$top);
        $this->assign('next',$next);
        $this->display();
    }



    public function top($id){
        $top = M($this->table)->where(array('id'=>array('lt',$id)))->order('id asc')->find();
        return $top?$top:'';
    }


    public function next($id){
        $next = M($this->table)->where(array('id'=>array('gt',$id)))->order('id desc')->find();
        return $next?$next:'';
    }

}