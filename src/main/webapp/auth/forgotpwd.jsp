<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
<link rel="stylesheet" href="../css_files/contact.css">

<title>Forgot Password</title>
</head>
<body>

<div class="form-container">
<form action="" method="post">

<button class ="form-btn">check</button>
     <select id="seq_question" class="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option>
         
         
      </select>
      
      <input type="text" id="inputbox" class="question" required placeholder="enter your security question">
     

      
      <input type="submit" name="submit" value="login now" class="form-btn">
<%
String username =request.getParameter("username");
String password = request.getParameter("password");
out.println("<b>"+"</br>"+"Password is = "+password+"</b>");
%>       
</form>
<div class="back-btn">
 <a href="http://localhost:8081/TPG5/auth/login.jsp">
      <button class ="back-btn">Back</button>
      </a>  
</div> 
</div>




</body>
</html>