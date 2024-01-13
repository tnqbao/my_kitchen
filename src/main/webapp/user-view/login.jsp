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
<%
User user = (User) session.getAttribute("user");
String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
<body>
 <%@ include file = "../layout/header.jsp"%>
 <div class="container">
  <form class="login-form" name="login-form" id="login-form" action="<%= path %>userController" method="post">
        <div class="login-label"><h1>Login</h1></div>
        <div class="login-username"><input type="text" placeholder="Username" name="login-username"></div>
        <div class="login-password"><input type="password" placeholder="Password" name="login-password"></div>
        <div class="submit-button"><button type="button" onclick="" style="width: 30%; height: 40px">Enter</button></div>
       	<div class="check-box"> Saving password? <input type="checkbox" class="save password" name="checkbox"></div>	
       	<div class="forgot-link"><a href="<%= path %>/user-view/forgot.jsp" class="forgot-link">Forgot password? Click here!</a></div>
       	<input type="hidden" value="login" class="login-form" name="action">
    </form>
 </div>
</body>
</html>