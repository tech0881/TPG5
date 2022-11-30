<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate" %>
<%@page import="cs.cyberAttack.web.dtObj.selectObject" %>
<%! 
	String title = "Article";
String f_name ="";
String m_name ="";
String l_name ="";

String userStatus ="";
String userName="";

String todayDate;
%>
<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("user-laccess") == null && session.getAttribute("u_name") == null){
 response.sendRedirect("index.jsp");
 }else{
 userStatus = String.valueOf(session.getAttribute("usr_laccess"));
 userName =String.valueOf(session.getAttribute("u_name"));
 
 f_name = selectObject.f_Name(userName);
 m_name = selectObject.m_Name(userName);
 l_name = selectObject.l_Name(userName);
 
 todayDate = LocalDate.now().toString();
 }%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<title>Added Articles</title>
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
			<li class="nav_ul_list_li"><a href="http://www.google.com" title="Search">Search</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/contact.jsp" title="Contact">Contact</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/archive_attacks.jsp" title="DDoS Attacks">DDoS Attacks</a>
				<ul class="nav_ul_list_li_ul_">
					<li><a href="../site_pages/user_dt_update.jsp">Add an Article</a></li>
					<li><a href="../site_pages/monthly_attack.jsp">Monthly Attacks</a></li>
					<li><a href="../site_pages/archive_attacks.jsp">View Archive Data</a></li>
				</ul>
				</li>
			<li class="nav_ul_list_li"><a href="site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="site_pages/help.jsp" title="Help">Help</a></li>
			
		</ul>
	</nav>
	
</body>
</html>