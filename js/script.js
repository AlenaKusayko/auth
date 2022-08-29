$(document).ready(function(){
    /*$(document).on('click', '.send', function(){
        let login = document.querySelector("input[name=login]").value;
        let pass = document.querySelector("input[name=password]").value;
        //console.log(login + pass);

        $('.auth').hide();
        
        let newXHR = new XMLHttpRequest();
        newXHR.open('POST', 'index.php');
        newXHR.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        
        data = {
            formlogin: login,
            formpass:pass
            };

            //console.log(data);
        $.post('index.php', data, function(data, status){
            newHTML = data ;
            $('#contentLK').html(newHTML);
            //console.log(data);
        });
        return false;
    });*/ 
 
 
        let button = document.querySelector(".add");
       button.addEventListener("click", function() {
      //$(document).on('click', '.add', function(){
     // $('.allUserMessages').html('');
      let message1 = document.querySelector("textarea[name=message]").value;
      let message_issue1 = document.querySelector("select[name=message_issue]").value;
      //console.log(message1+message_issue1);
      document.getElementById("message").value="";
      let newXHR = new XMLHttpRequest();
        newXHR.open('POST', 'insert.php');
        newXHR.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        
        data = {
            new_message: message1,
            new_message_issue:message_issue1
            };
            console.log(data);
         $.post('insert.php',data, function(data){
            //let newHTML;
            //newHTML+= data_new;
            //$('.NewMes').html(newHTML);
            $('.allUserMessages').load('userMessages.php');
            
         });
         return false;
      });

      let btn = document.querySelector(".del");
      $(document).on('click', '.del', function(e) {
      //btn.addEventListener("click", function(e) {
      let btn_id = (e.target.id);
      console.log(btn_id);
      let newXHR = new XMLHttpRequest();
       newXHR.open('POST', 'delete.php');
       newXHR.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
       
       data = {
           message_id: btn_id
           };
          //console.log(data);
        $.post('delete.php',data, function(data){

           $('.allUserMessages').load('userMessages.php');
           
        });
        return false;
     });
  
});

