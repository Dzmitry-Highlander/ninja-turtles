<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>
    <meta charset="UTF-8">
    <title>Вход и регистрация</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/style.css">
</head>
<body style="position: relative;">
<header>
    <h1><a href="${pageContext.request.contextPath}/ui/">NinjaChat</a></h1>
    <c:if test="${not empty user}">
        <h2><a href="${pageContext.request.contextPath}/ui/user">Мастерская бойца</a></h2>
    </c:if>
    <c:if test="${not empty user and user.isAdmin()}">
        <div style="position: absolute; top: 16px; left: 83%; transform: translateX(-50%); display: flex; align-items: center;">
            <a href="${pageContext.request.contextPath}/api/admin/statistics" class="button" style="margin-right: 5px;">Статистика</a>
            <a href="#" class="icon"><img src="${pageContext.request.contextPath}/ui/images/key.png" alt="Key"></a>
        </div>
    </c:if>
</header>
<c:if test="${not empty user}">
    <nav>
        <ul>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/">Home</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/user/message">Отправить сообщение</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/api/message">Полученные</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/api/message?param=out">Отправленные</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/user">Все пользователи</a></li>
            <li><a class="button" href="${pageContext.request.contextPath}/ui/user/logout?check=exit">Выход</a></li>
        </ul>
    </nav>
</c:if>
</body>