<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Authorization</title>
    <style>
        html, body{width:100%; height:100%; margin:0}
        .form-horizontal{
            position:absolute;
            width:200px;
            height:150px;
            left:50%;
            top:50%;
            margin-left:-100px;
            margin-top:-100px;
            border:1px solid
        }
        form{padding:14px}
        </style>
</head>

<body>
<form class="form-horizontal">
<fieldset>

<legend>Authorization</legend>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Username</label>
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
    <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="login"></label>
  <div class="col-md-4">
    <button id="login" name="login" class="btn btn-primary">Login</button>
  </div>
</div>
</fieldset>
</form>
</body>
</html>