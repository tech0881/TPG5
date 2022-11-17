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
			<li class="nav_ul_list_li"><a href="" title="Contact">Contact</a>

			</li>
			<li class="nav_ul_list_li"><a href="" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="" title="Help">Help</a></li>
	<li class="search-box">
        <form action="https://www.google.com" method="get">
            <input type="text" name="search" maxlength="60" placeholder="Search..." required>
            <button type="submit"><i class="SearchButton"></i></button>
        </form>
     </li>
		</ul>
	</nav>
<div class="form-container">

   <form action="" method="post">
      <h3>register now</h3>
      <input type="text" name="fname" required placeholder="enter your firstname">
      <input type="text" name="lname" required placeholder="enter your lastname">
      <input type="text" name="username" required placeholder="enter your username">
      <input type="text" name="email" required placeholder="enter your email">
      
      <input type="password" name="password" required placeholder="enter your password">
      <input type="password" name="cpassword" required placeholder="confirm your password">
 		<select name="user_type">
         <option value="user">standard</option>
          </select>
      <input type="submit" name="submit" value="register now" class="form-btn">
      <p>already have an account? <a href="login.jsp">login now</a></p>
   </form>
</div>
</body> 
</html>
