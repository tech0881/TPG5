<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css_files/css_home.css">
<link rel="stylesheet" href="../css_files/box.css">



</head>

<body>
<div>
    <h2>Change Your Expired Password</h2>
</div>
         
<form action="@{/change_password}" method="post" style="max-width: 350px; margin: 0 auto;">
<div class="border border-secondary rounded p-3">
    <div if="${message != null}" class="m-3">
        <p class="text-danger">[[${message}]]</p>
    </div>       
    <div>
        <p>
            <input type="password" name="oldPassword" class="form-control"
                    placeholder="Old Password" required autofocus />
        </p>     
        <p>
            <input type="password" name="newPassword" id="newPassword" class="form-control"
                    placeholder="New password" required />
        </p>         
        <p>
            <input type="password" class="form-control" placeholder="Confirm new password"
                    required oninput="checkPasswordMatch(this);" />
        </p>         
        <p class="text-center">
            <input type="submit" value="Change Password" class="btn btn-primary" />
        </p>
        </div>
</div>
</form>
        <script type="text/javascript">
        function checkPasswordMatch(fieldConfirmPassword) {
            if (fieldConfirmPassword.value != $("#newPassword").val()) {
                fieldConfirmPassword.setCustomValidity("Passwords do not match!");
            } else {
                fieldConfirmPassword.setCustomValidity("");
            }
        }
        
</script>

      
    
</body>
