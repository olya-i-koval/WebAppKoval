<%--
  Created by IntelliJ IDEA.
  User: Komp
  Date: 22.12.2020
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Редагування</title>
    <style>
        @import "../bootstrap/css/bootstrap.css";
        @import "../bootstrap/css/bootstrap.min.css";
    </style>
</head>
<body>

<div style="padding: 20px">
    <h1><fmt:message key="data.update"/></h1>
    <div class="row">
        <div class="col-sm-3">
            <form method="post" action="<c:url value="/user/update"/>">
                <input style="visibility: hidden" type="number" name="id" id="id" value="${subject.id}">
                <div align="left">
                    <label class="col-form-label"><fmt:message key="entity.title"/></label>
                    <input type="text" class="form-control" placeholder=
                    <fmt:message key="entity.title"/> value="${subject.title}" name="course"
                           id="course" required>
                </div>

        <div align="left">
            <label class="form-label"><fmt:message key="entity.lecturer"/></label>
            <select class="form-control" name="lecturer" id="lecturer" required>
                <c:forEach items="${list}" var="lecturer">
                     <option
                             <c:if  test="${subject.lecturerId == lecturer.key}">
                                 selected
                             </c:if>

                             value="${lecturer.key}">${lecturer.value}</option>
                </c:forEach>
            </select>
        </div>
                <div align="left">
                    <label class="col-form-label"><fmt:message key="entity.months"/></label>
                    <input type="number" class="form-control" placeholder=
                    <fmt:message key="entity.months"/> value="${subject.months}" name="months"
                           id="months" required>
                </div>
                </br>
                <div align="rigth">
                    <input type="submit" id="submit" value=
                    <fmt:message key="button.submit"/> name="submit" class="btn btn-info">
                    <input type="reset" id="reset" value=
                    <fmt:message key="button.cancel"/> name="reset" class="btn btn-warning"
                           onclick="location.href='/courses'">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>