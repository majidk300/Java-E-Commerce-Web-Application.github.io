<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    registerEntities user = (registerEntities) session.getAttribute("user");

    if (user == null || user.getUserType().trim().equals("normal")) {
        response.sendRedirect("index.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>

        <%@include file="components/common-css-js.jsp" %>

    </head>
    <body>

        <!--NAVBAR START-->
        <div class="body">
        <%@include file="components/navbar/navbar.jsp" %>
        <!--NAVBAR END-->

        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->


        <div class="admin-panel">

            
            <!--ADMIN SIDE NAVBAR-->
            <%@include file="components/AdminSideNavbar.jsp" %>
         
                <!--RIGHT PART-->
                <div class="panel-right">
                    
                    <div class="form-right-part">
                        
                    <h1> Dashboard...</h1>
                    
                </div>

                </div>
                
        </div>
        

        </div>
    </body>
</html>
