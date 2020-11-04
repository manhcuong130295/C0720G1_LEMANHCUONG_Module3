<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04-Nov-20
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<form class="form" method="post" action="/customers?action=edit">
    <div class="form-group">
        <label for="id">Id</label>
        <input type="hidden" id="id" value="<c:out value="${customer.id}"/>" name="id">
        <label for="fullname">Full name</label>
        <input type="text" id="fullname" value="<c:out value="${customer.fullName}"/>" name="fullname">
        <label for="email">Email</label>
        <input type="text" id="email" value="<c:out value="${customer.email}"/>" name="email">
        <label for="address">Address</label>
        <input type="text" id="address" value="<c:out value="${customer.address}"/>" name="address">
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
