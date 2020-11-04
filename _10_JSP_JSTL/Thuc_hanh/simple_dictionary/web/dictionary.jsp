<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03-Nov-20
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");
    String searchWord=request.getParameter("txtSearch");
    String resultWord=dic.get(searchWord);
    if(resultWord!=null){
        out.println("Search Word: " + searchWord);
        out.println("\n");
        out.println("Result: " + resultWord);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
