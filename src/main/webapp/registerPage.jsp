<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registerPage</title>

         <link rel="stylesheet" href="components/Style-CSS/loginStyle.css"/>
         
        <%@include file="components/common-css-js.jsp" %>

    </head>
    <body>

        <!--NAVBAR START-->
        <%@include file="components/navbar/navbar.jsp" %>
        <!--NAVBAR END-->

        <!--REGISTER PAGE START-->

        <div class="container">
            <div class="wrapper">
                <%@include file="components/message/successMessage.jsp" %>
                <div class="title"><span>Register Form</span></div>
                <form action="registerServlet" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input name="userName" type="text" placeholder="Name" required>
                    </div>
                    <div class="row">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input name="userEmail" type="text" placeholder="Email" required>
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input name="userPassword" type="password" placeholder="Password" required>
                    </div>
                    <div class="row">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <input name="userPhone" type="text" placeholder="Phone" required>
                    </div>
                    <div class="row file">
                        <i class="fa fa-file-image" aria-hidden="true"></i>
                        <span class="profile-pic">Choose your profile pic</span>
                        <input name="userImage" class="userImage" type="file"  required>
                    </div>
                    
                    <div class="row button">
                        <input  type="submit" value="Register now" required >
                    </div>
                    <div class="signup-link">a member? <a href="loginPage.jsp">Login now</a></div>
                </form>
            </div>
        </div>

        <!--REGISTER PAGE END-->
        
        <style>
            .container{
                position: relative;
                top: -50px;
            }
            
    .userImage {
        position: relative;
        left: 0;
        top: -35px;
        opacity: 0;
        cursor: pointer;
        padding: 20px 0 50px 0;
    }
    
    .profile-pic{
        position: relative;
        left:55px;
        top: 9px;
        font-size: 16px;
        opacity: 0.9;
    }
    
    .file{
        border: 1px solid gainsboro;
        border-radius:6px ;
        overflow: hidden;
    }
     
        </style>

    </body>
</html>
