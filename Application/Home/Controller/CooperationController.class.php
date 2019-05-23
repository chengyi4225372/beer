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
        $model = M($this->table);
        $detail =$model->where(array('pid'=>$pid))->order('id desc')->page($_GET['p'].',2')->select();
        $this->assign('detail',$detail);
        //总数
        $count =$model->where(array('pid'=>$pid))->count();
        $pages = 2;
        $size = ceil($count/$pages);
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

}