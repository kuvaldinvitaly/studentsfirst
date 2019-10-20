<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 16.09.2019
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/styleStudentList.css">
</head>
<body>

<div class="container" align="center">

    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="/studentProgress" class="button1">Просмотреть успеваемость выбранных студентов</a>
        <a href="/studentCreating" class="button2">Создать студента</a>
        <a href="/studentModifying" class="button3">Модифицировать выбранного студента</a>
        <a href="#" class="button4">Удалить выбранных студентов</a>
    </div>

</div>
<a href="/index.jsp" class="button5" target="_blank">На главную</a>
<a href="https://.." class="button6" target="_blank">Logout</a>
<div>

    <div class="tableHead">
        <h1>Список студентов</h1>
    </div>
    <div class="table">
        <div class="table-row">
            <div class="table-cell1"> </div>
            <div class="table-cell2">Фамилия</div>
            <div class="table-cell3">Имя</div>
            <div class="table-cell4">Группа</div>
            <div class="table-cell5">Дата поступления</div>
        </div>
    </div>
</div>
</body>
</html>
