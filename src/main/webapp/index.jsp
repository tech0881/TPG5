<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>TPG5</title>
<link rel="stylesheet" href="css_files\css_homepage.css">
<link rel="stylesheet" href="css_files\css_home.css">
<link rel="stylesheet" href="css_files\footer.css">
<%@ include file="head_footer/csheader.jsp" %>
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
			<li class="nav_ul_list_li"><a href="site_pages/contact.jsp" title="Contact">Contact</a>

			</li>
			<li class="nav_ul_list_li"><a href="site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/help.jsp" title="Help">Help</a></li>
		</ul>
	</nav>
	<img src="images\picture1.jpg" width=1920 height= 700>
	<footer><%@ include file="head_footer/csfooter.jsp" %></footer>
</body>
</html>