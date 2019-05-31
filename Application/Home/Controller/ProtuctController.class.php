<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:23
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;

class ProtuctController extends  BaseController
{
   public $table='protuct';

   public $cates = 'protuct_cates';

   public $hezuo = 'good';

   public $news = 'news';

    //产品推荐
    public function tui($id){
        $res = M($this->table)->where(array('is_show'=>1,'pid'=>$id,'is_deleted'=>0))->order('id desc')->limit(4)->select();
        return $res?$res:'';
    }

    public function hot($id){
        $res = M($this->table)->where(array('is_show'=>1,'pid'=>$id,'is_deleted'=>0))->order('id desc')->limit(10)->select();
        return $res?$res:'';
    }

    //手机端新闻
    public function four(){
        $four = M($this->news)->where(array('is_deleted'=>0))->order('lan desc')->limit(4)->select();
        return $four?$four:'';
    }



    public function index(){
        $pid= I('get.id');
        $hot=$this->hot($pid);
        $this->assign('hot',$hot);
        $pages= 8;
        if(empty($pid)){
            $count =  M($this->table)->where(array('is_deleted'=>0))->count();
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


    public function infos(){

        $pid =I('get.id');
        if(empty($pid)){
            $list  =M($this->table)->where(array('is_deleted'=>0))->order('lan desc,id desc')->limit(4)->select();
        }else{
            $list  =M($this->table)->where(array('pid'=>$pid,'is_deleted'=>0))->order('lan desc,id desc')->limit(4)->select();
        }
        $cates =M($this->cates)->select();
        $this->assign('cates',$cates);
        $this->assign('list',$list);
        //手机端推荐
        $t_phone =M($this->table)->where(array('is_show'=>1,'is_deleted'=>0))->order('lan desc')->limit(8)->select();
        $this->assign('t_phone',$t_phone);
        $this->display();
    }



    public function detail(){
        $id=I('get.id');
        $detail = M($this->table)->where(array('id'=>$id))->find();
        $hot = $this->tui($detail['pid']);
        $this->assign('hot',$hot);
        $this->assign('detail',$detail);
        //合作案例
        $hezuo  = M($this->hezuo)->where(array('pid'=>10))->order('id desc')->limit(6)->select();
        $this->assign('hezuo',$hezuo);
        //白酒专栏
        $baijiu = M($this->hezuo)->where(array('pid'=>11))->order('id desc')->limit(6)->select();
        $this->assign('baijiu',$baijiu);
        //产品
        $pro =M($this->table)->where(array('pid'=>$detail['pid']))->order('lan desc,id desc')->limit(2)->select();
        $this->assign('pro',$pro);
        $news_four =$this->four();
        $this->assign('news_four',$news_four);
        $this->display();
    }

    public function cp(){
        $goods = M('goods_cates')->order('id desc')->select();
        $this->assign('goods',$goods);
        $id=I('get.id');
        if(isset($id)){
            $id =  M('goods_cates')->min('id');
        }
        $new_goods = M('goods')->where(array('pid'=>$id,'is_deleted'=>0))->order('id desc')->select();
        $this->assign('new_goods',$new_goods);
        //合作案例
        $hezuo  = M($this->hezuo)->where(array('pid'=>10))->order('id desc')->limit(10)->select();
        $this->assign('hezuo',$hezuo);
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
}