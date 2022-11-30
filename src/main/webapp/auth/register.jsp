<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
<%@ include file="../head_footer/cshead.jsp" %>

 <title>Register Form</title>
</head>

<body>
<div class="form-container">

   <form action="..//Register" method="post">
  
      <h3>register now</h3>
       <script type="text/javascript">
       var check = function() {
    	   if (document.getElementById('password').value ==
    	     document.getElementById('cpassword').value) {
    	     document.getElementById('message').style.color = 'green';
    	     document.getElementById('message').innerHTML = 'matching';
    	   } else {
    	     document.getElementById('message').style.color = 'red';
    	     document.getElementById('message').innerHTML = 'not matching';
    	   }
    	 }
</script>
      
      <input type="text" name="fname" required placeholder="Enter your firstname">
      <input type="text" name="mname" required placeholder="Enter your middlename">
      <input type="text" name="lname" required placeholder="Enter your lastname">
      <input type="text" name="username" required placeholder="Enter your username">
      <input type="text" name="email" required placeholder="Enter your email">
      <input type="password" name="password" id="password" required placeholder="Enter your password" onkeyup='check();'/>
      <input type="password" name="cpassword" id="cpassword" placeholder="Confirm your password" onkeyup='check();'/><span id='message'></span>
      
 		
 
      
	<select name="user_type">
         <option value="standard">Standard</option>
         <option value="power_user">Power users</option>
         <option value="manager">Manager</option>
         <option value="admin">Administrator</option>
     </select>

      <select name="ques">
         <option value="What are your last four digits of phone number?">What are your last four digits of phone number?</option>
         <option value="What is your name of your first pet?">What is your name of your first pet?</option>
       
         
      </select>
      
      <input type="text" name="inputbox" class="question" required placeholder="Enter your security question">
     
         
        
      <input type="submit" name="submit" value="register now" class="form-btn">
      <p>Already have an account? <a href="login.jsp">login now</a></p>
      
      
   </form>
</div>
</body> 
</html>
