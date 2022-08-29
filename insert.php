<?php
session_start();
$user_id = $_SESSION['id'];
$message = $_POST['new_message'];
$message_issue = $_POST['new_message_issue'];
$date = date("Y-m-d H-i-s");
include('settings/config.php');

$addUserMessage = $mysqli->query("INSERT INTO comments (id_users, message_issue, message, message_date_time) VALUES ($user_id, '$message_issue', '$message', '$date')");
//$newMessage = $addUserMessage->fetch_object();
//json_encode




?>