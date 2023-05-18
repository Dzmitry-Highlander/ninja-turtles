<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Скажи - друг! И войди.</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/styleSignIn.css">
</head>
<jsp:include page="header.jsp" />
<body>
<div class="container">
    <h1>Скажи - друг! И войди.</h1>
    <form action="${pageContext.request.contextPath}/api/login" method="POST">
        <label for="username">Имя пользователя:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Пароль:</label>
        <input type="password" id="password" name="password" required>
        <button class="back-button"> Войти</button>
    </form>
</div>
<jsp:include page="footer.jsp" />
</body>