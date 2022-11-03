<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">

<title>Login Form</title>
<style type="text/css">
.ques {display: none;}

</style>
<script type="text/java">
</script>
</head>
<body>
<nav class="nav_menu">
		<ul class="nav_ul_list">
			<li class="nav_ul_list_li"><a href="" title="Home page">Home</a></li>
			
			<li class="nav_ul_list_li"><a href="" title="Members">Members</a>
				<ul class="nav_ul_list_li_ul">
					<li><a href="http://localhost:8080/TPG5/auth/login.jsp">Login</a></li>
					<li><a href="http://localhost:8080/TPG5/auth/register.jsp">Register</a></li>
					<li><a href="http://localhost:8080/TPG5/auth/login.jsp">Logout</a></li>
				</ul>
			</li>
			<li class="nav_ul_list_li"><a href="" title="Contact">Contact</a></li>
			
				<ul class="nav_ul_list_li_ul_">
					<li><a href="">Add an Article</a></li>
					<li><a href="">Previous Month Data</a></li>
					<li><a href="">View Archive Data</a></li>
				</ul>
			</li>
			<li class="nav_ul_list_li"><a href="" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="" title="Help">Help</a></li>
	<div class="search-box">
        <form action="https://www.google.com" method="get">
            <input type="text" name="search" maxlength="60" placeholder="Search..." required>
            <button type="submit"><i class="SearchButton"></i></button>
        </form>
     </div>
		</ul>
	</nav>


   <div class="form-container">
   
   <form action="" method="post">
      <h3>login now</h3>
      
      <?jsp
      if(isset($error)){
         foreach($error as $error){
           ;
         
      };
      ?>
      <input type="text" name="username" required placeholder="enter your username">
      <input type="password" name="password" required placeholder="enter your password">
      
	<select name="user_type" onchange="enableBrand(this)">
         <option value="user">standard</option>
         <option value="power">power users</option>
         <option value="manager">manager</option>
         <option value="admin">administrator</option>
     </select>

      <select name="seq_question" onchange="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option>
         <option value="3">What middle school did you go to?</option>
         <option value="4">What is your mothers birthday?</option>
         
      </select>
      <input type="text" name="question" required placeholder="enter your security question">
     
<script type="text/javascript">
function enableBrand(answer) {
console.log(answer.value);
if(answer.value == admin) {
	document.getElementById('seq_question').classList.remove('ques');
} else {
	document.getElementById('seq_question').classList.add('ques');
}

}; 

</script>
      
      <input type="submit" name="submit" value="login now" class="form-btn">
      <p>don't have an account? <a href="register.jsp">register now</a></p>
    
	</form>
	</div>
	
</body>

</html>

