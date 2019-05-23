<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/23
 * Time: 11:59
 */
namespace Admin\Controller;

use Think\Controller;

class ServiceController extends BaseController
{
    //显示列表
    public function index(){
        $list = D('Service')->getlist();
        $this->assign('list',$list);
        $this->display();
    }


    public function create()
    {

        $do = I('do');

        if (empty($do)) {

            $title = "添加";

            $param = I();

            if ($param){

                $title = "修改";

                $map['id'] = $param['id'];

                $cases_detail = D('Service')->where($map)->order('id desc')->find();

                $this->assign('cases_detail', $cases_detail);

            }

            $this->assign('title', $title);

            $this->display();

        } elseif ($do == 'create') {

            $param = I();

            $result = D('Service')->Create($param);

            $this->ajaxReturn($result);

        }  elseif ($do == 'edit') {

            $param = I();

            $result = D('Service')->Edit($param);

            $this->ajaxReturn($result);

        }

    }

    /**
     * 删除案例
     */
    public function del()
    {

        $param = I();

        $result = D('Service')->Del($param);

        $this->ajaxReturn($result);

    }


}