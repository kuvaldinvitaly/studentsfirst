<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 16.09.2019
  Time: 13:33
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
    <link rel="stylesheet" href="../../resources/css/studentModifyingStyle.css">
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
        <h1>Для модификации введите новые значения и нажмите кнопку "Применить"</h1>
    </div>
</div>
<form action="/studentModifying" method="post">

<div class="boxSite">

    <p><label for="secondName">Фамилия</label>
        <input type="text" id="secondName" name="secondName" placeholder="${student.surname}" required autofocus>
    </p>
</div>


<div class="boxSite2">
    <p><label for="firstName">Имя</label>
        <input type="text" id="firstName" name="firstName" placeholder="${student.name}" required>
    </p>
</div>

<div class="boxSite3">
    <p><label for="firstName">Группа</label>
        <input type="text" id="group" name="group" placeholder="${student.group}" required>
    </p>
</div>

<div class="boxSite4">
    <p><label for="firstName">Дата поступления</label>
        <input type="text" id="receiptDate" name="receiptDate" placeholder="${student.date}" required>
    </p>
</div>

<input type="hidden" name="studentId" value="${student.id}">

<div class="container" align="center">
    <div>
        <button class="buttonApply">Применить</button>
    </div>
</div>

</form>
</body>

</body>
</html>