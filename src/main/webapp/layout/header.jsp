<%@page import="model.User"%>
<link rel="stylesheet" type="text/css" href="../style/header.css">
<% 
	User user = (User) session.getAttribute("user");
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ request.getContextPath();
%>
<div class="navbar-container">
	<div class="icon-button">
		<a href="<%= path %>/user-view/home.html" class="icon"><img class="icon-image"
			src="https://i.ibb.co/CQwbd35/logo-mykitchen.jpg"
			alt="logo-mykitchen" height="30px" width="auto"></a>
	</div>
	<form action="#UserController" method="post" class="search-bar" name="">
		<input type="text" placeholder="Search here..." class="input-box" />
		<button class="searc-button">Search</button>
	</form>
	<% if (user!=null){ %>
	<div class="layout-button">
		<a class="treding-layout" href="">Trending</a> <a class="home-layout"
			href="">Home</a> <a class="profile-layout" href="">Profile</a>
	</div>
	<div class="setting-button">
		<a href="#Setting" class="setting-layout">Setting</a>
	</div>
	<% }
	 else{ %>
	 <div class="register-button">
		<a href="#register" class="setting-layout">Setting</a>
	</div>
	<div class="login-button">
		<a href="#login" class="setting-layout">Setting</a>
	</div>
	<% }; %>
	<%-- note --%>
</div>