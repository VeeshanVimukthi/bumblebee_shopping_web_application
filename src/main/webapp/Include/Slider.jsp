<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/8/2023
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
        <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
    </ol>

    <!-- Slides -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="Slide 1">
        </div>
        <div class="carousel-item">
            <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="Slide 2">
        </div>
        <div class="carousel-item">
            <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="Slide 3">
        </div>
    </div>

    <!-- Controls -->
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </a>
</div>



</body>
</html>
