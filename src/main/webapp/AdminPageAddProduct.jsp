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

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard:Add</title>

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
                    <h1 class="add-top-title">Create Product : <%@include file="components/message/categoryMessage.jsp" %></h1>
                    <div class="right">

                        <form action="AddProductServlet" method="post" enctype="multipart/form-data">

                            <div class="right-addProdicts">

                                <p class="label">Product Title</p>
                                <input class="title" name="title" type="text" placeholder="writing.." required/>

                                <p class="label">Label</p>
                                <textarea class="description" name="description" type="text" placeholder="type here..."  required></textarea>

                                <!--IMAGES START-->
                                <div class="product-images">

                                    <p class="label">Images</p>

                                    <div class="product-images-choose">
                                        <div class="image">
                                            <i class="fa-solid fa-cloud-arrow-up"></i>
                                            <span class="upload">Upload</span>
                                             <i class="fa-solid fa-cloud-arrow-up temp"></i>
                                            <span class="upload temp">Upload</span>
                                            <input class="input-image" name="imageOne" type="file" required/>
                                        </div>

                                        <div class="image">
                                            <i class="fa-solid fa-cloud-arrow-up"></i>
                                            <span class="upload">Upload</span>
                                             <i class="fa-solid fa-cloud-arrow-up temp"></i>
                                            <span class="upload temp">Upload</span>
                                             <i class="fa-solid fa-cloud-arrow-up temp"></i>
                                            <span class="upload temp">Upload</span>
                                            <input class="input-image" name="imageTwo" type="file" required/>
                                        </div>

                                        <div class="image">
                                            <i class="fa-solid fa-cloud-arrow-up"></i>
                                            <span class="upload">Upload</span>
                                             <i class="fa-solid fa-cloud-arrow-up temp"></i>
                                            <span class="upload temp">Upload</span>
                                            <input class="input-image" name="imageThree" type="file" required/>
                                        </div>

                                        <div class="image">
                                            <i class="fa-solid fa-cloud-arrow-up"></i>
                                            <span class="upload">Upload</span>
                                             <i class="fa-solid fa-cloud-arrow-up temp"></i>
                                            <span class="upload temp">Upload</span>
                                            <input class="input-image" name="imageFour" type="file" required/>
                                        </div>

                                    </div>

                                </div>
                                <!--IMAGES END-->

                                <div class="productCategory">

                                    <label class="label" for="productCategorySelect">Category</label><br>

                                    <div class="CategoryAndPrice">
                                        <select class="productCategorySelect" name="ProductCategoryOptions" required>

                                        <option>select</option>
                                        
                                        <!--PRODUCT CATEGORY FETCHING-->
                                        <%
                                           for(productCategoryEntities productC:c){
                                           %>
                                           
                                           <option name="categoryId" class="option" value="<%=productC.getCategoryId()%>"><%=productC.getCategoryTitle()%></option>
                                                <%
                                            }
                                        
                                        %>

                                    </select>
                                    
                                    </div>
                                </div>

                                <div class="product-price">
                                    <p class="label">Price</p>
                                    <input class="price" name="price" type="number" placeholder="price" required/>
                                </div>

                            

                                <div class="check-Box">
                                    <input class="checked" name="checkBox" type="checkbox" value="checked" required/>
                                    <label class="label label-check" for="checkBox">Publish on site</label><br>
                                </div>

                                <button class="productBtn" type="submit">Submit item</button>


                            </div>

                        </form>

                    </div>

                </div>

            </div>

    </body>
</html>
