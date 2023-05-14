<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Registration</title>
</head>

<fieldset>

<legend>Welcome Aboard!</legend><br>

<div>
  <label class="col-md-4 control-label" for="signUp">First time here? do: </label><br>
  <div class="col-md-4">
    <button onclick="window.location.href = 'ui/signUp.jsp';">Sign Up</button>
  </div>
</div>

<div>
  <label class="col-md-4 control-label" for="singIn">If not, do: </label><br>
  <div class="col-md-4">
    <button onclick="window.location.href = 'ui/signIn.jsp';">Sign In</button>
  </div>
</div>

</fieldset>
</form>