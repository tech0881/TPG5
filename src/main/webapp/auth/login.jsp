<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
   <title>Login form</title>

   <!-- custom css file link  -->
   

</head>
<body>
<%@ include file="../head_footer/csmainheader.jsp" %> 
   <div class="form-container">

   <form action="" method="post">
      <h3>login now</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <input type="email" name="email" required placeholder="enter your email">
      <input type="password" name="password" required placeholder="enter your password">
      
		      <select name="user_type">
         <option value="user">standard</option>
         <option value="admin">power users</option>
         <option value="admin">manager</option>
         <option value="admin">administrator</option>
      </select>
      <input type="submit" name="submit" value="login now" class="form-btn">
      <p>don't have an account? <a href="register.jsp">register now</a></p>
		</form>
	</div>
	
</body>
</html>