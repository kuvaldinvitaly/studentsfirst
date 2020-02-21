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
    <link rel="stylesheet" href="../../resources/lib/jquery-ui-1.12.1/jquery-ui.css">
    <link rel="stylesheet" href="../../resources/css/studentCreatingStyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="resources/lib/jquery-ui-1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
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
        <h1>Для создания студента заполните все поля и нажмите кнопку "Создать"</h1>
    </div>


</div>

<div class="boxSite">

    <p><label for="sername">Фамилия</label>
    <form action="/studentCreating" method="post">
        <input type="text" id="sername" name="sername" placeholder="Введите фамилию" required autofocus>
    </p>
</div>


<div class="boxSite2">
    <p><label for="name">Имя</label>
        <input type="text" id="name" name="name" placeholder="Введите имя" required>
    </p>
</div>

<div class="boxSite3">
    <p><label for="group">Группа</label>
        <input type="text" id="group" name="group" placeholder="Введите группу" required>
    </p>
</div>

<div class="boxSite4">
    <p><label for="datepicker">Дата поступления</label>
        <input type="text" id="datepicker" name="date" placeholder="Введите дату поступления" required>
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