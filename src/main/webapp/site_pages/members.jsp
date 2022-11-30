<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Member</title>
<meta charset="UTF-8">
<meta charset="utf-8" name="viewport"
	content ="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/cs_view_attack.css">
<%@include file="../head_footer/members_header.jsp" %>
</head>
<body>
<%
if(session.getAttribute("usr_laccess")==null)
	response.sendRedirect("../auth/login.jsp");
%>
<p> Welcome: $(usr_fname) $(usr_lname) </p>
<form action=../memberLogout method=get>
<input type=submit value="Logout">
</form>
<br>
	<div>
		<h1>Global Cyber Attacks</h1>
		<h2>Members Interactive Page</h2>
	</div>
<%@ include file="../head_footer/csfooter.jsp" %>
<script type="text/javascript">
if(userValidate.equals("admin"))
{

    HttpSession session = request.getSession(); //Creating a session
    session.setAttribute("admin", userName); //setting session attribute
    request.setAttribute("userName", userName);
    request.getRequestDispatcher("users.jsp").forward(request, response);
}
else if(userValidate.equals("manager"))
{
   

    HttpSession session = request.getSession();
    session.setAttribute("manager", userName);
    request.setAttribute("userName", userName);

    request.getRequestDispatcher("users.jsp").forward(request, response);
}
else if(userValidate.equals("power_user"))
{
   

    HttpSession session = request.getSession();
    session.setAttribute("power_user", userName);
    request.setAttribute("userName", userName);

    request.getRequestDispatcher("users.jsp").forward(request, response);
}
else if(userValidate.equals("standard"))
{
   

    HttpSession session = request.getSession();
    session.setMaxInactiveInterval(10*60);
    session.setAttribute("standard", userName);
    request.setAttribute("userName", userName);

    request.getRequestDispatcher("index.jsp").forward(request, response);
}
else
{
    System.out.println("Error message = "+userValidate);
    request.setAttribute("errMessage", userValidate);

    request.getRequestDispatcher("login.jsp").forward(request, response);
}
        
</script>
</body>
</html>