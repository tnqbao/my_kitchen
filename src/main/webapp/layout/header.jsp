<% String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath();
User user = (User)session.getAttribute("user");
%>
<style>
.navbar-container {
	box-sizing: border-box;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	overflow: hidden;
	background-color: #555555;
	padding: 20px;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 10px;
	height: 90px;
}

.navbar-container>div {
	height: 100%;
}

.navbar-container>.icon-button {
	flex-basis: 8.33%;
	margin-right: 30px;
	text-align: center;
}

.icon-image {
	height: 50px;
	border-radius: 30px;
}

.navbar-container>.search-bar {
	position: relative;
	flex: 0 4 calc(33.33% - 20px);
	margin-right: 10px;
	display: flex;
	flex-wrap: nowrap;
	align-items: center;
	font-size: 20px;
	border-radius: 20px;
	overflow: hidden;
}

.navbar-container>.search-bar {
	position: relative;
	flex: 0 4 calc(33.33% - 20px);
	margin-right: 10px;
	display: flex;
	flex-wrap: nowrap;
	background-color: #ffffff;
	align-items: center;
	font-size: 20px;
	border-radius: 35px;
	overflow: hidden;
	outline: none;
}

.search-bar>.input-box {
	flex-basis: 65%;
	height: 100%;
	min-height:50px;
	font-size: medium;
	flex: 1;
	border: none;
	padding-right: 40px;
	text-indent: 10px;
}

.search-bar>.search-button {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	flex-basis: 35%;
	height: 100%;
	border: none;
	background-color: #ffffff;
	color: #000000;
	cursor: pointer;
}

.navbar-container>.right-button {
	margin-left: auto;
	flex-basis: 8.33%;
	align-items: center;
	display: flex;
	gap: 50px;
	flex-wrap: nowrap;
	align-items: center;
	color: white;
}

.navbar-container>.center-button {
	flex: 0 0 calc(33.33% - 20px);
	margin-right: 20px;
	display: flex;
	gap: 50px;
	flex-wrap: nowrap;
	align-items: center;
}
</style>
<%@page import="model.User"%>
<div class="navbar-container">
      <div class="icon-button">
         <a href="%= path %>/user-view/home.html" class="icon"><img class="icon-image"
               src="https://i.ibb.co/CQwbd35/logo-mykitchen.jpg" alt="logo-mykitchen" height="30px" width="auto"></a>
      </div>
      <form action="<%= path %>/UserController" method="post" class="search-bar" name="action">
         <input type="text" placeholder="  Search..." class="input-box" style="height: 45px">
         <button class="search-button">Search</button>
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
	  <div class="right-button">
         <a href="#register" class="setting-layout">Login</a>
         <a href="#login" class="setting-layout">Register</a>
      </div>
	<% }; %>
   </div>