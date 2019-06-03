<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/31
 * Time: 16:03
 */
namespace Admin\Model;

use Think\Model;

class VideoModel extends Model
{
    protected  $table ='video';

    /*
     * 列表
     */
    public function getlist(){
        $model=M($this->table);
        $list = $model->order("id desc")->limit(10)->select();
        return $list;
    }


    /**
     * 创建
     */
    public function Create($param)
    {

        $model = M($this->table);
        $doAdd = false;
        $doAdd = $model->add(array(
            'title' => $param['title'],
            'desc' => $param['desc'],
            'content'=>$param['content'],
            'lan'=>$param['lan'],
            'img'=>$param['img'],
            'create_time' => date('Y-m-d H:i:s'),
        ));
        $res = $doAdd ? array('msg' => 'success') : array('msg' => '添加失败!');
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

        $model = M($this->table);

        $doMod = false;

        $doMod = $model
            ->where(array('id' => $param['id']))
            ->save(array(
                'title' => $param['title'],
                'desc' => $param['desc'],
                'content'=>$param['content'],
                'lan'=>$param['lan'],
                'img'=>$param['img'],

            ));

        $res = $doMod ? array('msg' => 'success') : array('msg' => "您没有编辑，跳转回列表页！");
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doMod ? 1 : 0,
        );
    }

    /*
     * 删除
     * */
    public function del($param){
        $model = M($this->table);
        $doDel = false;
        $doDel = $model->where(array('id'=>$param['id']))->delete();

        $res = $doDel ? array('msg' => $doDel . ' deleted') : array('msg' => 'no delete');
        return array(
            'data' => $res['msg'],
            'msg' => $model->getLastSql(),
            'status' => $doDel ? 1 : 0,
        );
    }

}