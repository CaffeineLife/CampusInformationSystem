<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:43
 */
include "../entity/Affair.php";
include "../util/DatabaseUtil.php";

$type = $_GET["type"];

$db = new Database();
$affair = new Affair();
$affair->affairType = $type;

$affairList = $db->find($affair,1,5);

$objects = array();

foreach ($affairList as $object)
    array_push($objects,$object);

echo json_encode($objects);
