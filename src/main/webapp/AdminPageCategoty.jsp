<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ecommerce.entitites.registerEntities"%>
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
        <title>Dashboard:category</title>

        <%@include file="components/common-css-js.jsp" %>

    </head>
    <body>

        <!--NAVBAR START-->
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
                    
                    <div class="bodyCategory">
                    
                    <div class="center">
                        <%@include file="components/message/categoryMessage.jsp" %>
                        <h1>Create Category</h1>
                        <form action="CategoryServlet" method="post">
                            
                            <div class="inputbox">
                                <input name="category" type="text" required="required">
                                <span>Product Category</span>
                            </div>
                           
                            <div class="inputbox">
                                <button type="submit"><input type="button" value="submit"></button>
                            </div>
                        </form>
                    </div>

                </div>
                    
                </div>

            </div>

        </div>


    </body>
</html>
