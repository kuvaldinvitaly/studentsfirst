<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 24.09.2019
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/disciplineModifyingStyle.css">
</head>
<body>

<div class="container" align="center">


    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="https://.." class="button1" >Logout</a>
        <a href="/index.jsp" class="button2" >На главную</a>
        <a href="/disciplines" class="button3" >Назад</a>
    </div>



    <div class="tableHead">
        <h1>Для того чтобы модифицировать дисциплину, введите новое значение поля и нажмите кнопку "Применить"</h1>
    </div>

</div>

<form action="/disciplinesModifying" method="post">

<div class="boxSite">

    <p><label for="title">Название</label>
        <input type="text" id="title" name="title" placeholder="${discipline.discipline}" required autofocus>

        <input type="hidden" name="discId" value="${discipline.id}">

    </p>
</div>

<div class="container" align="center">
    <div>
        <button class="buttonApply">Применить</button>
    </div>
</div>

</form>


</body>
</html>