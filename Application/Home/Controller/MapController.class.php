<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 11:08
 */

//网站地图
namespace Home\Controller;
use Think\Controller;
use Home\Controller\BaseController;
class MapController extends  BaseController
{
    public $white ='white_cates';
    public $goods ='goods_cates';

   public  function index(){
        $white = M($this->white)->select();
        $this->assign('white',$white);
        $goods=M($this->goods)->select();
        $this->assign('goods',$goods);
        $this->display();
    }
}