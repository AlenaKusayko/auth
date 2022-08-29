<?php
   //$login = $_POST['formlogin'];
   //$password = $_POST['formpass'];
//echo 'Привет '. $login ;
$login = $_POST['login'];
$password = $_POST['password'];
include('settings/config.php');

if ( !empty($login) and !empty($password) ) {

$checkUser = $mysqli->query("SELECT * FROM users WHERE login = '$login' AND password = '$password'");
$user = $checkUser->fetch_object();


if ( !empty($user)) {
   session_start();
   $_SESSION['auth'] = true;
   $_SESSION['id'] = $user->id;
   $_SESSION['login'] = $user->login;
   echo('Привет, '.$_SESSION['login']);  
   echo '<br>';
   //echo (' '.$_SESSION['id']);
   $user_id = $_SESSION['id']; ?>
   

   <div class="allUserMessages">
   <? 
   
   $SelectUserMessage = $mysqli->query("SELECT * FROM comments WHERE id_users = '$user_id'");
   while(
   $user_message = $SelectUserMessage->fetch_object()) {
      //$_SESSION['message_id'] = $user_message->id;
      //$message_id = $_SESSION['message_id'];  
   echo 'Ваше обращение: '.$user_message->message.' '.'<input type="button" value="Удалить" class="del" id="'.$user_message->id.'">'.'<br>';}
   
   ?>
   </div>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="js/script.js"></script>
   <form>
    <select name="message_issue">
        <option value="Технический вопрос">Технический вопрос</option>
        <option value="Вопрос по обработке платежей">Вопрос по обработке платежей</option>
        <option value="Проблема с доступом к JoyCasino">Проблема с доступом к JoyCasino</option>
    </select> <br> <br>
    <textarea name="message" cols="30" rows="10" placeholder="Введите новое сообщение" id="message"></textarea>
   <input type="button" value="Добавить" class="add">
   </form>  
<?


} else { echo('Вы ввели неверные данные');
    
}

}
?>