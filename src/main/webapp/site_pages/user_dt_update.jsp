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
 <%@ include file="../head_footer/csmainheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<%@ include file="../head_footer/csheader.jsp" %>
<title>Added Articles</title>
</head>
</html>