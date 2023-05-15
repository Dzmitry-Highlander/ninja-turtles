<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Sign In</title></head>
<body><h1>Sign In</h1>
<form action="${pageContext.request.contextPath}/api/login" method="POST"><p><label for="username">Username:</label>
    <input type="text" id="username" name="username" required></p>
    <p><label for="password">Password:</label> <input type="password" id="password" name="password" required></p>
    <p>
        <button type="submit">Sign In</button>
    </p>
</form>
</body>
</html>
