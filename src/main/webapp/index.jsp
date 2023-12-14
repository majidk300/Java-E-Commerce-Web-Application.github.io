
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.ecommerce.helper.factoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ecommerce|| home page</title>
        
        <%@include file="components/common-css-js.jsp" %>
       
    </head>
    <body>
        
        <!--NAVBAR START-->
       <%@include file="components/navbar/navbar.jsp" %>
        <!--NAVBAR END-->
        
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        
        <!--SHOP TRADE IN OFFER START-->
        <div class="mainShopTrade">
        <div class="shopTade">
            
            <!--TRADE IN OFFER LEFT PART-->
            <div class="trade">
                
                <p class="pTrade">Trade-in-offer</p>
                
                <h1 class="superValue">Super value deals</h1>
                <h1 class="onallproducts">On all products</h1>
                
                <p class="pCoupons">Save more with coupons & upto 70% off !</p>
                
                <div class="shopNowbtn">
                    <button class="btn" style="background-image: url(components/logo/button.png); background-size: cover; background-repeat: no-repeat"><a href="#">Show Now</a></button>
                </div>
                
            </div>
            
            <!--MODAL IMAGE-->
            <div class="modal" style="background-image: url(components/logo/modal.png); width:50%; height:100vh; background-size: cover; background-repeat: no-repeat; position: absolute;right:0;">
  
            </div>
            
        </div>
        </div>
        <!--SHOP TRADE IN OFFER START END-->
        
    </body>
</html>
