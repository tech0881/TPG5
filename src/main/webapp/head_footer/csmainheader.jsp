<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/contact.jsp" title="Contact">Contact</a></li>
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/archive_attacks.jsp" title="DDoS Attacks">DDoS Attacks</a>
				<ul class="nav_ul_list_li_ul_">
					<li><a href="../site_pages/user_dt_update.jsp">Add an Article</a></li>
					<li><a href="../site_pages/monthly_attack.jsp">Monthly Attacks</a></li>
					<li><a href="../site_pages/archive_attacks.jsp">View Archive Data</a></li>
				</ul>
				</li>
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/help.jsp" title="Help">Help</a></li>
			
		</ul>
	</nav>
</body>
</html>