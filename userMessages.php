<?php
   session_start();
   $user_id = $_SESSION['id'];
   include('settings/config.php');
   
   $SelectUserMessage = $mysqli->query("SELECT * FROM comments WHERE id_users = '$user_id'");
   while(
    $user_message = $SelectUserMessage->fetch_object()) {
        //$_SESSION['message_id'] = $user_message->id;
       // $message_id = $_SESSION['message_id'];  
       echo 'Ваше обращение: '.$user_message->message.' '.'<input type="button" value="Удалить" class="del" id="'.$user_message->id.'">'.'<br>';}
   ?>
   