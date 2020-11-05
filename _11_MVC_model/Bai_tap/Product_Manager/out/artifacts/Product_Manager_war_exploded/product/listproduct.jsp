<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05-Nov-20
  Time: 09:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customers List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<h1>List Product</h1>
<p>
    <a href="/products?action=create">Create new Product</a>
</p>
<form method="get" action="/products">
    <label>Search by name</label>
    <input type="hidden" name="action" value="search">
    <input type="text" name="name_search">
    <button type="submit">Search</button>
</form>

<table class="table">

    <thead class="thead-dark">
    <tr><td>Id</td>
        <td>Product Code</td>
        <td>Product Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    </thead>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><c:out value="${product.id}"/></td>
            <td><c:out value="${product.productCode}"/></td>
            <td><c:out value="${product.nameProduct}"/></td>
            <td><c:out value="${product.price}"/></td>
            <td><c:out value="${product.description}"/></td>
            <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</html>