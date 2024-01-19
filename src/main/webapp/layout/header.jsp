<% String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath();
User user = (User)session.getAttribute("user");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css' />">
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
	<div class="center-button">
		<a class="link-button" href="" style="text-decoration: none; color: white; font-weight: bolder;">Trending</a> <a class="link-button"
			href="" style="text-decoration: none; color: white; font-weight: bolder;">Home</a> <a class="link-button" href="" style="text-decoration: none; color: white; font-weight: bolder;">Profile</a>
	</div>
	<div class="right-button" style="text-decoration: none; color: white; font-weight: bolder;">
		<a href="#Setting" class="link-button" style="text-decoration: none; color: white; font-weight: bolder;">Setting</a>
	</div>
	<% }
	 else{ %>
	  <div class="right-button">
         <a href="<%= path %>/user-view/login.jsp" class="link-button" style="text-decoration: none; color: white; font-weight: bolder;">Login</a>
         <a href="<%= path %>/user-view/register.jsp" class="link-button" style="text-decoration: none; color: white; font-weight: bolder;">Register</a>
      </div>
	<% }; %>
   </div>