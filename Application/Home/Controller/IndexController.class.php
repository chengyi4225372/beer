<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/20
 * Time: 10:05
 */
namespace Home\Controller;

use Think\Controller;
use Home\Controller\BaseController;

class IndexController extends BaseController
{
    public $message ='message';
    public $custom='custom';
    public $banner ='banner';
    public $service='service';
    public $bai  ='bai';
    public $new = 'news';
    public $hezuo ='good';
    public $ding ='ding';

    public function index(){
         $you = M($this->custom)->where(array('is_deleted'=>0))->select();
         $this->assign('you',$you);
         $banner = M($this->banner)->field('id,img,url')->select();
         $this->assign('banner',$banner);
         //服务与产品
        $service = M($this->service)->select();
        $this->assign('service',$service);
        //酒业新闻
        $bais  =M($this->bai)->where(array('pid'=>12,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('bais',$bais);
        //白酒知识
        $bknow = M($this->bai)->where(array('pid'=>9,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('bknow',$bknow);
        //酒业新闻
        $bnews =M($this->new)->where(array('pid'=>7,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('bnews',$bnews);
        //公司动态
        $company =M($this->new)->where(array('pid'=>5,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('company',$company);
        //合作案例
        $hezuo = M($this->hezuo)->where(array('pid'=>10,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('hezuo',$hezuo);
        //定制酒咨询
        $dnews = M($this->ding)->where(array('pid'=>9,'is_deleted'=>0))->order('id desc')->limit(3)->select();
        $this->assign('dnews',$dnews);
        $this->display();
    }

    //留言板
    public function message(){
        $data['names'] = I('post.names');
        $data['wei'] = I('post.wei');
        $data['tel'] = I('post.tel');
        $data['info'] = I('post.info');
        $data['create_time'] = date('Y-m-d H:i:s');
        $model = M($this->message);
        $res = $model->add($data);
        if($res >0){
            $this->ajaxReturn(array('code'=>200,'msg'=>'提交成功'),'json');
        }else{
            $this->ajaxReturn(array('code'=>400,'msg'=>'提交失败，请重新尝试！'),'json');
        }
    }
}