
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>loginPage</title>

        <link rel="stylesheet" href="components/Style-CSS/loginStyle.css"/>
        
        <%@include file="components/common-css-js.jsp" %>

    </head>
    <body>

        <!--NAVBAR START-->
        <%@include file="components/navbar/navbar.jsp" %>
        <!--NAVBAR END-->


        <!--LOGIN PAGE START-->

        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login Form</span></div>
                <form action="loginServlet" method="post">
                    <div class="row">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input type="text" placeholder="Email" required>
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" required>
                    </div>
                    <div class="pass"><a href="#">Forgot password?</a></div>
                    <div class="row button">
                        <input type="submit" value="Login">
                    </div>
                    <div class="signup-link">Not a member? <a href="registerPage.jsp">Signup now</a></div>
                </form>
            </div>
        </div>

        <!--LOGIN PAGE END-->


    </body>
</html>
