<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 11:21
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;

class OemController extends  BaseController
{
    public $table = 'white';
    public $cates = 'white_cates';


    public function hot($pid){
        $arr = M($this->table)->where(array('pid'=>$pid))->order('lan desc,id desc')->limit(10)->select();
        return $arr?$arr:'';
    }

    //分页
    public function lst(){
        $pid =  I('get.id');
        $pages= 8;
        if(empty($pid)){
            $count =  M($this->table)->count();
            $size = $count/$pages;
            $list  = M($this->table)->page($_GET['p'].','.$pages)->select();
        }else{
            $count =  M($this->table)->where(array('pid'=>$pid))->count();
            $size = $count/$pages;
            $list  = M($this->table)->where(array('pid'=>$pid,))->page($_GET['p'].','.$pages)->select();
        }
        $this->assign('size',$size);
        $this->assign('list',$list);
        $hot = $this->hot($pid);
        $this->assign('hot',$hot);
        $oem = M($this->cates)->select();
        $this->assign('oem',$oem);
        $this->display();
    }


    public function detail(){
        $id =I('get.id');
        $pid = I('get.pid');
        $info = M($this->table)->where(array('id'=>$id,'pid'=>$pid))->find();
        $this->assign('info',$info);
        $hot = $this->hot($pid);
        $this->assign('hot',$hot);
        $top =$this->top($id);
        $next = $this->next($id);
        $this->assign('top',$top);
        $this->assign('next',$next);
        $cates = $this->cates($pid);
        $this->assign('cates',$cates);
        $oem = M($this->cates)->select();
        $this->assign('oem',$oem);
        $pro = M($this->table)->where(array('pid'=>$pid))->order('lan desc')->limit(4)->select();
        $this->assign('pro',$pro);
        $this->display();
    }


    //当前所属分类
    public function cates($pid){
        $cates = M($this->cates)->field('title')->where(array('id'=>$pid))->find();
        return $cates;
    }


    //上一篇
    public function top($id){
        $top =  M($this->table)->where(array('id'=>array('lt',$id)))->order(array('id'=>'desc'))->limit(1)->find();
        return $top?$top:'';
    }

    //下一篇
    public function next($id){
        $next =  M($this->table)->where(array('id'=>array('gt',$id)))->order('id asc')->limit(1)->find();
        return $next?$next:'';
    }
}