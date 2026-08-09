



<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CustomerBean cb=(CustomerBean)session.getAttribute("customerBean");
double totalBill=(double)request.getAttribute("totalBill");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Order Successful</title>

<link rel="stylesheet" href="BuyProductSuccess.css">

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

<a href="custLogout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>


<div class="container">

<div class="card">

<div class="success-icon">

<i class="fa-solid fa-circle-check"></i>

</div>

<h1>Order Confirmed!</h1>

<h2>Hello, <span><%=cb.getfName()%></span> 👋</h2>

<p>

Thank you for shopping with us.

Your order has been placed successfully.

</p>

<div class="bill-box">

<div>

<span>Total Amount</span>

<h3>₹ <%=totalBill%></h3>

</div>

<div>

<span>Status</span>

<h3 class="success">Paid</h3>

</div>

</div>

<div class="info">

<div>

<i class="fa-solid fa-box"></i>

<p>Order Confirmed</p>

</div>

<div>

<i class="fa-solid fa-truck-fast"></i>

<p>Fast Delivery</p>

</div>

<div>

<i class="fa-solid fa-shield-check"></i>

<p>Secure Payment</p>

</div>

</div>

<div class="buttons">

<a href="ViewCustProduct" class="shop">

<i class="fa-solid fa-store"></i>

Continue Shopping

</a>

<a href="custLogout" class="logout-btn">

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