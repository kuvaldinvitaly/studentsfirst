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
        <form action="/studentProgress">
        <input type="submit" value="Просмотреть успеваемость выбранного студента" class="button1">
        </form>

        <form action="/studentCreating">
            <input type="submit" value="Создать студента" class="button2">
        </form>

        <form action="/studentModifying">
            <input type="submit" value="Модифицировать выбранного студента" class="button3">
        </form>

        <form action="/students">
            <input type="submit" value="Удалить выбранных студентов" class="button4">
        </form>

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
