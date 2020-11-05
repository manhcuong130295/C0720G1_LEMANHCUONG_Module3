<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05-Nov-20
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<form class="form" method="post" action="/products?action=edit">
    <div class="form-group">
        <label for="id">Id</label>
        <input type="hidden" id="id" value="<c:out value="${product.id}"/>" name="id">
        <label for="product_code">Product Code</label>
        <input type="text" id="product_code" value="<c:out value="${product.productCode}"/>" name="product_code">
        <label for="name_product">Product Name</label>
        <input type="text" id="name_product" value="<c:out value="${product.nameProduct}"/>" name="product_name">
        <label for="price">Price</label>
        <input type="text" id="price" value="<c:out value="${product.price}"/>" name="price">
        <label for="description">Descripton</label>
        <input type="text" id="description" value="<c:out value="${product.description}"/>" name="description">
        <input type="submit" value="Edit">
    </div>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</html>