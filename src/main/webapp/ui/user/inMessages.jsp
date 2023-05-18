<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Сообщения пользователя</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../header.jsp" />--%>
<%--<main>--%>
<%--    <div class="container">--%>
<%--        <h1>Сообщения пользователя</h1>--%>
<%--        <form method="get" action="${pageContext.request.contextPath}/api/message">--%>
<%--            <input type="submit" value="Обновить"/>--%>
<%--        </form>--%>
<%--        <c:if test="${not empty userMessages}">--%>
<%--        <c:forEach items="${userMessages}" var="message">--%>
<%--            <div class="message">--%>
<%--                <p><b>От кого:</b> ${message.from.userName}</p>--%>
<%--                <p><b>Дата:</b> ${message.dateTime != null ? message.dateTime.format(formatter) : ''}</p>--%>
<%--                <p><b>Текст:</b> ${message.text}</p>--%>
<%--                <form method="post" action="${pageContext.request.contextPath}/ui/user/message">--%>
<%--                    <input type="hidden" name="to" value="${message.from.userName}"/>--%>
<%--                    <input type="submit" value="Ответить"/>--%>
<%--                </form>--%>
<%--                <form method="post" action="${pageContext.request.contextPath}/api/message/${message.id}">--%>
<%--                    <input type="hidden" name="_method" value="DELETE"/>--%>
<%--                    <input type="submit" value="Удалить"/>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--</main>--%>
<%--<jsp:include page="../footer.jsp" />--%>
<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Входящие сообщения</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ui/css/messages.css">
</head>
<body>
<jsp:include page="../header.jsp"/>
<a href="${pageContext.request.contextPath}/ui/user" class="back-button">Назад</a>
<main class="main">
    <div class="container"><h1 class="title">Входящие сообщения</h1>
        <div class="actions center"><a href="${pageContext.request.contextPath}/api/message" class="button">⟳
            Обновить</a></div>
        <c:if test="${not empty userMessages}"> <c:forEach items="${userMessages}" var="message">
            <div class="message">
                <div class="message__header">
                    <div class="message__recipient">
                        <div class="message__recipient-box">
                            <b>От:</b>
                        </div>
                        <p class="message__recipient-text">${message.from.userName}</p>
                    </div>
                    <p class="message__date">
                        <b></b> ${message.dateTime != null ? message.dateTime.format(formatter) : ''}</p>
                </div>
                <p class="message__text"><b></b> ${message.text}</p>
                <div class="message__actions">
                    <div class="message__form">
                        <form method="post" action="${pageContext.request.contextPath}/ui/user/message" class="form">
                            <a class="button_as"
                               href="${pageContext.request.contextPath}/ui/user/message?to=${message.from.userName}">
                                Ответить
                            </a>
                        </form>

                        <form method="POST"
                              action="${pageContext.request.contextPath}/api/message/del/${message.id}"
                              class="form"><input type="hidden" name="_method" value="DELETE"/> <input type="hidden" name="messageId" value="${message.id}"/>
                            <button type="submit" class="button_sa">Удалить</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach> </c:if></div>
</main>
<jsp:include page="../footer.jsp"/>
</body>
</html>