<% String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath();
User user = (User)session.getAttribute("user");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css' />">
<%@page import="model.User"%>
<div class="navbar-container">
      <div class="icon-button">
         <a href="%= path %>/user-view/home.html" class="icon"><img class="icon-image"
               src="https://i.ibb.co/CQwbd35/logo-mykitchen.jpg" alt="logo-mykitchen" height="30px" width="auto"></a>
      </div>
      <form action="<%= path %>/UserController" method="post" class="search-bar" name="action">
         <input type="text" placeholder="  Search..." class="input-box" style="height: 45px">
         <button class="search-button"><i class="fa fa-search"></i>
</button>
      </form>
        <% if (user!=null){ %>
	<div class="center-button">
		<a class="link-button" href=""  >Trending</a> <a class="link-button"
			href=""  >Home</a> <a class="link-button" href=""  >Profile</a>
	</div>
	<div class="right-button"  >
		<a href="#Setting" class="link-button"  >Setting</a>
	</div>
	<% }
	 else{ %>
	  <div class="right-button">
         <a href="<%= path %>/user-view/login.jsp" class="link-button" >Login</a>
         <a href="<%= path %>/user-view/register.jsp" class="link-button"  >Register</a>
      </div>
	<% }; %>
   </div>