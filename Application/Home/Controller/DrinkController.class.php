<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:35
 */

//手机端 白酒 控制器

namespace Home\Controller;
use Think\Controller;
use Home\Controller\BaseController;
class DrinkController extends  BaseController
{
    public $table = 'bai';
    public $cates ='bai_cates';


    public function hot($pid){
        $arr = M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->order('lan desc,id desc')->limit(10)->select();
        return $arr?$arr:'';
    }

    public function baijiu(){
        //香型种类
        $beer = M('bai')->where(array('pid'=>10,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(6)->select();
        $this->assign('beer',$beer);
        //按浏览推荐
        $hun = M('protuct')->where(array('pid'=>10,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(4)->select();
        $this->assign('hun',$hun);
        //尾部导航
        $foot =M('Custom')->where(array('is_deleted'=>0))->select();
        $this->assign('foot',$foot);
        //白酒勾兑
        $gou = M($this->table)->where(array('id'=>10,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(2)->select();
        $this->assign('gou',$gou);
        $bao = M($this->table)->where(array('id'=>18,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(2)->select();
        $this->assign('bao',$bao);
        $shou = M($this->table)->where(array('id'=>17,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(2)->select();
        $this->assign('shou',$shou);
        //常见问题
        $que = M('good')->where(array('pid'=>11,'is_deleted'=>0))->order('id desc')->limit(8)->select();
        //合作案例
        $hezuo = M('good')->where(array('pid'=>10,'is_deleted'=>0))->order('id desc')->limit(8)->select();
        $this->assign('hezuo',$hezuo);
        $this->assign('que',$que);
        //白酒价格
        $price = M($this->table)->where(array('id'=>13,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(1)->find();
        $pai = M($this->table)->where(array('id'=>14,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(1)->find();
        $du = M($this->table)->where(array('id'=>15,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(1)->find();
        $bao = M($this->table)->where(array('id'=>18,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(1)->find();
        $know = M($this->table)->where(array('id'=>9,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(1)->find();
        $this->assign('price',$price);
        $this->assign('pai',$pai);
        $this->assign('du',$du);
        $this->assign('bao',$bao);
        $this->assign('know',$know);

        //产品类别
        $cates = M('protuct_cates')->select();
        $this->assign('cates',$cates);
        $pid =I('get.pid');
        if(empty($pid)){
            $list_pros = M('protuct')->where(array('is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(6)->select();
        }else{
            $list_pros = M('protuct')->where(array('pid'=>$pid,'is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(6)->select();
        }
        $this->assign('list_pros',$list_pros);

        $this->display();
     }

    public function index(){
        $pid =  I('get.id');
        $pages= 8;
        if(empty($pid)){
            $count =  M($this->table)->where(array('is_deleted'=>0))->count();
            $size = $count/$pages;
            $list  = M($this->table)->where(array('is_deleted'=>0))->order('lan desc')->page($_GET['p'].','.$pages)->select();
        }else{
            $count =  M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->count();
            $size = $count/$pages;
            $list  = M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->order('lan desc')->page($_GET['p'].','.$pages)->select();
        }
        $this->assign('size',$size);
        $this->assign('list',$list);
        $hot = $this->hot($pid);
        $this->assign('hot',$hot);
        $this->display();
    }

    public function detail(){
        $id =I('get.id');
        $pid = I('get.pid');
        $info = M($this->table)->where(array('id'=>$id,'pid'=>$pid,'is_deleted'=>0))->find();
        $this->assign('info',$info);
        $hot = $this->hot($pid);
        $this->assign('hot',$hot);
        $top =$this->top($id);
        $next = $this->next($id);
        $this->assign('top',$top);
        $this->assign('next',$next);
        $cates = $this->cates($pid);
        $this->assign('cates',$cates);
        //同类新闻
        $order = M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->order('lan desc,id desc')->limit(4)->select();
        $this->assign('order',$order);
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