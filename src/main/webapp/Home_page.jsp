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
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>
<body class="bd" style="max-width: 1600px; margin: auto">
<%@include file="Include/Navbar.jsp"%>
<section class="home_page_slider">
<div class="Home_Main">
    <div class="sub_cat">
        <div class="Categories">
            <div class="Category_name ">
<%--                <i class="fa-solid fa-list"></i>--%>
                <h4 class="name">Categories</h4>

            </div>
            <div class="Category_list">

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



            </div>

        </div>

    </div>
</div>
</section>




<%@include file="./Include/More_cards.jsp"%>
<jsp:include page="Admin/CARD.jsp"/>

<%@include file="Include/Footer.jsp"%>



<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript library -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>


</body>
</html>
