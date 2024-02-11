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
	String phoneNumber = (String) session.getAttribute("phoneNumber");
	phoneNumber = (phoneNumber != null) ? phoneNumber : "";
	String error_phoneNumber = (String) session.getAttribute("error_phoneNumber");
	error_phoneNumber = (error_phoneNumber != null) ? error_phoneNumber : "";
	User tempUser = (User)session.getAttribute("tempUser");
	%>

<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1>
					<strong>Phone Number</strong>
				</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Phone number" name="phoneNumber"
					value="<%=phoneNumber%>">
				<p class="error">
					<%=error_phoneNumber%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit"
					style="width: 30%; height: 40px; font-weight: border: font-size: 30px;">
					<i class="fa-solid fa-check"></i>
				</button>
			</div>
			<div class="reference-link">
			<a href="<%= path %>/user-view/registerPhoneNumber.jsp?tempUser=<%= tempUser%>" style="color: black; text-decoration: underline;"> <strong>SKIP</strong></a>
			</div>
			<input type="hidden" value="registerphoneNumber" class="form"
				name="action">
		</form>
	</div>
</body>
</html>
