<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page import="com.ecommerce.helper.factoryProvider"%>
<%@page import="com.ecommerce.Dao.registerDao"%>
<%

    registerDao register = new registerDao(factoryProvider.getFactory());

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
                <li><a href="loginPage.jsp"><img src="components/logo/user.jpg"/></a></li>

                <%
                } else {

                %>
                <li onclick="toggleDisplay()"><img src="components/logo/<%=userDetails1.getUserPic()%>"/></li>

                <!--USER PROFILE START-->
                <div class="user-Profile-card" id="myElement">

                    <div class="top-part">
                        <a href="updateUserDetails.jsp"> <i class="fa-solid fa-user-pen"></i></a>
                    </div>

                    <div class="user-box">

                        <div class="mid-part">
                            <img src="components/logo/<%=userDetails1.getUserPic()%>"/>
                            <h2><%=userDetails1.getUserName()%></h2>

                            <!--ADMIN-->
                            <%
                                if(userDetails1.getUserType().trim().equals("admin"))
                                {
                                %>
                            <a href="adminPage.jsp" class="user-admin-access">
                                <i class="fa-solid fa-pen-nib"></i>
                            </a>
                            
                                <%
                                    }
                                    %>
                            
                        </div>


                        <a href="LogoutServlet">
                            <div class="end-part">
                                <p>Logout</p>
                                <i class="fa-solid fa-right-from-bracket"></i>
                            </div>
                        </a>

                    </div>

                </div>

                <!--USER PROFILE END-->

                <%

                    }

                %>







            </ul>

        </div>

    </div>

</div>