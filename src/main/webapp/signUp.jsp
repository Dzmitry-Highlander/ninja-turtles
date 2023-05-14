<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Authorization</title>
</head>

<body>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
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