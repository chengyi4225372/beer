<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 17:30
 */

namespace Admin\Controller;

use Think\Controller;

class GoodsController extends BaseController
{
    //�����б�
    public function index(){
        $newscate = D('goods')->getcates();
        $this->assign('newscate', $newscate);
        $this->display();
    }

    //������� �޸�
    public function create(){
        $do = I('do');
        if (empty($do)) {
            $title = "��ӷ���";
            $param = I();
            if ($param){
                $title = "�޸ķ���";
                $map['id'] = $param['id'];
                $news_detail = M('goods_cates')->where($map)->order('id desc')->find();
                $this->assign('news_detail', $news_detail);
            }
            $this->assign('title', $title);
            $this->display();

        } elseif ($do == 'create_cates') {
            $param = I();
            $result =D('goods')->Create_cate($param);
            $this->ajaxReturn($result);
        }  elseif ($do == 'edit_cates') {
            $param = I();
            $result = D('goods')->Edit_cate($param);
            $this->ajaxReturn($result);
        }
    }


    //ɾ������
    public  function del_cates(){
        $param = I();
        $result = D('goods')->Del_cates($param);
        $this->ajaxReturn($result);
    }




    /**
     * ��ȡ�����б�
     */
    public function index_info()
    {
        $id= I('get.id');
        $news = D('goods')->getNews($id);
        $this->assign('news_list', $news);
        $this->display();
    }

    /**
     * ����/�޸�
     */
    public function create_info()
    {

        $do = I('do');

        if (empty($do)) {

            $title = "�½�";

            $param = I();

            if ($param){

                $title = "�޸�";
                $map['id'] = $param['id'];

                $news_detail = M('goods')->where($map)->order('id desc')->find();
                $models = M('goods_cates')->select();
                $this->assign('models',$models);
                $this->assign('news_detail', $news_detail);

            }
            $models = M('goods_cates')->select();
            $this->assign('models',$models);
            $this->assign('title', $title);
            $this->display();

        } elseif ($do == 'create') {
            $param = I();
            $result = D('goods')->Create($param);
            $this->ajaxReturn($result);
        }  elseif ($do == 'edit') {
            $param = I();
            $result = D('Goods')->Edit($param);
            $this->ajaxReturn($result);
        }

    }

    /**
     * ɾ��
     */
    public function del_info()
    {
        $param = I();
        $result = D('goods')->Del($param);
        $this->ajaxReturn($result);
    }

}