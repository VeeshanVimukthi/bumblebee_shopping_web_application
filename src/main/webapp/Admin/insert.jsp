<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/28/2023
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="admin_navigation.jsp"%>

<h1>Add Product Details</h1>
<form action="../AddProductServlet" method="POST" enctype="multipart/form-data">
    <label for="name">Name:</label>
    <input type="text" name="name" id="name" required><br>
    <label for="description">Description:</label>
    <textarea name="description" id="description"></textarea><br>
    <label for="category">Category:</label>
    <input type="text" name="category" id="category"><br>
    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="0.01" min="0" required><br>
    <label for="image" >Image:</label>
    <input type="file" id="image" name="image"><br>
    <label for="dimensions" >Dimensions:</label>
    <input type="text" id="dimensions" name="dimensions"><br>
    <label for="weight" >Weight:</label>
    <input type="text" id="weight" name="weight"><br>
    <label for="color">Color:</label>
    <input type="text" id="color" name="color"><br>
    <input type="submit" value="Add Product">
</form>
</body>
</html>
