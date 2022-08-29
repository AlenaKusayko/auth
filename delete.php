<?php
session_start();
$user_id = $_SESSION['id'];

include('settings/config.php');
$message_id = $_POST['message_id'];

$deleteUser = $mysqli->query("DELETE FROM comments WHERE id = $message_id");
?>   