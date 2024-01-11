            <div class="top-head-banner">
                <div class="img">
                    <img src="components/logo/adminlogo.png" alt="alt"/>
                </div>
                <div class="bars">
                    <i class="fa-solid fa-bars-staggered" onclick="adminSideNavbar()" ></i>
                </div>
            </div>

            <div class="panel">

                <!--LEFT PART-->
                <div class="panel-left" id="Element">


                    <div class="left active">
                        <i class="fa-brands fa-slack active"></i>
                        <a href="adminPage.jsp" class="active">Dashboard</a>
                    </div></a>

                    <div class="left">
                        <i class="fa-solid fa-cart-plus"></i>
                        <a href="AdminPageAddProduct.jsp">Add Product</a>
                    </div>

                    <div class="left">
                        <i class="fa-regular fa-pen-to-square"></i>
                        <a href="AdminPageUpdateProduct.jsp">Update Product</a>
                    </div>

                    <div class="left">
                        <i class="fa-solid fa-trash"></i>
                        <a href="AdminPageDeleteProduct.jsp">Delete Product</a>
                    </div>
                    
                    <div class="left">
                        <i class="fa-solid fa-book"></i>
                        <a href="AdminPageCategoty.jsp">Add Category</a>
                    </div>

                    <div class="left">
                        <i class="fa-brands fa-first-order"></i>
                        <a href="#">Order</a>
                    </div>

                    <div class="left">
                        <i class="fa-solid fa-person-military-pointing"></i>
                        <a href="#">Customer</a>
                    </div>


                    <div class="left">
                        <i class="fa-solid fa-chart-column"></i>
                        <a href="#">Statistics</a>
                    </div>

                    <div class="left">
                        <i class="fa-solid fa-star-of-life"></i>
                        <a href="#">Reviews</a>
                    </div>


                    <div class="left">
                        <i class="fa-solid fa-money-bill-transfer"></i>
                        <a href="#">Transaction</a><sup>10</sup>
                    </div> 
                    
                    <div class="left">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <a href="#">Add more admin</a>
                    </div>

                    <div class="left">
                        <i class="fa-solid fa-gear"></i>
                        <a href="#">Setting</a>
                    </div>

                </div>

            </div>


        <script>
            function adminSideNavbar() {

                var element = document.getElementById("Element");
                if (element.style.display == "block") {
                    element.style.display = "none";
                } else {
                    element.style.display = "block";
                }


            }
        </script>
