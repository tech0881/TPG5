<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF.8" name="viewport"
	content= "widt=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css_files/css_homepage.css">
	<script type = "text/javascript">
	function user_access()
	{
		var usr_privileges = '<%=session.getAttribute("usr_laccess")%>'
		if(usr_privileges=="alway_active")
		{
			document.getElementById("ul_li_sub_menu").style.display="none";
			document.getElementById("ul_sub_menu").style.display="none";
			document.getElementById("ul_li_sub_menu_update").style.display="block";
			document.getElementById("ul_sub_menu").style.display="none";
		}
		else if(usr_privileges=="Manager")
		{
			document.getElementById("ul_li_sub_register").style.display="none";
			document.getElementById("ul_li_sub_menu_update").style.display="none";
			document.getElementById("ul_li_sub_menu_archive").style.display="none";
			document.getElementById("ul_li_sub_menu").style.display="none";
		}
		else if(usr_privileges=="Power User")
		{
		document.getElementById("ul_li_sub_register").style.display="none";
		document.getElementById("ul_li_sub_menu_update").style.display="none";
		document.getElementById("ul_li_sub_menu_archive").style.display="none";
		document.getElementById("ul_li_sub_menu").style.display="none";
		}
		else if(usr_privileges=="Standard")
		{
		document.getElementById("ul_li_sub_register").style.display="none";
		document.getElementById("ul_li_sub_menu_update").style.display="none";
		document.getElementById("ul_li_sub_menu_archive").style.display="none";
		document.getElementById("ul_li_sub_menu").style.display="none";
		document.getElementById("ul_sub_menu").style.display="none";
		}
	}
	</script>
</head>
</html>
