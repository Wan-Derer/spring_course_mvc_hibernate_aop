<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Сотрудники</title>
</head>
<body>

<h2>Все сотрудники</h2>

<table>
    <tr>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Отдел</th>
        <th>Зарплата</th>
        <th>Действия</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.surname}</td>
            <td>${emp.name}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Изменить" onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="Удалить"/>
            </td>
        </tr>
    </c:forEach>

</table>

<br>
<input type="button" value="Добавить сотрудника"
       onclick="window.location.href = 'addNewEmployee'"
/>


</body>
</html>
