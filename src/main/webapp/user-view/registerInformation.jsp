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
	String fullname = (String) session.getAttribute("fullname");
	fullname = (fullname != null) ? fullname : "";
	String gender = (String) session.getAttribute("gender");
	gender = (gender != null) ? gender : "";
	String location = (String) session.getAttribute("location");
	location = (location != null) ? location : "";
	String dateOfBirth = (String) session.getAttribute("dateOfBirth");
	dateOfBirth = (dateOfBirth != null) ? dateOfBirth : "";
	String error_fullname = (String) session.getAttribute("error_fullname");
	error_fullname = (error_fullname != null) ? error_fullname : "";
	String error_gender = (String) session.getAttribute("error_gender");
	error_gender = (error_gender != null) ? error_gender : "";
	String error_location = (String) session.getAttribute("error_location");
	error_location = (error_location != null) ? error_location : "";
	String error_dateOfBirth = (String) session.getAttribute("error_dateOfBirth");
	error_dateOfBirth = (error_dateOfBirth != null) ? error_dateOfBirth : "";
	%>

<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<form class="form" name="register-form" id="register-form"
			action="<%=path%>/UserController" method="post">
			<div class="label">
				<h1>
					<strong>Information</strong>
				</h1>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Fullname" name="fullname"
					value="<%=fullname%>">
				<p class="error">
					<%=error_fullname%>
				</p>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Gender" name="gender"
					value="<%=gender%>">
				<p class="error">
					<%=error_gender%>
				</p>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Location" name="Location"
					value="<%=location%>">
				<p class="error">
					<%=error_location%>
				</p>
			</div>
			<div class="input-box">
				<label for="dateOfBirth"></label> <input type="text"
					placeholder="Date Of Birth" name="dateOfBirth" class="dateOfBirth"
					id="dateOfBirth" value="<%=dateOfBirth%>" maxlength="10">

				<p class="error">
					<%=error_dateOfBirth%>
				</p>
			</div>
			<div class="submit-button">
				<button type="submit"
					style="width: 30%; height: 40px; font-weight: border: font-size: 30px;">
					<i class="fa-solid fa-check"></i>
				</button>
			</div>
			<input type="hidden" value="registerInformation" class="form"
				name="action">
		</form>
	</div>
	<script>
    flatpickr("#dateOfBirth", {
      dateFormat: "d/m/Y", // day/month/year
      allowInput: true, // Allow manual input
      // Additional options if needed
    });
  </script>
</body>
</html>
