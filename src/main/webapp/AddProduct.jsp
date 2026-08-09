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

<link rel="stylesheet" href="AddProductSuccess.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>
<div class="circle c3"></div>

<div class="container">

<div class="card">

<div class="success-icon">

<i class="fa-solid fa-circle-check"></i>

</div>

<h1>Operation Successful!</h1>

<p class="message">

<%=msg%>

</p>

<div class="buttons">

<a href="AddProduct.html" class="btn add">

<i class="fa-solid fa-square-plus"></i>

Add Product

</a>

<a href="ViewProduct" class="btn view">

<i class="fa-solid fa-box-open"></i>

View Products

</a>

<a href="AdminHome.jsp" class="btn home">

<i class="fa-solid fa-house"></i>

Dashboard

</a>

<a href="Logout" class="btn logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</div>

</div>

</div>

<footer>

© 2026 E-Store Inventory Management System

</footer>

</body>
</html>