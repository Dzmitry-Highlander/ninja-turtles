<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Registration</title>
    <style>
        html, body{width:100%; height:100%; margin:0}
        .form-horizontal{
            position:absolute;
            width:250px;
            height:210px;
            left:50%;
            top:50%;
            margin-left:-100px;
            margin-top:-100px;
            border:1px solid
        }
        .form-group{
        position:relative;
        }
        form{padding:14px}
        </style>
</head>

<form class="form-horizontal" action="api/chickchiriker" method="POST">
<fieldset>

<legend>Welcome Aboard Friend!</legend><br>

<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Now you've got some options: </label><br><br>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Check youre messages</button><br><br>
  </div>
</div>

<div class="form-group">
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Send youre messages</button><br><br>
  </div>
</div>

<div class="form-group">
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Logout</button><br><br>
  </div>
</div>

</fieldset>
</form>