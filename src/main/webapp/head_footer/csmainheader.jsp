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
			<li class="nav_ul_list_li"><a href="" title="Home page">Home</a></li>
			
			<li class="nav_ul_list_li"><a href="" title="Members">Members</a>
				<ul class="nav_ul_list_li_ul">
					<li><a href="auth/login.jsp">Login</a></li>
					<li><a href="auth/register.jsp">Register</a></li>
					<li><a href="auth/login.jsp">Logout</a></li>
				</ul>
			</li>		

			<li class="nav_ul_list_li"><a href="site_pages/contact.jsp" title="Contact">Contact</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/archive_attacks.jsp" title="DDoS Attacks">DDoS Attacks</a>
				<ul class="nav_ul_list_li_ul_">
					<li><a href="">Add an Article</a></li>
					<li><a href="">Previous Month Data</a></li>
					<li><a href="">View Archive Data</a></li>
				</ul>
				</li>
			<li class="nav_ul_list_li"><a href="site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/help.jsp" title="Help">Help</a></li>
			
	<div class="search-box">
        <form action="https://www.google.com" method="get">
            <input type="text" name="search" maxlength="60" placeholder="Search..." required>
            <button type="submit"><i class="SearchButton"></i></button>
        </form>
     </div>
		</ul>
	</nav>
</body>
</html>