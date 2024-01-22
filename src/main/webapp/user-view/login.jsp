<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<%
String username = (String) session.getAttribute("username");
username = (username != null) ? username : "";
String password = (String) session.getAttribute("password");
password = (password != null) ? password : "";
String error_username = (String) session.getAttribute("error_username");
error_username = (error_username != null) ? error_username : "";
String error_password = (String) session.getAttribute("error_password");
error_password = (error_password != null) ? error_password : "";
%>
<style>
.forgot-link , .check-box
{
	flex-basis: 80%;
	text-align: center;
	margin-bottom: 2%;
}
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/inputFrame.css' />">
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="login-form" id="login-form"
			action="<%=path%>/UserController" method="post">
			<div class="label" style="font-weight: bolder;">
				<h1>Login</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Username" name="username"
					value="<%=username%>">
				<p class="error">
					<%=error_username%>
				</p>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="password"
					value="<%=password%>">
				<p class="error">
					<%=error_password%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit" style="width: 30%; height: 40px; font-weight: border: font-size: 30px;">Submit</button>
			</div>
			<div class="check-box">
				Saving password? <input type="checkbox" class="save password"
					name="checkbox">
			</div>
			<div class="reference-link">
				<a href="<%=path%>/user-view/forgot.jsp" class="reference-link" style="color: blue; " >Forgot
					password? Click here!</a>
			</div>
			<input type="hidden" value="login" class="login-form" name="action">
		</form>
	</div>
</body>
</html>