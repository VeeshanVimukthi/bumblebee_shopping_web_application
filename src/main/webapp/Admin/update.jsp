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


<%--<h1>Update Product</h1>--%>
<%--<form action="UpdateProductServlet" method="post" enctype="multipart/form-data">--%>
<%--    <input type="hidden" name="id" value="${product.id}">--%>
<%--    <label for="name">Name:</label>--%>
<%--    <input type="text" name="name" value="${product.name}">--%>
<%--    <br><br>--%>
<%--    <label for="description">Description:</label>--%>
<%--    <textarea name="description">${product.description}</textarea>--%>
<%--    <br><br>--%>
<%--    <label for="category">Category:</label>--%>
<%--    <input type="text" name="category" value="${product.category}">--%>
<%--    <br><br>--%>
<%--    <label for="price">Price:</label>--%>
<%--    <input type="text" name="price" value="${product.price}">--%>
<%--    <br><br>--%>
<%--    <label for="image">Image:</label>--%>
<%--    <input type="file" name="image">--%>
<%--    <br><br>--%>
<%--    <label for="dimensions">Dimensions:</label>--%>
<%--    <input type="text" name="dimensions" value="${product.dimensions}">--%>
<%--    <br><br>--%>
<%--    <label for="weight">Weight:</label>--%>
<%--    <input type="text" name="weight" value="${product.weight}">--%>
<%--    <br><br>--%>
<%--    <label for="color">Color:</label>--%>
<%--    <input type="text" name="color" value="${product.color}">--%>
<%--    <br><br>--%>
<%--    <input type="submit" value="Update Product">--%>
<%--</form>--%>

<form method="post" action="<%= request.getContextPath() %>/view-products">
    <input type="hidden" name="productId" value="<%= product.getId() %>">
    <label for="name">Name:</label>
    <input type="text" name="name" value="<%= product.getName() %>">
    <br>
    <label for="description">Description:</label>
    <textarea name="description"><%= product.getDescription() %></textarea>
    <br>
    <label for="category">Category:</label>
    <input type="text" name="category" value="<%= product.getCategory() %>">
    <br>
    <label for="price">Price:</label>
    <input type="text" name="price" value="<%= product.getPrice() %>">
    <br>
    <label for="image">Image:</label>
    <input type="file" name="image">
    <br>
    <label for="dimensions">Dimensions:</label>
    <input type="text" name="dimensions" value="<%= product.getDimensions() %>">
    <br>
    <label for="weight">Weight:</label>
    <input type="text" name="weight" value="<%= product.getWeight() %>">
    <br>
    <label for="color">Color:</label>
    <input type="text" name="color" value="<%= product.getColor() %>">
    <br>
    <button type="submit" name="action" value="update">Update</button>
</form>



</body>
</html>
