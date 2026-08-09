<%@page import="com.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
AdminBean ab=(AdminBean)session.getAttribute("adminBean");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Admin Dashboard</title>

<link rel="stylesheet" href="AdminHome.css">

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

<span>E-Store</span>

</div>

<div class="welcome">

<i class="fa-solid fa-user-circle"></i>

Welcome,
<strong><%=ab.getUfname()%></strong>

</div>

<a href="Logout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>


<div class="container">

<div class="left">

<h1>Administrator Dashboard</h1>

<p>

Manage products, inventory and monitor your store from one place.

</p>

<div class="features">

<div class="feature">

<i class="fa-solid fa-box"></i>

<span>Inventory Management</span>

</div>

<div class="feature">

<i class="fa-solid fa-chart-line"></i>

<span>Sales Reports</span>

</div>

<div class="feature">

<i class="fa-solid fa-users"></i>

<span>Customer Records</span>

</div>

<div class="feature">

<i class="fa-solid fa-shield-halved"></i>

<span>Secure Access</span>

</div>

</div>

</div>


<div class="right">

<a href="AddProduct.html" class="card">

<i class="fa-solid fa-square-plus"></i>

<h2>Add Product</h2>

<p>

Create and manage inventory products.

</p>

</a>


<a href="ViewProduct" class="card">

<i class="fa-solid fa-box-open"></i>

<h2>View Products</h2>

<p>

Update, Delete and Search products.

</p>

</a>

</div>

</div>


<section class="stats">

<div class="stat">

<h2>1000+</h2>

<p>Products</p>

</div>

<div class="stat">

<h2>500+</h2>

<p>Customers</p>

</div>

<div class="stat">

<h2>24/7</h2>

<p>Availability</p>

</div>

<div class="stat">

<h2>100%</h2>

<p>Secure</p>

</div>

</section>


<footer>

© 2026 Inventory Management System

</footer>

</body>

</html>