<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 24.09.2019
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Система управления студентами и их успеваемостью</title>
    <link rel="stylesheet" href="../../resources/css/disciplineCreatingStyle.css">
</head>
<body>

<div class="container" align="center">


    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

    <div>
        <a href="https://.." class="button1" target="_blank">Logout</a>
        <a href="/index.jsp" class="button2" target="_blank">На главную</a>
        <a href="/disciplines" class="button3" target="_blank">Назад</a>
    </div>

    <div class="tableHead">
        <h1>Для того чтобы создать новую дисциплину, заполните все поля и нажмите кнопку "Создать"</h1>
    </div>
</div>

<div class="boxSite">
    <p><label for="title">Название</label>
    <form action="/disciplinesCreating" method="post">
        <input type="text" id="title" name="title2" placeholder="Введите название" required autofocus>
    </p>

</div>

<div class="container" align="center">
    <div>
        <input value="Создать" type="submit" class="buttonCreate">
    </div>
</div>
</form>

</body>
</html>
