<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/register.css">
</head>
<body class="body1">

	<div class= "memberregister"><h1>Register</h1></div>
	

<%@ include file="../head_footer/csmainheader.jsp" %>

	<div>
		<form action="../memberRegister" method=post>
		<table>
			<tr>
				<td>Enter First Name:</td>
			
				<td>
					<input type="text" name="txt_f_name">
				</td>
			</tr>
			
						<tr>
				<td>Enter Middle Name:</td>
			
				<td>
					<input type="text" name="txt_m_name">
				</td>
			</tr>
			
			<tr>
				<td>Enter Last Name:</td>
			
				<td>
					<input type="text" name="txt_l_name">
				</td>
			</tr>
			
			<tr>
				<td>Enter Email Address:</td>
			
				<td>
					<input type="text" name="txt_email">
			</td>
			<tr>
			
						<tr>
				<td>Enter Email Address Password:</td>
			
				<td>
					<input type="text" name="txt_pwd">
			</td>
				
			<tr>
			
			<tr>
				<td>Create Username:</td>
			
				<td>
					<input type="text" name="txt_username">
			</td>
				
			<tr>
				<td>Create Password:</td>
			
				<td>
					<input type="password" name="txtusr_pwd">
				</td>
			</tr>
		

			<tr>
			<td><input type="submit" value="Submit"></td>
		</table>
		</form>
	</div>
</body>
</html>