<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 24.09.2019
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/studentProgressStyle.css">
</head>


<body>

<div class="container" align="center">


    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="https://.." class="button1" >Logout</a>
        <a href="/index.jsp" class="button2" >На главную</a>
        <a href="/students" class="button3" >Назад</a>

    </div>

    <div class="tableHead">
        <h1>Отображена успеваемость для следующего студента: </h1>
    </div>

    <div class="table">
        <div class="table-row">
            <div class="table-cell">Фамилия</div>
            <div class="table-cell">Имя</div>
            <div class="table-cell">Группа</div>
            <div class="table-cell">Дата поступления</div>
        </div>
    </div>
</div>

<div class="boxSite">
    <span>Выбрать семестр</span>
    <select name="semestr">
        <option value="1">Семестр 1</option>
        <option value="2">Семестр 2</option>
        <option value="3">Семестр 3</option>
        <option value="4">Семестр 4</option>
    </select>

    <input type="submit" value="Выбрать">



</div>

</body>
</html>