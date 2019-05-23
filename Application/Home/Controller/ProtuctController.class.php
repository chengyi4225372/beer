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

    //热门
    public function hot($id){
        $res = M($this->table)->where(array('is_show'=>1,'pid'=>$id))->order('id desc')->limit(10)->select();
        return $res?$res:'';
    }

    //todo 分页
    public function index(){
        $pid= I('get.id');
        $hot=$this->hot($pid);
        $this->assign('hot',$hot);
        $good = M($this->table);
        //总数
        $count = $good->where(array('pid'=>$pid))->count();
        //每页显示条数
        $psize ='2';
        //总页数
        $size = $count/$psize;
        $detail = $good->where(array('pid'=>$pid))->order('id desc')->page($_GET['p'].',2')->select();
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



    public function cp(){
        $this->display();
    }
}