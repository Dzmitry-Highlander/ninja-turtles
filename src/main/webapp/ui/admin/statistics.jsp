<%--
  Created by IntelliJ IDEA.
  User: vikto
  Date: 15.05.2023
  Time: 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Статистика NinjaChat</title>
    <style>
        table {
            border-collapse: collapse;
            width: 35%;
        }

        th, td {
            text-align: left;
            padding: 8px;
            border: 1px solid black;
        }

        th {
            background-color: #f2f2f2;
            font-weight: normal;
        }
    </style>
</head>
<body>
<h1>Статистика NinjaChat:</h1>
<table>
    <tr>
        <th>Количество активных сессий:</th>
        <td>${activeSessions}</td>
    </tr>
    <tr>
        <th>Количество пользователей:</th>
        <td>${userCount}</td>
    </tr>
    <tr>
        <th>Количество сообщений:</th>
        <td>${messageCount}</td>
    </tr>
</table>
</body>
</html>