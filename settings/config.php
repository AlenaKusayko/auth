<?php
    $db_host = 'localhost';
    $db_user = 'root';
    $db_password = 'root';
    $db_name = 'mydatabase';

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->query("SET NAMES 'UTF8'");

    if ($mysqli->connect_errno) {
        echo "Не удалось подключиться к MySQL: ".$mysqli->connect_errno;
    }
    
?>