<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<%
String username = (String) session.getAttribute("username");
username = (username != null) ? username : "";
String password = (String) session.getAttribute("password");
password = (password != null) ? password : "";
String confirmPassword = (String) session.getAttribute("confirmPassword");
confirmPassword = (confirmPassword != null) ? confirmPassword : "";
String error_username = (String) session.getAttribute("error_username");
error_username = (error_username != null) ? error_username : "";
String error_password = (String) session.getAttribute("error_password");
error_password = (error_password != null) ? error_password : "";
String error_confirmPassword = (String) session.getAttribute("error_confirmPassword");
error_confirmPassword = (error_confirmPassword != null) ? error_confirmPassword : "";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/inputFrame.css' />">
<style>
</style>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1>Register</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Username" name="username"
					value="<%=username%>">
				<p class="error">
					<%=error_username%>
				</p>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password"
					name="password" value="<%=password%>">
				<p class="error">
					<%=error_password%>
				</p>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Confirm password"
					name="confirmPassword" value="<%=confirmPassword%>">
				<p class="error">
					<%=error_confirmPassword%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit" style="width: 30%; height: 40px; font-weight: border: font-size: 30px; "><strong>Register</strong></button>
			</div>
			<div class="reference-link">
				<a href="<%=path%>/user-view/login.jsp" class="reference-link" >Already have account? Click here!</a>
			</div>
			<input type="hidden" value="register" class="form" name="action">
		</form>
	</div> 
</body>
</html>