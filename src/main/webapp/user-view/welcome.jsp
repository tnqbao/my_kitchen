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
	User tempUser = (User)session.getAttribute("tempUser");
	%>

<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1 style="font-size: 100px">
					<strong>Welcome</strong>
				</h1>
			</div>
			<div class="submit-button">
				<button type="submit"
					style="width: 30%; height: 40px; font-weight: border: font-size: 30px;">
					<i class="fa-solid fa-check"></i>
				</button>
			</div>
			<input type="hidden" value="welcome" class="form"
				name="action">
		</form>
	</div>
</body>
</html>
