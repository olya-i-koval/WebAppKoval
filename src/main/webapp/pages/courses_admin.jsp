<%@ page contentType="text/html;carset=UTF-8" language="java" %>

<%@ page import="dao.SubjectDaoImpl" %>
<%@ page import="dao.SubjectDaoImpl" %>
<%@ page import="dao.LecturerDaoImpl" %>
<%@ page isELIgnored="false" %>




<html>
<head>
    <title><fmt:message key="site_title"/></title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

    <style>
        @import "../styles/dropbox.css";
        @import "../bootstrap/css/bootstrap.css";
        @import "../bootstrap/css/bootstrap.min.css";
    </style>
</head>
<body>
<%
    request.setAttribute("listLecturers", new LecturerDaoImpl().listNames());
    request.setAttribute("listCourses", new SubjectDaoImpl().listSubjects());
%>

<div>
    <h5>
        <fmt:message key="cookie.ChooseLocale"/>
    </h5>
    <ul>
        <li><a href="confirm?cookieLocale=en_US"><fmt:message key="lang.en"/></a></li>
        <li><a href="confirm?cookieLocale=uk_UA"><fmt:message key="lang.ua"/></a></li>
    </ul>
</div>

<div id="report_div">

</div>

<form action="/logout" method="get">
    <input type="submit" value=
    <fmt:message key="user.logout"/> id="frm1_submit"/>
</form>
</body>
</html>
