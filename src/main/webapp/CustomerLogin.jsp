



<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CustomerBean cb=(CustomerBean)session.getAttribute("customerBean");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Dashboard</title>

<link rel="stylesheet" href="CustomerLoginJsp.css">

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

<b><%=cb.getfName()%></b>

</div>

<a href="custLogout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>


<section class="hero">

<div class="left">

<h1>

Welcome Back,
<span><%=cb.getfName()%></span> 👋

</h1>

<p>

Discover quality products, explore exciting offers, and enjoy a seamless shopping experience with E-Store.

</p>

<div class="features">

<div class="feature">

<i class="fa-solid fa-cart-shopping"></i>

<h3>Easy Shopping</h3>

<p>Browse products anytime.</p>

</div>

<div class="feature">

<i class="fa-solid fa-truck-fast"></i>

<h3>Fast Delivery</h3>

<p>Quick and secure delivery.</p>

</div>

<div class="feature">

<i class="fa-solid fa-tags"></i>

<h3>Best Offers</h3>

<p>Special discounts every day.</p>

</div>

<div class="feature">

<i class="fa-solid fa-shield-heart"></i>

<h3>Trusted Store</h3>

<p>Safe and reliable shopping.</p>

</div>

</div>

</div>


<div class="right">

<div class="dashboard-card">

<div class="icon">

<i class="fa-solid fa-bag-shopping"></i>

</div>

<h2>Start Shopping</h2>

<p>

Browse all available products and add them to your cart.

</p>

<a href="ViewCustProduct" class="shop-btn">

<i class="fa-solid fa-eye"></i>

View Products

</a>

</div>

</div>

</section>

<footer>

<p>© 2026 E-Store Inventory Management System</p>

</footer>

</body>

</html>