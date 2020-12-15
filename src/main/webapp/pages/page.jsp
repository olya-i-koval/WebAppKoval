<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        @import "../styles/main.css" screen;
    </style>
</head>
<body>
    <h1>Hello from JSP!!!</h1>
    <%@page import="java.util.Date" %>
    <%@ page import="logic.BusinessLogic" %>
    <%Date now = new Date();%>
    <%=now%>

    <%
        BusinessLogic bl = new BusinessLogic();
        out.println("<div><b>" + bl.getString() + "</b></div>");
    %>
<%
    String name = request.getParameter("name");
    if (name != null) {
        out.println("<div><b>Hello" + name + "</b></div>");
    }
%>

</body>
</html>
