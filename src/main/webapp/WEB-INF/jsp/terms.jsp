<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 25.09.2019
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/termListStyle.css">
</head>


<body>
<div class="container" align="center">


    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="https://.." class="button1" >Logout</a>
        <a href="/index.jsp" class="button2" >На главную</a>

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

    <div class="boxSite2">
        Длительность семестра: 24 недели
    </div>

    <div class="tableHead">
        Список дисциплин семестра
    </div>

    <div>
       <form action="/termCreating" >
           <input type="submit" value="Создать семестр..." class="buttonCreateSemester">
       </form>

        <form action="/termModifying" >
            <input type="submit" value="Модифицировать текущий семестр..." class="buttonModifySelectedSemester">
        </form>

        <form action="/terms" >
            <input type="submit" value="Удалить текущий семестр" class="buttonDeleteSelectedSemester">
        </form>

    </div>


</div>

</body>
</html>