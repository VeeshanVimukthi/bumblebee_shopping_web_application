<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/6/2023
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./CSS/Home_page.css">


<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>

<%--    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>--%>
</head>
<body class="bd" style="max-width: 1600px; margin: auto">

<section class="home_page_slider">
<div class="Home_Main">
    <div class="sub_cat">
        <div class="Categories">
            <div class="Category_name ">
<%--                <i class="fa-solid fa-list"></i>--%>
                <h4 class="name">Categories</h4>

            </div>
            <div class="Category_list">

<%--                <ul class=" ">--%>
<%--                    <li class=" list-group-item list-group-item-action ">An item</li>--%>
<%--                    <li class="list-group-item list-group-item-action">A second item</li>--%>
<%--                    <li class="list-group-item list-group-item-action">A third item</li>--%>
<%--                    <li class="list-group-item list-group-item-action">A fourth item</li>--%>
<%--                    <li class="list-group-item list-group-item-action">And a fifth one</li>--%>
<%--                    <li class="list-group-item list-group-item-action">And a fifth one</li>--%>
<%--                    <li class="list-group-item list-group-item-action">And a fifth one</li>--%>
<%--                    <li class="list-group-item list-group-item-action">And a fifth one</li>--%>
<%--                </ul>--%>
    <div class="list-group">
<%--        <a href="#" class="list-group-item list-group-item-action">--%>
<%--            Active Item--%>
<%--        </a>--%>
        <a href="#" class="list-group-item list-group-item-action">Women's Fashion</a>
        <a href="#" class="list-group-item list-group-item-action">Men's Fashion</a>
        <a href="#" class="list-group-item list-group-item-action">Consumer Electronics</a>
        <a href="#" class="list-group-item list-group-item-action">Jewelry & Watches</a>
        <a href="#" class="list-group-item list-group-item-action">Home, Pet & Appliances</a>
        <a href="#" class="list-group-item list-group-item-action">Bags & Shoes</a>
        <a href="#" class="list-group-item list-group-item-action">Toys , Kids & Babies</a>
        <a href="#" class="list-group-item list-group-item-action">Outdoor Fun & Sports</a>
        <a href="#" class="list-group-item list-group-item-action">Beauty, Health & Hair</a>
        <a href="#" class="list-group-item list-group-item-action">Phones & Telecommunications
        </a>
        <a href="#" class="list-group-item list-group-item-action">Computer, Office & Security</a>
        <a href="#" class="list-group-item list-group-item-action">Tools & Home Improvement
        </a>
        <a href="#" class="list-group-item list-group-item-action">Automobiles & Motorcycles</a>

    </div>


            </div>
        </div>

        <div class="Categories1">
            <div class="cat">

                <%@include file="./Include/Cards.jsp"%>
                <%@include file="./Include/Marquee slider.jsp"%>

<%--            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">--%>
<%--                <!-- Indicators -->--%>
<%--                <ol class="carousel-indicators">--%>
<%--                    <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>--%>
<%--                    <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>--%>
<%--                    <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>--%>
<%--                </ol>--%>

<%--                <!-- Slides -->--%>
<%--                <div class="carousel-inner">--%>
<%--                    <div class="carousel-item active">--%>
<%--                        <img src="./Images/Slider%20image/4.jpeg" class="d-block w-100" alt="Slide 1">--%>
<%--                    </div>--%>
<%--                    <div class="carousel-item">--%>
<%--                        <img src="./Images/Slider%20image/1.jpeg" class="d-block w-100" alt="Slide 2">--%>
<%--                    </div>--%>
<%--                    <div class="carousel-item">--%>
<%--                        <img src="./Images/Slider%20image/1.jpeg" class="d-block w-100" alt="Slide 3">--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <!-- Controls -->--%>
<%--                <a class="carousel-control-prev" href="#myCarousel" role="button" data-bs-slide="prev">--%>
<%--                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
<%--                    <span class="visually-hidden">Previous</span>--%>
<%--                </a>--%>
<%--                <a class="carousel-control-next" href="#myCarousel" role="button" data-bs-slide="next">--%>
<%--                    <span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
<%--                    <span class="visually-hidden">Next</span>--%>
<%--                </a>--%>
<%--            </div>--%>



            </div>

        </div>

    </div>
</div>
</section>

<%--<%@include file="Image slider/Marquee slider.jsp"%>--%>

<%--<%@include file="../Include/Cards/Cards.jsp"%>--%>

<%--<%@include file="../Include/Cards/cards1.jsp"%>--%>


<%@include file="./Include/More_cards.jsp"%>






</body>
</html>
