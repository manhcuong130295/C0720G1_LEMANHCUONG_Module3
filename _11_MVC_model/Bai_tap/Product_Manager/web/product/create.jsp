<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05-Nov-20
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        .form-control{
            width: 200px;
        }
    </style>
</head>
<body>
<form action="/products?action=create" method="post">
    <div class="form-group">
        <label for="id">Id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="Input Id" >
    </div>
    <div class="form-group">
        <label for="product_code">Product Code</label>
        <input type="text" class="form-control" id="product_code" name="product_code" placeholder="Input Product Code">
    </div>
    <div class="form-group">
        <label for="name_product">Product Name</label>
        <input type="text" class="form-control" id="name_product" name="name_product" placeholder="Input Product Name">
    </div>
    <div class="form-group">
        <label for="price">Price</label>
        <input type="text" class="form-control" id="price" name="price" placeholder="Input Price">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <input type="text" class="form-control" id="description" name="description" placeholder="Input Description">
    </div>
    <button type="submit">Create</button>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>
