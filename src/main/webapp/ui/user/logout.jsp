<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Выход</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/style.css">
</head>
<jsp:include page="../header.jsp" />
<main>
    <h2>Выход</h2>
    <p>Вы уверены, что хотите выйти из системы?</p>
    <form id="logout-form" method="GET" action="${pageContext.request.contextPath}/ui/user/logout">
        <input type="hidden" name="_csrf" value="${pageContext.request.getAttribute("_csrf")}"/>
        <button class="top-button" type="submit">Да, выйти</button>
        <button class="top-button" type="button" onclick="history.back();">Нет, остаться</button>
    </form>
</main>
<jsp:include page="../footer.jsp" />
</body>
</html>