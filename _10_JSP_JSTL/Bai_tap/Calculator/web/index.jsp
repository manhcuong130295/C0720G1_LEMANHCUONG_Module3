<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03-Nov-20
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
    <form method="post" action="/calculator">
        <div class="form-group" style="width: 200px">
            <h4>Simple Calculator</h4>
            <label for="number1">First Operand</label>
            <input type="text" class="form-control" id="number1" name="number1" placeholder="Input number">
        </div>
        <div class="form-group" style="width: 200px">
            <label for="number2">Second Operand</label>
            <input type="text" class="form-control" id="number2" name="number2" placeholder="Input number">
        </div>
        <div class="form-group" style="width: 100px">
            <label>Operator</label>
            <select class="custom-select" name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Calculator</button>
    </form>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</html>
