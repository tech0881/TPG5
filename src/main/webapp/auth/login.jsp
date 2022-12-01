<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
<%@ include file="../head_footer/cshead.jsp" %>

<title>Login Form</title>
<style type="text/css">
.ques {display: none;}
.question {display: none;}

</style>
 <script type="text/javascript">
        function preventBack() {
            window.history.forward(); 
        }
          
        setTimeout("preventBack()", 0);
          
        window.onunload = function () { null };
    </script>
<script type="text/java">
</script>

</head>
<body>
   <div class="form-container">
   
   <form action="..//Login" method="post">
      <h3>login now</h3>
      
      <?jsp
      if(isset($error)){
         foreach($error as $error){
           ;
         
      };
      ?>
      <script type="text/javascript">
function enableBrand(answer) {
console.log(answer.value);
if(answer.value == 'admin') {
	document.getElementById('seq_question').classList.remove('ques');
	document.getElementById('inputbox').classList.remove('question');
	
} else {
	document.getElementById('seq_question').classList.add('ques');
	document.getElementById('inputbox').classList.add('question');
}

}; 

</script>
      <input type="text" name="username" required placeholder="enter your username">
      <input type="password" name="password" required placeholder="enter your password">
      
	<select name="user_type" onchange="enableBrand(this)">
         <option value="user">Standard</option>
         <option value="power">Power Users</option>
         <option value="manager">Manager</option>
         <option value="admin">Administrator</option>
     </select>

      <select id="seq_question" class="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option>
       
         
      </select>
      
      <input type="text" id="inputbox" class="question" required placeholder="Enter your security question">
     

      
      <input type="submit" name="submit" value="login now"<a href="../TPG5.web.auth/Login.java" ></a>class="form-btn" >
      <p>don't have an account? <a href="register.jsp">register now</a></p>
    <p>Forgot password? <a href="forgotpwd.jsp">password?</a></p>
        
    
	</form>
	</div>
	
</body>

</html>
