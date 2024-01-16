<%@page import="model.User"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/header.css">
<div class="navbar-container">
      <div class="icon-button">
         <a href="%= path %>/user-view/home.html" class="icon"><img class="icon-image"
               src="https://i.ibb.co/CQwbd35/logo-mykitchen.jpg" alt="logo-mykitchen" height="30px" width="auto"></a>
      </div>
      <form action="#UserController" method="post" class="search-bar" name="">
         <input type="text" placeholder="  Search..." class="input-box" style="height: 45px">
         <button class="search-button">Search</button>
      </form>
      <div class="right-button">
         <a href="#register" class="setting-layout">Login</a>
         <a href="#login" class="setting-layout">Register</a>
      </div>
   </div>