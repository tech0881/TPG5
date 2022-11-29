<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">

 <title>Register Form</title>
</head>

<body>
<nav class="nav_menu">
		<ul class="nav_ul_list">
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/" title="Home page">Home</a></li>
			
			<li class="nav_ul_list_li"><a href="" title="Members">Members</a>
				<ul class="nav_ul_list_li_ul">
					<li><a href="http://localhost:8080/TPG5/auth/login.jsp">Login</a></li>
					<li><a href="http://localhost:8080/TPG5/auth/register.jsp">Register</a></li>
					<li><a href="http://localhost:8080/TPG5/auth/login.jsp">Logout</a></li>
				</ul>
			</li>
			<li class="nav_ul_list_li"><a href="http://www.google.com" title="Search">Search</a></li>
			<li class="nav_ul_list_li"><a href="" title="Contact">Contact</a></li>
			<li class="nav_ul_list_li"><a href="" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="" title="Help">Help</a></li>
		</ul>
	</nav>
	
<div class="form-container">

   <form action="Register" method="post">
  
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
      
      <input type="text" name="fname" required placeholder="enter your firstname">
      <input type="text" name="lname" required placeholder="enter your middlename">
      <input type="text" name="lname" required placeholder="enter your lastname">
      <input type="text" name="username" required placeholder="enter your username">
      <input type="text" name="email" required placeholder="enter your email">
      <input type="password" name="password" id="password" required placeholder="enter your password" onkeyup='check();'/>
      <input type="password" name="cpassword" id="cpassword" placeholder="confirm your password" onkeyup='check();'/><span id='message'></span>
      
 		
 
      
	<select name="user_type">
         <option value="user">standard</option>
         <option value="power">power users</option>
         <option value="manager">manager</option>
         <option value="admin">administrator</option>
     </select>

      <select class="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option> 
      </select>
      
      <input type="text" id="inputbox" class="question" required placeholder="enter your security question">
     
         
        
      <input type="submit" name="submit" value="register now" class="form-btn">
      <p>Already have an account? <a href="login.jsp">login now</a></p>
      
      
   </form>
</div>
</body> 
</html>
