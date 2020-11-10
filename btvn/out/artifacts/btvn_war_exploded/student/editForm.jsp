<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form action="/students?action=edit" method="post" style="width: 200px">
    <div class="form-group">
        <input type="hidden" class="form-control" value="<c:out value="${student.id}"/>" name="id">
    </div>
    <div class="form-group">
        <label >Name</label>
        <input type="text" class="form-control" value="<c:out value="${student.name}"/>" name="name">
    </div>
    <div class="form-group">
        <label >Age</label>
        <input type="text" class="form-control"  value="<c:out value="${student.age}"/>" name="age">
    </div>
    <div class="form-group">
        <label >Email</label>
        <input type="text" class="form-control"  value="<c:out value="${student.email}"/>"name="email">
    </div>
    <div class="form-group">
        <label >Address</label>
        <input type="text" class="form-control" value="<c:out value="${student.address}"/>" name="address" >
    </div>
    <button type="submit" class="btn btn-primary">Update</button>

    <a name="" id="" class="btn btn-primary" href="/students" role="button">Cancel</a>
<%--    <button type="button" class="btn btn-secondary" data-dismiss="modal" >Cancel</button>--%>
</form>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>