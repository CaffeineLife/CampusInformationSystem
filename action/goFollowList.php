<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:43
 */
include "../entity/Follow.php";
include "../util/DatabaseUtil.php";


$db = new Database();
$follow = new Follow();

$followList = $db->find($follow,1,5);

$objects = array();

foreach ($followList as $object)
    array_push($objects,$object);

echo json_encode($objects);