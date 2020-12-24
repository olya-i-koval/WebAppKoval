<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.StudentDaoImpl" %>

<fmt:setBundle basename="message"/>

<html>
<head>
    <title>Students</title>
    <style>
        @import "../styles/dropbox.css";
        @import "../bootstrap/css/bootstrap.css";
        @import "../bootstrap/css/bootstrap.min.css";
    </style>
</head>
<body>
<c:forEach var = "i" begin = "1" end = "${pages}">
    <a href="?page=${i}">Page <c:out value = "${i}"/></a>
</c:forEach>



</div>

<table class="table table-responsive table-bordered" cellpadding="0" width="50%">
    <tr>
        <th><fmt:message key="student.name"/></th>
        <th><fmt:message key="student.surname"/></th>
    </tr>
    <jsp:useBean id="studentList" scope="request" type="java.util.List"/>
    <c:forEach items="${studentList}" var="student">
        <tr>
            <td>${student.name}</td>
            <td>${student.surname}</td>
            <td align="center"><a href="/user/details?id=${student.id}"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
