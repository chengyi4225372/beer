<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/23
 * Time: 11:32
 */
namespace Admin\Model;

use Think\Model;

class ZbeerModel extends Model
{
    protected  $table ='zbeer';

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
            'url' => $param['url'],
            'title' => $param['title'],
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

        $model = M($this->table);

        $doMod = false;

        $doMod = $model
            ->where(array('id' => $param['id']))
            ->save(array(
                'url' => $param['url'],
                'title' => $param['title'],
            ));

        $res = $doMod ? array('msg' => 'success') : array('msg' => '不好意思，您没有进行修改自动跳转到列表页！');
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