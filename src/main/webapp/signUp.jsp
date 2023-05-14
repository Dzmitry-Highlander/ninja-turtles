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
            width:200px;
            height:320px;
            left:50%;
            top:50%;
            margin-left:-100px;
            margin-top:-100px;
            border:1px solid
        }
        form{padding:14px}
        </style>
</head>

<form class="form-horizontal" action="api/user" method="POST">
<fieldset>

<legend>Registration</legend>

<div class="form-group">
  <label class="col-md-4 control-label" for="firstName">First Name</label>
  <div class="col-md-4">
  <input id="firstName" name="firstName" type="text" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="lastName">Last Name</label>
  <div class="col-md-4">
  <input id="lastName" name="lastName" type="text" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="username">Username</label>
  <div class="col-md-4">
  <input id="username" name="username" type="text" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
  <input id="password" name="password" type="text" placeholder="" class="form-control input-md" required="">

  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="dateOfBirth">Date of Birth</label>
  <div class="col-md-4">
  <input id="dateOfBirth" name="dateOfBirth" type="text" placeholder="" class="form-control input-md" required="">
  <span class="help-block">Enter your date of birth in XXXX-XX-XX format, for example 1901-01-01</span>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="signUp"></label>
  <div class="col-md-4">
    <button id="signUp" name="signUp" class="btn btn-primary">Sign Up</button>
  </div>
</div>

</fieldset>
</form>