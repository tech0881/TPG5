<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">

<title>Forgot Password</title>
</head>
<body>
<div class="form-container">
     <select id="seq_question" class="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option>
         <option value="3">What middle school did you go to?</option>
         <option value="4">What is your mothers birthday?</option>
         
      </select>
      
      <input type="text" id="inputbox" class="question" required placeholder="enter your security question">
     

      
      <input type="submit" name="submit" value="login now" class="form-btn">
</div>
</body>
</html>