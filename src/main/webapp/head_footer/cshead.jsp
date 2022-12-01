<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<nav class="nav_menu">
		<ul class="nav_ul_list">
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/" title="Home page">Home</a></li>
			
			<li class="nav_ul_list_li"><a href="" title="Members">Members</a>
				<ul class="nav_ul_list_li_ul">
					<li><a href="auth/login.jsp">Login</a></li>
					<li><a href="auth/register.jsp">Register</a></li>
					<li><a href="auth/login.jsp">Logout</a></li>
				</ul>
			</li>
			<li class="nav_ul_list_li"><a href="site_pages/contact.jsp" title="Contact">Contact</a>

			</li>
			<li class="nav_ul_list_li"><a href="site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/help.jsp" title="Help">Help</a></li>
			<li class="nav_ul_list_li">
			<form method="GET" action = "https//www.google.com/search">
			<input type="text" name="q" placeholder="Search..."/>
			</form>
			</li>			
		</ul>
	</nav>
</html>