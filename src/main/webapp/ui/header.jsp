<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <title>Вход и регистрация</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/style.css">
</head>
<body>
<header><h1><a href="${pageContext.request.contextPath}/ui/">NinjaChat</a></h1> <c:if test="${not empty user}"><h2>
    <a href="${pageContext.request.contextPath}/ui/user"> Мастерская бойца</a></h2></c:if></header>
<c:if test="${not empty user}">
    <nav>
        <ul>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/">Home</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/user/message">Отправить сообщение</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/api/message">Полученные</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/api/message?param=out">Отправленные</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/user">Все пользователи</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/logout?check=exit">Выход</a></li>
        </ul>
    </nav>
</c:if></body>
</html>

