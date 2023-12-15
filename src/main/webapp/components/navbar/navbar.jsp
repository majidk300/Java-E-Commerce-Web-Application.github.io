<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page import="com.ecommerce.helper.factoryProvider"%>
<%@page import="com.ecommerce.Dao.registerDao"%>
<%
    
    registerDao register = new registerDao(factoryProvider.getFactory());
    registerEntities userDetails = (registerEntities) register.getAllUserDetails();
   
     registerEntities userDetails1 = (registerEntities) session.getAttribute("user");
%>

<div class="navbar">

    <div class="sub-nav">

        <div class="logo">
            <img src="components/logo/logo.png"/>
        </div>

        <div class="elements">

            <ul>

                <li><a href="index.jsp" class="active">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#"><i class="fa-solid fa-bag-shopping"></i></a></li>

                <%                    if (userDetails1 == null) {
                %>
                <li><a href="loginPage.jsp"><img src="components/logo/user.png"/></a></li>

                <%
                    } else {
                      %>
                          <li><a href="adminPage.jsp"><img src="components/logo/<%=userDetails.getUserPic()%>"/></a></li>
                      <%
                    }
                %>




            </ul>

        </div>

    </div>

</div>