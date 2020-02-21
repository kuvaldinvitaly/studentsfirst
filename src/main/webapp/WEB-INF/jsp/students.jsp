<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 16.09.2019
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/styleStudentList.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../../resources/js/functions.js"></script>

</head>
<body>

<div class="container" align="center">

    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <form action="/studentProgress">
            <input type="submit" value="Просмотреть успеваемость выбранного студента" class="button1">
        </form>

        <form action="/studentCreating" method="get">
            <input type="submit" value="Создать студента" class="button2">
        </form>


            <input type="submit" onclick="modifingStudents()" value="Модифицировать выбранного студента" class="button3">
        <form action="/studentModifying" id="modifingStudentForm">
            <input type="hidden" name="idModifStud" id="idModifStud">
        </form>

        <form action="/students">
            <input type="submit" value="Удалить выбранных студентов" class="button4">
        </form>

    </div>

</div>
<a href="/index.jsp" class="button5" >На главную</a>
<a href="https://.." class="button6" >Logout</a>
<div>

    <div class="tableHead">
        <h1>Список студентов</h1>
    </div>

    <div class="table-row">
        <div class="table-cell1">
        </div>
        <div class="table-cell2">Фамилия</div>
        <div class="table-cell3">Имя</div>
        <div class="table-cell4">Группа</div>
        <div class="table-cell5">Дата поступления</div>
    </div>

    <c:forEach items="${students}" var="s">
        <div class="table-row">
            <div class="table-cell1">
                <input type="checkbox" value="${s.id}">
            </div>
            <div class="table-cell2">${s.sername}</div>
            <div class="table-cell3">${s.name}</div>
            <div class="table-cell4">${s.group}</div>
            <div class="table-cell5">${s.date}</div>
        </div>
    </c:forEach>


</div>
</body>
</html>
