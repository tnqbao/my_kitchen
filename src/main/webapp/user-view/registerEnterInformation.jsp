<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add information</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/inputFrame.css' />">
</head>
<body>
<%
String fullname = (String) session.getAttribute("fullname");
fullname = (fullname != null) ? fullname : "";
String gender = (String) session.getAttribute("gender");
gender = (gender != null) ? gender : "";
String fullname = (String) session.getAttribute("fullname");
fullname = (fullname != null) ? fullname : "";
String location = (String) session.getAttribute("location");
location = (location != null) ? location : "";
String error_location = (String) session.getAttribute("error_location");
error_location = (error_location != null) ? error_location : "";
String error_fullname = (String) session.getAttribute("error_fullname");
error_fullname = (error_fullname != null) ? error_fullname : "";
%>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1>Adding Information</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Fullname" name="fullname"
					value="<%=fullname%>">
				<p class="error">
					<%=error_fullname%>
				</p>
			</div>
				<div class="input-box">
				<input type="text" placeholder="Gender" name="location"
					value="<%= gender%>">
				<p class="error">
					<%=error_gender%>
				</p>
			</div>
				<div class="input-box">
				<input type="text" placeholder="Location" name="gender"
					value="<%=fullname%>">
				<p class="error">
					<%=error_fullname%>
				</p>
			</div>
				<div class="input-box">
				<input type="text" placeholder="Date of birth" name="dateOfBirth"
					value="<%=fullname%>">
				<p class="error">
					<%=error_fullname%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit" style="width: 30%; height: 40px; font-weight: border: font-size: 30px; ">Submit</button>
			</div>
			<input type="hidden" value="registerEnterInformation" class="form" name="action">
		</form>
	</div>
</body>
</html>
