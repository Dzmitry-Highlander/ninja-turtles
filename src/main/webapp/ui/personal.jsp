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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/style.css">
</head>
<jsp:include page="header.jsp" />
<main>
    <h2>Добро пожаловать, <c:out value="${user.userName}"/>!</h2>
    <c:if test="${not empty users}">
        <h3>Пользователи в системе</h3>
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
                    <td><a class="button" href="/ui/user/message?to=${u.userName}">Отправить сообщение</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</main>
<jsp:include page="footer.jsp" />
</body>
</html>
