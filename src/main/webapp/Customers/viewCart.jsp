<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>View Cart</title>
</head>
<body>
<jsp:include page="../Include/Navbar.jsp" />

<div class="container-fluid" style="max-width: 1200px;">
<div style="text-align: center; background: #7ac400; margin-top: 1%; margin-bottom: 1%"><h1>Your Cart</h1></div>
<table class="table" border="1" style="border-radius: 10px">
    <thead class="thead-dark">
    <tr>
        <th>Product</th>
        <th>Image</th>
        <th>Description</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
        <th></th>
    </tr>
    </thead>
    <c:forEach items="${items}" var="item">
        <tr class="bg-info" style="border-radius: 10px">
            <td>${item.product.name}</td>
            <td><img style="height: 100px" src="data:image/jpeg;base64,${item.product.imageBase64}"/></td>
            <td>${item.product.description}</td>
            <td>LKR ${item.product.price}.00</td>
            <td>
                <form action="reduceQuantity" method="post">
                    <input type="hidden" name="productId" value="${item.product.id}" />
                    <div class="d-flex">
                    <input class="form-control" style="width: 80px" type="number" name="quantity" id="quantity" value="${item.quantity}" min="1"  />
                    <button class="btn" type="submit"><i class="fas fa-edit text-primary"></i></button>
                    </div>
                </form>
            </td>
            <td>LKR ${item.getSubtotal()}.00</td>
            <td>
                <form action="removeFromCart" method="post">
                    <input type="hidden" name="productId1" id="ProductId1" value="${item.product.id}" />
                    <button class="btn" type="submit"><i class="fas fa-trash text-danger"></i></button>
                </form>
            </td>
        </tr>
    </c:forEach>

    <tr>
        <td class="bg-warning" style="text-align: center; color: black" colspan="5"><h3>TOTAL</h3></td>
        <td style="text-align: right" colspan="2"><b>LKR ${total}</b></td>
        <td></td>
    </tr>

</table>

    <div style="text-align:right; align-content: end; justify-content: right; margin-bottom: 1%">
        <a class="text " href="orderConfirmation"><button class="btn" style="background-color: #17c42e; color: black"><b>Checkout</b></button></a>
    </div>


<!-- Confirmation dialog -->
<div id="remove-dialog" style="display: none;">
    <p>Are you sure you want to remove the item "<span id="remove-name"></span>" from your cart?</p>
    <button onclick="removeItem()">Yes</button>
    <button onclick="hideDialog()">Cancel</button>
    <input type="hidden" id="remove-id">
</div>
</div>

<jsp:include page="../Include/Footer.jsp" />

<script>
    let removeDialog = document.getElementById('remove-dialog');
    let removeName = document.getElementById('remove-name');
    let removeId = document.getElementById('remove-id');

    function confirmRemove(name, id) {
        removeName.innerText = name;
        removeId.value = id;
        removeDialog.style.display = 'block';
    }

    function hideDialog() {
        removeDialog.style.display = 'none';
    }

    function removeItem() {
        let id = removeId.value;
        window.location.href = 'removeFromCart?id=' + id;
    }
</script>
</body>
</html>
