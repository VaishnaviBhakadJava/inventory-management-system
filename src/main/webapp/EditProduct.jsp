<%@page import="com.bean.ProductBean"%>
<%@page import="com.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
AdminBean abean=(AdminBean)session.getAttribute("adminBean");
ProductBean pb=(ProductBean)request.getAttribute("pbean");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Update Product</title>

<link rel="stylesheet" href="EditProduct.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>

<header>

<div class="logo">

<i class="fa-solid fa-store"></i>

<h2>E-Store</h2>

</div>

<div class="welcome">

Welcome,
<b><%=abean.getUfname()%></b>

</div>

<a href="Logout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>

<div class="container">

<div class="card">

<div class="icon">

<i class="fa-solid fa-pen-to-square"></i>

</div>

<h1>Update Product</h1>

<p>

Update the product details below.

</p>

<form action="Update" method="post">

<div class="input-box">

<label>Product Price</label>

<input
type="text"
name="pprice"
value="<%=pb.getPprice()%>"
required>

</div>

<div class="input-box">

<label>Product Quantity</label>

<input
type="text"
name="pqty"
value="<%=pb.getPqty()%>"
required>

</div>

<input
type="hidden"
name="pcode"
value="<%=pb.getPcode()%>">

<div class="buttons">

<a href="ViewProduct" class="back">

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

<button type="submit">

<i class="fa-solid fa-floppy-disk"></i>

Update Product

</button>

</div>

</form>

</div>

</div>

</body>

</html>