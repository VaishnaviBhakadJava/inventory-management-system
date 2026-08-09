<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String msg=(String)request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Operation Status</title>

<link rel="stylesheet" href="UpdateProduct.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>
<div class="circle c3"></div>

<header>

<div class="logo">

<i class="fa-solid fa-store"></i>

<h2>E-Store</h2>

</div>

<a href="Logout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>

<div class="container">

<div class="card">

<div class="icon">

<i class="fa-solid fa-circle-check"></i>

</div>

<h1>Operation Completed</h1>

<p class="message">

<%=msg%>

</p>

<div class="buttons">

<a href="AddProduct.html" class="add">

<i class="fa-solid fa-square-plus"></i>

Add Product

</a>

<a href="ViewProduct" class="view">

<i class="fa-solid fa-box-open"></i>

View Products

</a>

<a href="AdminHome.jsp" class="home">

<i class="fa-solid fa-house"></i>

Dashboard

</a>

</div>

</div>

</div>

<footer>

© 2026 Inventory Management System

</footer>

</body>
</html>