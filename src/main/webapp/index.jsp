<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.bumblebee.DBConnection" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bumble BEE</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>

<%--<% Connection conn= DBConnection.getConn();--%>
<%--    out.print(conn);%>--%>
<%@include file="Include/Navbar.jsp"%>

<%@include file="Home_page.jsp"%>

<%@include file="Include/Footer.jsp"%>

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript library -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>

</body>
</html>