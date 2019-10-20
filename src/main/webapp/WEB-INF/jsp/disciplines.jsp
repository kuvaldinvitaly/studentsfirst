<%--
  Created by IntelliJ IDEA.
  User: zimny
  Date: 15.09.2019
  Time: 15:36
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
    <link rel="stylesheet" href="../../resources/css/disciplinesListStyle.css">
</head>
<body>

<div class="container" align="center">

    <div class="cards-item">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>

</div>
<a href="/index.jsp" class="buttonToMain" target="_blank">На главную</a>
<a href="https://.." class="buttonLogout" target="_blank">Logout</a>
<div>

    <div class="tableHead">
        <h1>Список дисциплин</h1>
    </div>

    <div class="table">
        <div class="table-row">
            <div class="table-cell">
            </div>
            <div class="table-cell">Название дисциплин</div>
        </div>

        <c:forEach items="${disciplines}" var="d">

            <div class="table-row">
                <div class="table-cell">
                    <input type="checkbox">
                </div>
                <div class="table-cell">${d.discipline}</div>
            </div>
        </c:forEach>
    </div>

    <div>

        <form action="/disciplinesCreating" method="get">
            <input type="submit" value="Создать дисциплину" class="buttonCreateDisciplines">
        </form>

        <form action="/disciplinesModifying" method="get">
            <input type="submit" value="Модифицировать выбранную
            дисциплину..." class="buttonModifySelectedDiscipline">
        </form>

        <form action="#" method="get">
            <input type="submit" value="Удалить выбранную дисциплину..." class="buttonDeleteSelectedDiscipline">
        </form>


    </div>
</div>

</body>
</html>
