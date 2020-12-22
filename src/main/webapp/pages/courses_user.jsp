<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.SubjectDao" %>
<%@ page import="dao.SubjectDaoImpl" %>

<fmt:setBundle basename="message"/>

<html>

<head>
    <title><fmt:message key="site_title"/></title>
    <style>
        @import "../bootstrap/css/bootstrap.css";
        @import "../bootstrap/css/bootstrap.min.css";
    </style>
</head>
<body>
<div style="padding: 20px">
    <h1><fmt:message key="site_title"/></h1>
    <div class="row">
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-subjects" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    <thead>
                    <tr>
                        <th><fmt:message key="entity.title"/></th>
                        <th><fmt:message key="entity.lecturer"/></th>
                        <th><fmt:message key="entity.months"/></th>
                    </tr>

                        <%
                        SubjectDao subjectDao = new SubjectDaoImpl();
                        List<Subject> subjectList = subjectDao.listSubjects();
                        for (Subject s: subjectList) {
                                %>
                    <tr>
                        <td><%=s.getTitle()%>
                        </td>
                        <td><%=s.getLecturer()%>
                        </td>
                        <td align="center"><%=s.getMonths()%>
                        </td>
                    </tr>

                        <%

                        }
                    %>
                </table>
            </div>
        </div>
    </div>

<div>
    <h5>
    <fmt:message key="cookie.ChooseLocale" />
    </h5>
    <ul>

        <li><a href="confirm?cookieLocale=en_US"><fmt:message key="lang.en" /></a></li>
        <li><a href="confirm?cookieLocale=uk_UA"><fmt:message key="lang.ua" /></a></li>
    </ul>
</div>

    <form action="/logout" method="get">
        <input type="submit" value=<fmt:message key="user.logout"/>
               name="Submit" id="frm1_submit" />
    </form>

</div>
</body>
</html>

