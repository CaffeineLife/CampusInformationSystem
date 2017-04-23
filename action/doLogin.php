<?php
/**
 * Created by PhpStorm.
 * User: leizhuochao
 * Date: 2017/4/23
 * Time: 下午4:39
 */
include "../entity/User.php";
include "../util/DatabaseUtil.php";

$username = $_POST['username'];
$password = $_POST['password'];


$db = new Database();
$user = new User();
$user->username = $username;
$user->password = $password;

$user = $db->find($user);

if (count($user) != 1)
{
    echo "wrong";
    return;
}
else foreach($user as $object) echo json_encode($object);