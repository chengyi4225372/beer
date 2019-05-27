<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:08
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;
use Think\Page;
class CooperationController extends  BaseController
{
    public $table = 'good';
    public $cates = 'good_cates';

    public function jiamen(){
        $this->display();
    }


    //热门
    public function hot($id){
        $res = M($this->table)->where(array('is_show'=>1,'pid'=>$id))->order('id desc')->limit(10)->select();
        return $res?$res:'';
    }

    public function index(){
        $pid= I('get.id');
        $hot=$this->hot($pid);
        $this->assign('hot',$hot);
        //每页显示条数
        $pages= 12;
        if(empty($pid)){
            $count =  M($this->table)->where(array('is_deleted'=>0))->count();
            //总页数
            $size = $count/$pages;
            $detail  = M($this->table)->where(array('is_deleted'=>0))->page($_GET['p'].','.$pages)->select();
        }else{
            $count =  M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->count();
            $size = $count/$pages;
            $detail  = M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->page($_GET['p'].','.$pages)->select();
        }
        $this->assign('detail',$detail);
        $this->assign('size',$size);
        $this->display();
    }

    public function detail(){

         $id=I('get.id');
         $detail = M($this->table)->where(array('id'=>$id))->find();
         $hot = $this->hot($detail['pid']);
         $this->assign('hot',$hot);
         $this->assign('detail',$detail);
         $this->display();
    }

    //合作加盟和政策
    public function info(){
         $this->display();
    }


    //当前所属分类
    public function cates($pid){
        $cates = M($this->cates)->field('title')->where(array('id'=>$pid))->find();
        return $cates;
    }


    //上一篇
    public function top($id){
        $top =  M($this->table)->where(array('id'=>array('lt',$id),'is_deleted'=>0))->order(array('id'=>'desc'))->limit(1)->find();
        return $top?$top:'';
    }

    //下一篇
    public function next($id){
        $next =  M($this->table)->where(array('id'=>array('gt',$id),'is_deleted'=>0))->order('id asc')->limit(1)->find();
        return $next?$next:'';
    }

}