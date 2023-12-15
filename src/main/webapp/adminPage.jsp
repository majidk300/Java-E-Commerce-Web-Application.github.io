<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%


    registerEntities user = (registerEntities) session.getAttribute("user");
   
    if (user == null || user.getUserType().trim().equals("normal")) {
        response.sendRedirect("index.jsp");
    }
    
   
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>

        <%@include file="components/common-css-js.jsp" %>

    </head>
    <body>

        <!--NAVBAR START-->
        <%@include file="components/navbar/navbar.jsp" %>
        <!--NAVBAR END-->

        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->


        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        <h1>Hello World!</h1>
        
    </body>
</html>
