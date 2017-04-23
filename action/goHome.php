<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:41
 */
include "../util/DatabaseUtil.php";
include "../entity/Activity.php";
include "../entity/Affair.php";
include "../entity/Follow.php";

$db = new Database();
$follow = new Follow();
$affair = new Affair();
$activity = new Activity();

$affairList = $db->find($affair,1,3);
$activityList = $db->find($activity,1,3);
$followList = $db->find($follow,1,10);

$followObjects = array();
$activityObjects = array();
$affairObjects = array();
$map = array();

foreach ($affairList as $object)
    array_push($affairObjects,$object);

foreach ($activityList as $object)
    array_push($activityObjects,$object);

foreach ($followList as $object)
    array_push($followObjects,$object);

$map["affairs"] = $affairObjects;
$map["activities"] = $activityObjects;
$map["follows"] = $followObjects;

echo json_encode($map);