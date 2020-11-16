<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container-fluid">
<nav class="d-flex justify-content-between bg-secondary" style="margin:auto">
    <div class="p-2 d-flex">
        <form class="form-inline mx-5" action="/customers" method="get">
            <input type="hidden" name="action" value="search">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                   name="name_search">
            <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <a class="nav-link" href="/" style="-color: ghostwhite">Back to home</a>
        <a class="nav-link" href="/customers" style="-color: ghostwhite">Back to List</a>

    </div>
    <div class="p-2">
        <button type="button" class="btn btn-success my-2 my-sm-0 mx-5" style="margin-right: 0px" data-toggle="modal"
                data-target="#modelCreate">
            Add New Customer
        </button>
    </div>
</nav>
</div>

<div class="container-fluid" style="margin-top: auto">
    <table class="table" id="tableContract">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Customer Type</th>
            <th scope="col">Full Name</th>
            <th scope="col">Birth Day</th>
            <th scope="col">Gender</th>
            <th scope="col">Id Card Number</th>
            <th scope="col">Phone Number</th>
            <th scope="col">Email</th>
            <th scope="col">Address</th>
            <th scope="col" style="text-align: center">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <th scope="row">
                    <c:out value="${customer.id}"/>
                </th>
                <td><c:out value="${customer.customerType}"/></td>
                <td><c:out value="${customer.fullName}"/></td>
                <td><c:out value="${customer.birthDay}"/></td>
                <td><c:out value="${customer.gender}"/></td>
                <td><c:out value="${customer.idCardNumber}"/></td>
                <td><c:out value="${customer.phone}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.address}"/></td>

                <td style="collapse: 2 ; text-align: center"><a href="#" class="btn btn-primary " data-toggle="modal"
                                                                data-target="#modalEdit"
                                                                onclick="onEdit('${customer.id}','${customer.customerType}','${customer.fullName}','${customer.birthDay}','${customer.gender}','${customer.idCardNumber}','${customer.phone}','${customer.email}','${customer.address}')">

                    Edit
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-fill" fill="currentColor"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                    </svg>
                </a>

                    <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#modelDelete"
                       onclick="onDelete('${customer.id}')">Delete
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                        </svg>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%--<nav aria-label="Page navigation example">--%>
<%--    <ul class="pagination">--%>
<%--        <c:if test="${currentPage != 1}">--%>
<%--            <li class="page-item"><a class="page-link" href="products?page=${currentPage-1}">Previous</a></li>--%>
<%--        </c:if>--%>
<%--        &lt;%&ndash;            <c:forEach begin="1" end="${noOfPage}" var="i">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                <li class="page-item"><a id="${i}" class="page-link active" href="products?page=${i}">${i}</a></li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            </c:forEach>&ndash;%&gt;--%>
<%--        <c:if test="${currentPage == 1}">--%>
<%--            <li class="page-item active"><a id="${i}" class="page-link active" href="customers?page=${currentPage}">${currentPage}</a></li>--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage + 1}">${currentPage + 1}</a></li>--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage + 2}">${currentPage + 2}</a></li>--%>
<%--        </c:if>--%>

<%--        <c:if test="${currentPage > 1 && currentPage < noOfPage}">--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage - 1}">${currentPage - 1}</a></li>--%>
<%--            <li class="page-item active"><a id="${i}" class="page-link active" href="customers?page=${currentPage}">${currentPage}</a></li>--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage + 1}">${currentPage +1}</a></li>--%>
<%--        </c:if>--%>

<%--        <c:if test="${currentPage == noOfPage}">--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage - 2}">${currentPage - 2}</a></li>--%>
<%--            <li class="page-item"><a id="${i}" class="page-link" href="customers?page=${currentPage - 1}">${currentPage - 1}</a></li>--%>
<%--            <li class="page-item active"><a id="${i}" class="page-link active" href="customers?page=${currentPage}">${currentPage}</a></li>--%>
<%--        </c:if>--%>

<%--        <c:if test="${currentPage != noOfPage}">--%>
<%--            <li class="page-item"><a class="page-link" href="products?page=${currentPage + 1}">Next</a></li>--%>
<%--        </c:if>--%>

<%--    </ul>--%>
<%--</nav>--%>
<!-- Modal Create-->

