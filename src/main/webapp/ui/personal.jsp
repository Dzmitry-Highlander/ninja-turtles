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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ui/css/style.css"">
    <style>
        body {
            background-color: #f8f8f8;
            max-width: 960px;
            margin: 0 auto;
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
            color: #333;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 16px;
        }

        h1, h2, h3, h4, h5, h6 {
            margin-top: 0;
        }

        nav {
            background-color: #333;
            color: #fff;
            padding: 8px;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav li {
            display: inline-block;
            margin-right: 16px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
        }

        .button {
            display: inline-block;
            background-color: #333;
            color: #fff;
            padding: 8px 16px;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #444;
        }

        table {
            margin: 16px auto;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            padding: 8px;
            border: 1px solid #ccc;
        }

        .pagination, footer {
            max-width: 960px;
            margin: 16px auto;
            text-align: center;
        }

        .pagination a, .pagination span {
            display: inline-block;
            padding: 8px 16px;
            margin: 0 4px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            text-decoration: none;
            color: #333;
        }

        .pagination a:hover {
            background-color: #f8f8f8;
        }

        .pagination .active {
            background-color: #333;
            color: #fff;
            border-color: #333;
        }

        footer {
            padding: 16px;
            background-color: #f8f8f8;
            border-top: 1px solid #ccc;
        }
    </style>
</head>
<body>
<header>
    <h1>Мастерская бойца</h1>
</header>
<nav>
    <ul>
        <li><a class="button" href="/ui/user/message?to=${user.userName}">Отправить сообщение</a></li>
        <li><a class="button" href="/ui/user/messages">Просмотреть все свои сообщения</a></li>
        <li><a class="button" href="/ui/logout">Выход</a></li>
    </ul>
</nav>
<main>
    <h2>Добро пожаловать, <c:out value="${user.userName}"/>!</h2>
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
</main>
<footer>
    &copy; 2023 ninja-turtles, Inc.
</footer>
</body>
</html>
