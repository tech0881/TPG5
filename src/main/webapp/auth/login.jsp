<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/login.css">
<title>User Authentication</title>
</head>

<body class="body">
	<div class= "memberlogin"><h1>Login</h1></div>
	

<%@ include file="../head_footer/csmainheader.jsp" %>

	<div>
		<form action="../memberLogin" method=post>
		<table>
			<tr>
				<td>Enter Your Username:</td>
			
				<td>
					<input type="text" name="txtusername">
				</td>
			</tr>
			
			<tr>
				<td>Enter Your Password:</td>
			
				<td>
					<input type="password" name="txtusr_pwd">
				</td>
			</tr>

			<tr>
			<td><input type="submit" value="Login"></td>
		</table>
		</form>
	</div>
	
</body>
</html>