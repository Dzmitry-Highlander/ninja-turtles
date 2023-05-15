<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Registration</title>
</head>
<body>
<fieldset>
    <legend>Welcome Aboard!</legend>
    <br>
    <div>
        <label for="signUp">First time here? do:</label><br>
        <c:url var="signupUrl" value="/ui/user"/>
        <form action="${signupUrl}" method="POST">
            <button type="submit">Sign Up</button>
        </form>
    </div>
    <div>
        <label for="signIn">If not, do:</label><br>
        <c:url var="signinUrl" value="/ui/login"/>
        <form action="${signinUrl}" method="POST">
            <button type="submit">Sign In</button>
        </form>
    </div>
</fieldset>
</body>
</html>