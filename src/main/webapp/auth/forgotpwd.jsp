<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">
<link rel="stylesheet" href="../css_files/contact.css">

<title>Forgot Password</title>
</head>
<body>

<div class="form-container">
<form action="" method="post">

<button class ="form-btn">check</button>
     <select id="seq_question" class="ques">
         <option value="1">What are your last four digits of phone number?</option>
         <option value="2">What is your name of your first pet?</option>
         
         
      </select>
      
      <input type="text" id="inputbox" class="question" required placeholder="enter your security question">
     

      
      <input type="submit" name="submit" value="login now" class="form-btn">
      <script type="text/javascript">
        function checkMatch(fieldConfirmPassword) {
            if (fieldConfirmPassword.value != $("#newPassword").val()) {
                fieldConfirmPassword.setCustomValidity("Passwords do not match!");
            } else {
                fieldConfirmPassword.setCustomValidity("");
            }
        }
       function checkmatch(fieldConfirm) 
</script>
<%
  String UserName=request.getParameter("UserName");
//session.putValue("userid",userid);
  String password=request.getParameter("password");
  if(UserName==null || password==null){
    out.println("<p style='color:Red;'>Enter UserName and Password!</p>");
  }
  else if("".equals(UserName) || "".equals(password)){
    out.println("<p style='color:Red;'>Enter UserName and Password!</p>");
  }
  else{
      try{
          Class.forName("com.mysql.jdbc.Driver");
          java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3080/LoginDetails","root","root123");
          Statement st= con.createStatement();
          ResultSet rs=st.executeQuery("select * from Users where UserName='"+UserName+"' and password='"+password+"'");
          if(rs.next()){
             RequestDispatcher req = (RequestDispatcher) request.getRequestDispatcher("KeyBoard.html");
            req.forward(request, response);//out.println("Welcome " +UserName);
            st.close();
            con.close();
          }
          else{
            out.println("<p style='color:Red;'>Invalid username or password</p>");
          }
       }
       catch(Exception e){
       }
  }
%>
<%
String username =request.getParameter("username");
String password = request.getParameter("password");
out.println("<b>"+"</br>"+"Password is = "+password+"</b>");
%>       
</form>
<div class="back-btn">
 <a href="http://localhost:8080/TPG5/auth/login.jsp">
      <button class ="back-btn">Back</button>
      </a>  
</div> 
</div>




</body>
</html>