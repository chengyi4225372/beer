<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/28
 * Time: 17:32
 */

namespace Admin\Model;

use Think\Model;

class  GoodsModel extends Model
{

    //获取分类列表
    public function getcates(){
        $model = M('goods_cates');
        $where = array('pid'=>0);
        $list = $model->where($where)->order('id desc')->select();
        return $list?$list:'';
    }

    //添加分类
    public function Create_cate($param)
    {
        $model = M('goods_cates');
        // 判断是否存在
        $flag = $model->where(array('title' => $param['title']))->find();
        if ($flag) {
            return array(
                'data' => $param['title'] . '已经存在了',
                'msg' => $model->getLastSql(),
                'status' => 0,
            );
        }
        $doAdd = false;
        $doAdd = $model->add(array(
            'title' => $param['title'],
        ));
        $res = $doAdd ? array('msg' => 'success') : array('msg' => '您没有进行修改，点击跳转列表页！');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doAdd ? 1 : 0,
        );
    }

    //修改分类
    public function Edit_cate($param)
    {

        $model = M('goods_cates');
        // 判断是否存在
        $flag = $model->where(array('title' => $param['title'], 'id' => array('neq', $param['id'])))->find();

        if ($flag) {
            return array(
                'data' => $param['title'] . '已经存在了',
                'msg' => $model->getLastSql(),
                'status' => 0,
            );
        }

        $doMod = false;

        $doMod = $model

            ->where(array('id' => $param['id']))

            ->save(array(
                'title' => $param['title'],
            ));

        $res = $doMod ? array('msg' => 'success') : array('msg' => '您没有进行修改，点击跳转列表页！');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doMod ? 1 : 0,
        );
    }

    //删除分类
    public function Del_cates($param){
        $model = M('goods');
        // 判断是否存在
        $flag = $model->where(array('pid' => array('eq', $param['id'])))->select();
        if ($flag) {
            return array(
                'data' => '分类下存在信息,不能删除！',
                'msg' => $model->getLastSql(),
                'status' => 0,
            );
        }
        $doDel = false;
        $doDel = M('goods_cates')->where(array('id' => array('in', $param['id'])))->delete();
        $res = $doDel ? array('msg' => $doDel . ' deleted') : array('msg' => 'no delete');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doDel ? 1 : 0,
        );
    }


    /**
     * 获取列表
     */
    public function getNews($id)
    {
        $model = M('goods');
        $map['is_deleted'] = 0;
        $map['pid'] =$id;
        $list = $model->where($map)->order('create_time asc ,id desc')->select();
        return $list;
    }

    /**
     * 创建
     */
    public function Create($param)
    {

        $model = M('goods');
        // 判断是否存在
        $flag = $model->where(array('title' => $param['title'], 'is_deleted' => 0))->find();
        if ($flag) {
            return array(
                'data' => $param['title'] . '已经存在了',
                'msg' => $model->getLastSql(),
                'status' => 0,
            );
        }
        $doAdd = false;
        $doAdd = $model->add(array(
            'title' => $param['title'],
            'desc' => $param['desc'],
            'img' => $param['img'],
            'content' => $param['content'],
            'is_show' => $param['is_show'],
            'pid'=>$param['pid'],
            'xiang'=>$param['xiang'],
            'yuan'=>$param['yuan'],
            'address'=>$param['address'],
            'han'=>$param['han'],
            'fun'=>$param['fun'],
            'chang'=>$param['chang'],
            'du'=>$param['du'],
            'yuan'=>$param['yuan'],
        ));
        $res = $doAdd ? array('msg' => 'success') : array('msg' => 'failed');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doAdd ? 1 : 0,
        );
    }

    /**
     * 修改
     */
    public function Edit($param)
    {

        $model = M('goods');

        // 判断是否存在
        $flag = $model->where(array('title' => $param['title'], 'is_deleted' => 0,'pid'=>$param['pid'], 'id' => array('neq', $param['id'])))->find();

        if ($flag) {
            return array(
                'data' => $param['title'] . '已经存在了',
                'msg' => $model->getLastSql(),
                'status' => 0,
            );
        }

        $doMod = false;

        $doMod = $model
            ->where(array('id' => $param['id']))
            ->save(array(
                'title' => $param['title'],
                'desc' => $param['desc'],
                'img' => $param['img'],
                'content' => $param['content'],
                'is_show' => $param['is_show'],
                'pid'=>$param['pid'],
                'xiang'=>$param['xiang'],
                'yuan'=>$param['yuan'],
                'address'=>$param['address'],
                'han'=>$param['han'],
                'fun'=>$param['fun'],
                'chang'=>$param['chang'],
                'du'=>$param['du'],
                'yuan'=>$param['yuan'],
            ));

        $res = $doMod ? array('msg' => 'success') : array('msg' => '您没有进行修改，点击跳转列表页！');

        return array(

            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doMod ? 1 : 0,

        );

    }

    /**
     * 删除
     */
    public function Del($param)
    {
        $model = M('goods');
        $doDel = false;
        $doDel = $model->where(array('id' => array('in', $param['id'])))->delete();
        $res = $doDel ? array('msg' => $doDel . ' deleted') : array('msg' => 'no delete');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doDel ? 1 : 0,
        );
    }




}