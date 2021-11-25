<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Информация о сотруднике</title>
</head>
<body>

<h2>Информация о сотруднике</h2>


<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>

    <table>
        <tr>
            <td>Фамилия</td>
            <td>
                <form:input path="surname"/>
            </td>
        </tr>
        <tr>
            <td>Имя</td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>Отдел</td>
            <td>
                <form:input path="department"/>
            </td>
        </tr>
        <tr>
            <td>Зарплата</td>
            <td>
                <form:input path="salary"/>
            </td>
        </tr>

    </table>

    <br>
    <input type="submit" value="Добавить / Изменить">
</form:form>


</body>
</html>
