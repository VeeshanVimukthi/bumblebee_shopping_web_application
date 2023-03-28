<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/6/2023
  Time: 8:00 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./CSS/Navbar.css">
<%--    <script src="https://kit.fontawesome.com/c6b5381962.js" crossorigin="anonymous"></script>--%>
<%--    <link rel="stylesheet" href="https://kit.fontawesome.com/c6b5381962.css" crossorigin="anonymous">--%>



    <style>
        .avatar {
            display: inline-block;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background-color: #007bff;
            color: #fff;
            font-size: 12px;
            line-height: 25px;
            text-align: center;
            margin-right: 10px;
        }
        .fonts {
            font-size: 12px;
            line-height: 25px;
            align-items: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>



<section class="nav sticky-top">

<div class="Nav_main  ">
<%--    navbar-dark bg-dark--%>
    <nav class="navbar navbar-expand-lg " >
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
<%--                <img src="path/to/your/logo.png" alt="Your Website Name">--%>
                <img src="./Images/logo2.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top me-2">
                Bumble Bee
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                <ul class="navbar-nav "style="align-items: center;">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="About.jsp">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Admin/admin_navigation.jsp">Brands</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.jsp">Contact Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Services
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Service 1</a>
                            <a class="dropdown-item" href="#">Service 2</a>
                            <a class="dropdown-item" href="#">Service 3</a>
                        </div>
                    </li>
                </ul>
                <form class="form d-flex my-2 my-lg-0 mr-3">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btns " type="submit"> <i class="fa fa-search"></i></button>
                </form>
                <ul class="navbar-nav" style="align-items: center;">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="fas fa-shopping-cart "></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Form/Login.jsp">Sign In</a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="#">Sign Out</a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
<%--                        <%--%>
<%--                            String username = (String) session.getAttribute("username");--%>
<%--                            char firstLetter = username.charAt(0);--%>
<%--                        %>--%>

<%--                        <div class="avatar"><%= firstLetter %></div>--%>

<%--                        <a class="nav-link" href="#">--%>
<%--                            <i class="fas fa-user-circle  "></i>--%>
<%--                        </a>--%>
                    </li>
                    <li>
<%--                        <%--%>
<%--                            String username = (String) session.getAttribute("username");--%>
<%--                            char firstLetter = username.charAt(0);--%>
<%--                        %>--%>
<%--                        <div class="avatar"><%= firstLetter %></div>--%>




                        <h4 class="fonts">Welcome <%=session.getAttribute("username")%></h4>




<%--                    <p>You are now logged in.</p>--%>
<%--                    <a href="logout">Logout</a>--%>
                    </li>



                </ul>

            </div>
        </div>
    </nav>






</div>

</section>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>--%>



<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5X5ss5byi2C/jRZKWzftoKPPdAnx1qzirLPUOIC6CjlsKjX9deZaH6Am0UtoQeB" crossorigin="anonymous"></script>--%>
</body>
</html>
