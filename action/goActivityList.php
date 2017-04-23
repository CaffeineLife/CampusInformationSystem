<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:43
 */
include "../entity/Activity.php";
include "../util/DatabaseUtil.php";

$type = $_GET["type"];

$db = new Database();
$activity = new Activity();
$activity->activityType = $type;

$activityList = $db->find($activity,1,5);

$objects = array();

foreach ($activityList as $object)
    array_push($objects,$object);

echo json_encode($objects);
