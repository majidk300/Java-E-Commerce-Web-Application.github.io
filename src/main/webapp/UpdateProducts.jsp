<%@page import="com.ecommerce.entitites.addProductsEntities"%>
<%@page import="com.ecommerce.entitites.productCategoryEntities"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.Dao.ProductCategoryDao"%>
<%@page import="com.ecommerce.entitites.registerEntities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    registerEntities user = (registerEntities) session.getAttribute("user");

    if (user == null || user.getUserType().trim().equals("normal")) {
        response.sendRedirect("index.jsp");
        return;
    }
    
    ProductCategoryDao pCategory = new ProductCategoryDao(factoryProvider.getFactory());
    List<productCategoryEntities> c = pCategory.getAllCategory();
    
    int pid  = Integer.parseInt(request.getParameter("productId"));
    addProductsEntities products = pCategory.getProductsById(pid);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard:Update Products</title>

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

            <!--RIGHT PART START-->
            
            <div class="panel-right">
                <div class="form-right-part">
                    <h1 class="add-top-title">Update Product</h1>
                    <div class="right">

                        <form action="updateProductsServlet" method="post" enctype="multipart/form-data">

                            <div class="right-addProdicts">
                                
                                <!--ID-->
                                <input name="proId" value="<%=products.getId()%>" class="title" type="number" hidden />

                                <p class="label">Product Title</p>
                                <input value="<%=products.getProductTile()%>" class="title" name="title" type="text" placeholder="writing.." required/>
                                
                                <p class="label">Label</p>
                                <textarea class="description" name="description" type="text" placeholder="type here..."  required><%=products.getProductLabel()%></textarea>
                               

                                <div class="product-price">
                                    <p class="label">Price</p>
                                    <input value="<%=products.getProductPrice()%>" class="price" name="price" type="number" placeholder="price" required/>
                                </div>

                            

                                <div class="check-Box">
                                    <input class="checked" name="checkBox" type="checkbox" value="checked" required/>
                                    <label class="label label-check" for="checkBox">update on site</label><br>
                                </div>

                                <button class="productBtn" type="submit">Update item</button>


                            </div>

                        </form>

                    </div>

                </div>

            </div>

    </body>
</html>
