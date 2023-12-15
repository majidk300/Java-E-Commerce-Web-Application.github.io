
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
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->

        <!--FEATURED SESTION START-->
        <div class="featureSesstion">
            <div class="featured">

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f1.png" alt="alt"/>
                    </div>
                    <p class="p1">Free Shipping</p>
                </div>

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f2.png" alt="alt"/>
                    </div>
                    <p class="p2">Online Order</p>
                </div>

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f3.png" alt="alt"/>
                    </div>
                    <p class="p3">Save Money</p>
                </div>

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f4.png" alt="alt"/>
                    </div>
                    <p class="p4">Promotions</p>
                </div>

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f5.png" alt="alt"/>
                    </div>
                    <p class="p5">Happy Sell</p>
                </div>

                <div class="divFeature">
                    <div class="img">
                        <img src="components/image/features/f6.png" alt="alt"/>
                    </div>
                    <p class="p6">F24/7 Support</p>
                </div>


            </div>
        </div>
        <!--FEATURED SESTION END-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->
        <!--.....................................................................................................................................................................-->

        <!--FEATURED PRODUCTS START-->
        <div class="featured-Products">

            <h4>Featured Products</h4>
            <p class="para">Summer Collections New Modern Design</p>

            <div class="featured">


                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>

                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                
                <div class="products">

                    <div class="img">
                        <img src="components/image/products/f1.jpg" alt="alt"/>
                    </div>

                    <p>abibas</p>

                    <div class="productTitle">
                        <span class="">Cartoon Astronaut T-Shirt</span>
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
                            <span class="price">$ 78</span>
                        </div>

                        <div class="add-cart">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
                
                


            </div>

        </div>
        <!--FEATURED PRODUCTS END-->

    </body>
</html>
