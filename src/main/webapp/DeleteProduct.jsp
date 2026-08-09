<%@page import="com.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
AdminBean ab=(AdminBean)session.getAttribute("adminBean");
String data=(String)request.getAttribute("data");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Operation Status</title>

<link rel="stylesheet" href="DeleteProduct.css">

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

<div class="welcome">

<i class="fa-solid fa-user"></i>

Welcome,
<b><%=ab.getUfname()%></b>

</div>

<a href="Logout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>


<div class="container">

<div class="card">

<div class="icon">

<i class="fa-solid fa-circle-info"></i>

</div>

<h1>Operation Status</h1>

<p class="message">

<%=data%>

</p>

<div class="actions">

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

</div>

</div>

</div>

<footer>

© 2026 Inventory Management System

</footer>

</body>

</html>