<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 10:47
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;

class ActivityController extends  BaseController
{
    public $table ='protuct';

    public function index(){
         $hot = $this->hot($style=3,$type=1);
         $phot =$this->hot($style=3,$type=2);
         $yuan = M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>2))->order('lan desc')->limit(9)->select();
         $style= M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>1))->order('lan desc')->limit(9)->select();
         $count =M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>1))->count();
         $pages =8;
         $size = $count/$pages;
         $pstyle= M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>1))->order('lan desc')->page($_GET['p'].','.$pages)->select();
         $this->assign('hot',$hot);
         $this->assign('yuan',$yuan);
         $this->assign('style',$style);
         $this->assign('phot',$phot);
         $this->assign('size',$size);
         $this->assign('pstyle',$pstyle);
         $this->display();
    }

    //1 PC  ·´Ö® phone
    public function hot($style=3,$type=1 ){
        if($type==1){
            $arr = M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>$style))->order('lan desc')->limit(3)->select();
        }else{
            $arr = M($this->table)->where(array('is_show'=>1,'is_deleted'=>0,'is_style'=>$style))->order('lan desc')->limit(6)->select();
        }
        return $arr ? $arr:'';
    }

}