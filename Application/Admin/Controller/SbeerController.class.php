<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/23
 * Time: 11:31
 */
namespace Admin\Controller;

use Think\Controller;

class SbeerController extends BaseController
{
    //显示列表
    public function index(){
        $list = D('Sbeer')->getlist();
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

                $cases_detail = D('Sbeer')->where($map)->order('id desc')->find();

                $this->assign('cases_detail', $cases_detail);

            }

            $this->assign('title', $title);

            $this->display();

        } elseif ($do == 'create') {

            $param = I();

            $result = D('Sbeer')->Create($param);

            $this->ajaxReturn($result);

        }  elseif ($do == 'edit') {

            $param = I();

            $result = D('Sbeer')->Edit($param);

            $this->ajaxReturn($result);

        }

    }

    /**
     * 删除案例
     */
    public function del()
    {

        $param = I();

        $result = D('Sbeer')->Del($param);

        $this->ajaxReturn($result);

    }

}