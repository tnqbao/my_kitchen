<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
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
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.container {
	width: 100%;
	box-sizing: border-box;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	overflow: hidden;
	padding: 20px;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 10px;
}

.container>.login-form {
	overflow: hidden;
	padding: 15px;
	display: flex;
	flex-wrap: wrap;
	background-color: #dedcdc;
	max-width: 60%;/*  */
	max-height: 40%;
	width: 60%;
	height: 40%;
	margin-top: 5%;
	justify-content: center;
	border-color: black;
	border-radius: 8px;
}


.login-form > .login-password , .login-username 
{
	flex-basis: 80%;
	text-align: center;
	margin-bottom: 2%;
	height: 70px;
}
.login-form > .submit-button, .login-label, .forgot-link, .check-box
{
	flex-basis: 80%;
	text-align: center;
	margin-bottom: 2%;
}

input[type="text"], input[type="password"]
{
	width: 80%;
	height: 40px;
	text-indent: 10px;
	font-size: 24px;
}

.login-form > .submit-button{
	width: 66.6%;

}

.error
{
	color: red;
	text-align: left;
	text-indent:60px; 
}

/* .login-form > button
{
	width: 100%;
	height:100%;

}  */

/* .login-form > .forgot-link 
{
	text-align: left; 
	flex-basis: 80%;
}
 */


</style>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="login-form" name="login-form" id="login-form"
			action="<%=path%>/UserController" method="post">
			<div class="login-label">
				<h1>Login</h1>
			</div>
			<div class="login-username">
				<input type="text" placeholder="Username" name="login-username"
					value="<%=username%>">
				<p class="error">
					<%=error_username%>
				</p>
			</div>
			<div class="login-password">
				<input type="password" placeholder="Password" name="login-password"
					value="<%=password%>">
				<p class="error">
					<%=error_password%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit" style="width: 30%; height: 40px">Enter</button>
			</div>
			<div class="check-box">
				Saving password? <input type="checkbox" class="save password"
					name="checkbox">
			</div>
			<div class="forgot-link">
				<a href="<%=path%>/user-view/forgot.jsp" class="forgot-link">Forgot
					password? Click here!</a>
			</div>
			<input type="hidden" value="login" class="login-form" name="action">
		</form>
	</div>
</body>
</html>