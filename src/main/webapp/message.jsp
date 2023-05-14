<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Send Message</title>
</head>
<body>
    <h1>Send Message</h1>
    <form action="/api/message" method="post">
        <label for="to">To:</label>
        <input type="text" id="to" name="to"><br><br>
        <label for="text">Text:</label>
        <textarea id="text" name="text"></textarea><br><br>
        <input type="submit" value="Send">
    </form>
</body>
</html>