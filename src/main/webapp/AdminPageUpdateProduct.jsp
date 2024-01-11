<%@page import="java.util.List"%>
<%@page import="com.ecommerce.entitites.addProductsEntities"%>
<%@page import="com.ecommerce.Dao.ProductCategoryDao"%>
<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    registerEntities user = (registerEntities) session.getAttribute("user");

    if (user == null || user.getUserType().trim().equals("normal")) {
        response.sendRedirect("index.jsp");
        return;
    }

    ProductCategoryDao products = new ProductCategoryDao(factoryProvider.getFactory());
    List<addProductsEntities> p = products.getAllProductWithoutLimit();


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard:Update</title>

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

                    <h3 style="color:#c1121f; border-bottom:2px solid red; max-width:180px; ">Update Products</h3>
                    

                    <div class="featured-Products">

                        <div class="newArrivalHead">
                            <h4>All Products</h4>
                            <p class="para">Summer Collections New Modern Design</p>
                            <%@include file="components/message/categoryMessage.jsp" %>
                        </div>

                        
                        <div class="featured">

                            <%                    for (addProductsEntities featureProducts : p) {
                            %>
                            <div class="products">

                                <div class="img">
                                    <img src="components/image/products/<%=featureProducts.getImageOne()%>" alt="alt"/>
                                </div>

                                <p><%=featureProducts.getCategories().getCategoryTitle()%></p>

                                <div class="productTitle">
                                    <span class=""><%=featureProducts.getProductTile()%></span>
                                </div>

                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>

                                </div>

                                <div class="end-part">
                                    <div class="price-rate">
                                        <span class="price">&#x20B9; <%=featureProducts.getProductPrice()%></span>
                                    </div>

                                    <div class="add-cart">
                                        <a href="UpdateProducts.jsp?productId=<%=featureProducts.getId()%>" ><i class="fa-solid fa-pen-to-square"></i></a>
                                    </div>
                                </div>
                            </div>
                            
                           
                            <%
                                }

                            %>


                        </div>

                    </div>


                </div>

            </div>

        </div>


    </body>
</html>
