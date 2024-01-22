<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/inputFrame.css' />">
</head>
<body>
	<%
	String email = (String) session.getAttribute("email");
	email = (email != null) ? email : "";
	String verifyCode = (String) session.getAttribute("verifyCode");
	verifyCode = (verifyCode != null) ? verifyCode : "";
	String error_email = (String) session.getAttribute("error_email");
	error_email = (error_email != null) ? error_email : "";
	String error_verifyCode = (String) session.getAttribute("error_verifyCode");
	error_verifyCode = (error_verifyCode != null) ? error_verifyCode : "";
	%>

<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1>
					<strong>Email</strong>
				</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Email" name="email"
					value="<%=email%>">
				<p class="error">
					<%=error_email%>
				</p>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Verify-code" name="location"
					value="<%=verifyCode%>">
				<p class="error">
					<%=error_verifyCode%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit"
					style="width: 30%; height: 40px; font-weight: border: font-size: 30px;">
					<i class="fa-solid fa-check"></i>
				</button>
			</div>
			<div class="reference-link">
			<a href="<%= path %>/user-view/registerPhoneNumber.jsp?user=<%= user%>" style="color: black; text-decoration: underline;"> SKIP</a>
			</div>
			<input type="hidden" value="registerEmail" class="form"
				name="action">
		</form>
	</div>
</body>
</html>