<div class="modal fade" id="modelCreate" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add new customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/customers?action=create" method="post">
                        <div class="form-group">
                            <label>Id</label>
                            <input type="text" class="form-control" placeholder="Input Id" name="id">
                            <small style="color: red; margin-left: 10%; font-size: 100%"><c:if test="${errorIdCus != null}">${errorIdCus}</c:if></small>
                        </div>
                        <div class="form-group">
                            <label>Full Name</label>
                            <input type="text" class="form-control" placeholder="Input Full name" name="fullName">
                        </div>
                        <div class="form-group">
                            <label>Birth Day</label>
                            <input type="text" class="form-control" placeholder="Input Birth Day" name="birthDay">
                            <small style="color: red; margin-left: 10%; font-size: 100%"><c:if test="${errorBirthDay != null}">${errorBirthDay}</c:if></small>
                        </div>
                        <div class="form-group">
                            <label>Gender</label>
                            <select id="gender" name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Another">Another</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Id Card Number </label>
                            <input type="text" class="form-control" placeholder="Input Id Card Number"
                                   name="idCardNumber">
                            <small style="color: red; margin-left: 10%; font-size: 100%"><c:if test="${errorIdCard != null}">${errorIdCard}</c:if></small>
                        </div>
                        <div class="form-group">
                            <label>Phone Number </label>
                            <input type="text" class="form-control" placeholder="Input Id Phone Number"
                                   name="phoneNumber">
                            <small style="color: red; margin-left: 10%; font-size: 100%"><c:if test="${errorPhoneNumber != null}">${errorPhoneNumber}</c:if></small>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" class="form-control" placeholder="Input Email" name="email">
                            <small style="color: red; margin-left: 10%; font-size: 100%"><c:if test="${errorEmail != null}">${errorEmail}</c:if></small>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" class="form-control" placeholder="Input Address" name="address">
                        </div>
                        <div class="form-group">
                            <label>Customer Type</label>
                            <select id="type" name="type">
                                <option value="1">Diamond</option>
                                <option value="4">Platinum</option>
                                <option value="2">Gold</option>
                                <option value="3">Silver</option>
                                <option value="5">Member</option>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Modal Edit-->
<div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Update Customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/customers?action=edit" method="post">
                        <div class="form-group">
                            <label>Id</label>
                            <input type="hidden" id="updateId" class="form-control" placeholder="Input Id" name="id">
                        </div>
                        <div class="form-group">
                            <label>Full Name</label>
                            <input type="text" id="updateFullName" class="form-control" placeholder="Input Full name"
                                   name="fullName">
                        </div>
                        <div class="form-group">
                            <label>Birth Day</label>
                            <input type="text" id="updateBirthDay" class="form-control" placeholder="Input Birth Day"
                                   name="birthDay">
                        </div>
                        <div class="form-group">
                            <label>Gender</label>
                            <select id="updateGender" name="gender">
                                <option value="Male" >Male</option>
                                <option value="Female">Female</option>
                                <option value="Another">Another</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Id Card Number </label>
                            <input type="text" id="updateIdCardNumber" class="form-control"
                                   placeholder="Input Id Card Number" name="idCardNumber">
                        </div>
                        <div class="form-group">
                            <label>Phone Number </label>
                            <input type="text" id="updatePhone" class="form-control" placeholder="Input Id Phone Number"
                                   name="phoneNumber">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" id="updateEmail" class="form-control" placeholder="Input Email"
                                   name="email">
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" id="updateAddress" class="form-control" placeholder="Input Address"
                                   name="address">
                        </div>
                        <div class="form-group">
                            <label>Customer Type</label>
                            <select id="updateType" name="type">
                                <option value="1">Diamond</option>
                                <option value="2">Platinum</option>
                                <option value="3">Gold</option>
                                <option value="4">Silver</option>
                                <option value="5">Member</option>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Button trigger modal -->

<!-- Modal Delete -->
<div class="modal fade" id="modelDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/customers">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" id="deleteId">
                    <label>Are you sure?</label>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>
<input type="hidden" name="hasError" id="hasError" value="${hasError}">
<script>
    function onEdit(id, customerType, fullName, birthDay, gender, idCardNumber, phone, email, address) {
        document.getElementById("updateId").value = id;
        document.getElementById("updateType").value = customerType;
        document.getElementById("updateFullName").value = fullName;
        document.getElementById("updateBirthDay").value = birthDay;
        document.getElementById("updateGender").value = gender;
        document.getElementById("updateIdCardNumber").value = idCardNumber;
        document.getElementById("updatePhone").value = phone;
        document.getElementById("updateEmail").value = email;
        document.getElementById("updateAddress").value = address;

    }

    function onDelete(id) {
        document.getElementById("deleteId").value = id;
    }
</script>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
<script>
    $(document).ready(function () {
        $('#tableContract').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
        if($("#hasError").val() === "false"){
            $("#modelCreate").modal('show');
        }

</script>
</body>
</html>