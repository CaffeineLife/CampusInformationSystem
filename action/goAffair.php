<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:43
 */
include "../entity/Affair.php";
include "../util/DatabaseUtil.php";

$affairId = $_GET['id'];

if ($affairId == null) echo "";
else
{
    $db = new Database();
    $affair = new Affair();

    $affair -> id = $affairId;
    $affair = $db->find($affair);

    $object = $affair[$affairId];

    echo json_encode($object);
}