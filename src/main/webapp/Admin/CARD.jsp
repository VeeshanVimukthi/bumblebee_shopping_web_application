<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

<%--    <%@include file="admin_navigation.jsp"%>--%>
    <title>Product List</title>
    <style>
        /* Add some basic styles for the card viewer */
        .card {
            width: 300px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 5px #ccc;
            display: inline-block;
        }
        .card img {
            max-width: 100%;
            height: auto;
            object-fit: contain;
        }
        .card h3 {
            margin: 10px;
        }
        .card p {
            margin: 10px;
            font-size: 14px;
            color: #555;
        }
        .card .price {
            margin: 10px;
            font-size: 18px;
            color: #00c;
            font-weight: bold;
        }
        .card .actions {
            margin: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .card .actions a {
            text-decoration: none;
            color: #fff;
            background-color: #00c;
            padding: 10px;
            border-radius: 5px;
        }
        .card .actions a:hover {
            background-color: #0077c2;
        }

        .add-to-cart-btn {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
        }

        .add-to-cart-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<c:forEach var="product" items="${products}">
    <div class="card">
        <img height="100" src="data:image/jpeg;base64,${product.imageBase64}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>${product.description}</p>
        <p><strong>Category:</strong> ${product.category}</p>
        <p><strong>Dimensions:</strong> ${product.dimensions}</p>
        <p><strong>Weight:</strong> ${product.weight}</p>
        <p><strong>Color:</strong> ${product.color}</p>
        <div class="price">${product.price}</div>
        <div class="actions">
            <a href="productdetails.jsp?id=${product.id}">Add cart</a>
<%--            <form action="add-to-cart" method="post">--%>
<%--                <input type="hidden" name="productId" value="${product.id}">--%>
<%--                <button type="submit" class="btn btn-success add-to-cart-btn">Add to Cart</button>--%>
<%--            </form>--%>
        </div>
<%--        <div class="actions">--%>
<%--            <a href="edit-product?id=${product.id}">Edit</a>--%>
<%--            <a href="?deleteProduct?id=${product.id}">Delete</a>--%>
<%--        </div>--%>



    </div>
</c:forEach>
</body>
</html>
