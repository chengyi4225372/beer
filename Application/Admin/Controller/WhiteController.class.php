<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 16:41
 */
namespace Admin\Controller;

use Think\Controller;

class WhiteController extends BaseController{

    //�����б�
    public function index(){
        $newscate = D('white')->getcates();
        $this->assign('newscate', $newscate);
        $this->display();
    }
    //������� �޸� todo �༭����ʱ����ת
    public function create(){
        $do = I('do');
        if (empty($do)) {
            $title = "��ӷ���";
            $param = I();
            if ($param){
                $title = "�޸ķ���";
                $map['id'] = $param['id'];
                $news_detail = M('white_cates')->where($map)->order('id desc')->find();
                $this->assign('news_detail', $news_detail);
            }
            $this->assign('title', $title);
            $this->display();

        } elseif ($do == 'create_cates') {
            $param = I();
            $result =D('white')->Create_cate($param);
            $this->ajaxReturn($result);
        }  elseif ($do == 'edit_cates') {
            $param = I();
            $result = D('white')->Edit_cate($param);
            $this->ajaxReturn($result);
        }
    }
    //ɾ������
    public  function del_cates(){
        $param = I();
        $result = D('white')->Del_cates($param);
        $this->ajaxReturn($result);
    }

    /**
     * ��ȡ�����б�
     */
    public function index_info()
    {
        $id= I('get.id');
        $news = D('white')->getNews($id);
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

                $news_detail = M('white')->where($map)->order('id desc')->find();
                $models = M('white_cates')->select();
                $this->assign('models',$models);
                $this->assign('news_detail', $news_detail);

            }
            $models = M('white_cates')->select();
            $this->assign('models',$models);
            $this->assign('title', $title);
            $this->display();

        } elseif ($do == 'create') {
            $param = I();
            $result = D('white')->Create($param);
            $this->ajaxReturn($result);
        }  elseif ($do == 'edit') {
            $param = I();
            $result = D('white')->Edit($param);
            $this->ajaxReturn($result);
        }

    }

    /**
     * ɾ��
     */
    public function del_info()
    {
        $param = I();
        $result = D('white')->Del($param);
        $this->ajaxReturn($result);
    }
}