<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="header.css">
</head>

<body>
    <div class="navbar-container">
        <div class="layout-button">
            <a href="#Home.jsp" class="logo"><img src="#linklogo" alt="logo.png"></a>
        </div>
        <form action="#UserController" method="post" class="searchbar column-3" name="">
            <input class="searchbar-input" name="" type="text" placeholder="Search" style="width : 200px">
            <button type="submit" onclick="">Search</button>
        </form>
        <div class="layout-button">
            <a class="treding-layout column-1" href="">Trending</a>
            <a class="home-layout column-1" href="">Home</a>
            <a class="profile-layout column-1" href="">Profile</a>
        </div>
        <div class="setting-button">
            <a href="" class="setting-layout column-1">Setting</a>
        </div>
    </div>
</body>

</html>