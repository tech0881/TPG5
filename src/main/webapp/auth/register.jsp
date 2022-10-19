<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
   <title>register form</title>

   <!-- custom css file link  -->
   

</head>
<body>
<%@ include file="../head_footer/csmainheader.jsp" %>  
<div class="form-container">


	
   <form action="" method="post">
      <h3>register now</h3>
      <?jsp
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <input type="text" name="name" required placeholder="enter your name">
      
      <input type="password" name="password" required placeholder="enter your password">
      <input type="password" name="cpassword" required placeholder="confirm your password">
 		<select name="user_type">
         <option value="user">standard</option>
          </select>
      <input type="submit" name="submit" value="register now" class="form-btn">
      <p>already have an account? <a href="login.jsp">login now</a></p>
   </form>

</div>