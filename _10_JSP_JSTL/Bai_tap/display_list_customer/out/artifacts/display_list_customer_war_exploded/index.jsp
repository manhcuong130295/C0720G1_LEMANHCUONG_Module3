<%@ page import="java.util.List" %>
<%@ page import="models.Customers" %>
<%@ page import="dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03-Nov-20
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>

</head>
<body>

<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Họ Và Tên</th>
        <th scope="col">Ngày Sinh</th>
        <th scope="col">Địa Chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Customers> list = CustomerDao.getCustomersList();
        request.setAttribute("customersList", list);
    %>
    <c:forEach var="customer" items="${requestScope.customersList}">
        <tr>
           <td><c:out value="${customer.fullName}"/></td>
            <td><c:out value="${customer.birthday}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td>
                <img style="height: 50px;width: 50px" src="<c:out value = "${customer.avatar}"/>">
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
