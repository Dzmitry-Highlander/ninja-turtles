<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head><title>Registration</title></head>
<body>
<c:if test="${not empty sessionScope.user and not empty sessionScope.user.userName}">
    <h2>Вы уже вошли в систему как ${sessionScope.user.userName}.</h2>
    <jsp:include page="/ui/personal.jsp"/>
</c:if>
<c:if test="${empty sessionScope.user}">
    <fieldset>
        <legend>Welcome Aboard!</legend>
        <br>
        <div><label for="signUp">First time here? do:</label><br> <c:url var="signupUrl" value="/ui/signUp"/>
            <form action="${signupUrl}" method="POST">
                <button type="submit">Sign Up</button>
            </form>
        </div>
        <div><label for="signIn">If not, do:</label><br> <c:url var="signinUrl" value="/ui/signIn"/>
            <form action="${signinUrl}" method="POST">
                <button type="submit">Sign In</button>
            </form>
        </div>
    </fieldset>
</c:if>
</body>
</html>