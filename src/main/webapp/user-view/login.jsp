<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../style/login.css">
<title>login</title>
</head>
<body>
 <%@ include file = "../layout/header.jsp"%>
 <div class="container">
  <form class="login-form" name="login-form" id="login-form" action="#userControoler" method="post">
        <div class="login-label"><h1>Login</h1></div>
        <div class="login-username"><input type="text" placeholder="Username"></div>
        <div class="login-password"><input type="password" placeholder="Password"></div>
        <div class="submit-button"><button type="button" onclick="" >Enter</button></div>
       	<div class="check-box"> Saving password? <input type="checkbox" class="save password"></div>	
       	<div class="forgot-link"><a href="">Forgot password? Click here!</a></div>
    </form>
 </div>
</body>
</html>