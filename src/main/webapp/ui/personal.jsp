<%--
  Created by IntelliJ IDEA.
  User: vikto
  Date: 16.05.2023
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет</title>
</head>
<body>
<h1>Личный кабинет</h1>
<c:if test="${not empty successMessage}">
    <p>${successMessage}</p>
</c:if>
<p>Добро пожаловать, <c:out value="${user.userName}"/>!</p>
<nav>
    <ul>
        <li><a href="/ui/user/message?to=${user.userName}">Отправить сообщение</a></li>
        <li><a href="/ui/user/messages">Просмотреть все свои сообщения</a></li>
        <li><a href="/ui/logout">Выход</a></li>
    </ul>
</nav>
<h2>Пользователи в системе</h2>
<table>
    <thead>
    <tr>
        <th>Имя пользователя</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="u">
        <tr>
            <td><c:out value="${u.userName}"/></td>
            <td><a href="/ui/user/message?to=${u.userName}">Отправить сообщение</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
