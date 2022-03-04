<?php
$app_name   = "Help Desk Network";
$sender     = "Perangkat Daerah";
$message    = "Ping! Ada pengaduan buka aplikasi Help Desk";
$phone      = "081265047434";
$group_name = "oke";

$response = array("reply" => "Hello $sender, we received your message $message.");
echo json_encode($response);
?>