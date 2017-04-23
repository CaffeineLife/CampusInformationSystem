<?php

/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午3:35
 */
class Follow
{
    public $id;
    public $followImg;
    public $followName;
    public $followTime;
    public $affairId;
    public $affairUrl;

    function __get($prop_name)
    {
        // TODO: Implement __get() method.
        return $this->$prop_name;
    }

    function __set($prop_name, $prop_value)
    {
        // TODO: Implement __set() method.
        $this->$prop_name = $prop_value;
    }
}