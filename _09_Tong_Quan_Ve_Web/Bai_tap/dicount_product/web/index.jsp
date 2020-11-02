<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02-Nov-20
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="/compute">
    <div class="form-group">
        <label for="description">Description</label>
        <input type="text" class="form-control" id="description" name="description">
    </div>
    <div class="form-group">
        <label for="list_price">List Price</label>
        <input type="text" class="form-control" id="list_price" name="list_price">
    </div>
    <div class="form-group">
        <label for="discount_percent">Discount Percent(%) </label>
        <input type="text" class="form-control" id="discount_percent" name="discount_percent">
    </div>
    <button type="submit" class="btn btn-primary">Enter</button>
</form>
</body>
</html>
