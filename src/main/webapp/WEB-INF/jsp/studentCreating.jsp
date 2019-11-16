<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 16.09.2019
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/studentCreatingStyle.css">
</head>
<body>

<div class="container" align="center">


    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="https://.." class="button1" target="_blank">Logout</a>
        <a href="/index.jsp" class="button2" target="_blank">На главную</a>
        <a href="/students" class="button3" target="_blank">Назад</a>

    </div>

    <div class="tableHead">
        <h1>Для создания студента заполните все поля и нажмите кнопку "Создать"</h1>
    </div>


</div>

<div class="boxSite">

    <p><label for="secondName">Фамилия</label>
        <input type="text" id="secondName" name="secondName" placeholder="Введите фамилию" required autofocus>
    </p>
</div>


<div class="boxSite2">
    <p><label for="firstName">Имя</label>
        <input type="text" id="firstName" name="firstName" placeholder="Введите имя" required>
    </p>
</div>

<div class="boxSite3">
    <p><label for="firstName">Группа</label>
        <input type="text" id="group" name="group" placeholder="Введите группу" required>
    </p>
</div>

<div class="boxSite4">
    <p><label for="firstName">Дата поступления</label>
        <input type="text" id="receiptDate" name="receiptDate" placeholder="Введите дату поступления" required>
    </p>
</div>

<div class="container" align="center">
    <div>
        <input type="submit" value="Создать" class="buttonCreate">
    </div>
</div>

</body>
</html>