<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/login.css">
<link rel="stylesheet" href="../css_files/aboutus.css">

</head>

<body class="about">
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
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/contact.jsp" title="Contact">Contact</a>

			</li>
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/aboutus.jsp" title="About Us">About Us</a></li>
			<li class="nav_ul_list_li"><a href="http://localhost:8080/TPG5/site_pages/help.jsp" title="Help">Help</a></li>
		</ul>
	</nav>
	<div class="aboutus"><h1>About Us</h1></div>
</body>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<body class="table">
	<table>
  <tr>
    <th>Name</th>
    <th>Role</th>
    <th>Major</th>
    <th>University</th>
    <th>Level</th>
  
  </tr>
  <tr>
    <td>Jaylan Roscoe </td>
    <td>Front End Developer</td>
    <td>Computer Information Science</td>
    <td>Barry University</td>
    <td>Junior</td>
  </tr>
  
  <tr>
    <td>Gregory Henry</td>
    <td>Full-Stack Developer, Git Repo Manager</td>
    <td>Computer Science</td>
    <td>Barry University</td>
    <td>Senior</td>
  </tr>
  
  <tr>
    <td>Sumayyah Malan</td>
    <td>Back-End Developer, Database Manager</td>
    <td>Computer Information Science</td>
    <td>Barry University</td>
    <td>Senior</td>
  </tr>
  
  <tr>
    <td>Johan Westcarr-Wilson</td>
    <td></td>
    <td>Computer Science</td>
    <td>Barry University</td>
    <td></td>
  </tr>
</table>
	
</body>
</html>