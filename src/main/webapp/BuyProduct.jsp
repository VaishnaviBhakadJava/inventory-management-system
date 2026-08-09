<%@page import="com.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
ProductBean pb=(ProductBean)request.getAttribute("pbean");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Buy Product</title>

<link rel="stylesheet" href="BuyProduct.css">

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

<a href="View" class="back">

<i class="fa-solid fa-arrow-left"></i>

Back to Products

</a>

</header>


<div class="container">

<div class="card">

<div class="icon">

<i class="fa-solid fa-cart-shopping"></i>

</div>

<h1>Purchase Product</h1>

<p>

Review the product details and enter the quantity you want to purchase.

</p>

<form action="BuyProduct" method="post">

<div class="input-group">

<label>Product Code</label>

<input type="text"
name="pcode"
value="<%=pb.getPcode()%>"
readonly>

</div>

<div class="input-group">

<label>Product Name</label>

<input type="text"
name="pname"
value="<%=pb.getPname()%>"
readonly>

</div>

<div class="input-group">

<label>Company</label>

<input type="text"
name="pcompany"
value="<%=pb.getPcompany()%>"
readonly>

</div>

<div class="two-column">

<div class="input-group">

<label>Price</label>

<input type="text"
name="pprice"
value="<%=pb.getPprice()%>"
readonly>

</div>

<div class="input-group">

<label>Available Stock</label>

<input type="text"
name="pqty"
value="<%=pb.getPqty()%>"
readonly>

</div>

</div>

<div class="input-group">

<label>Required Quantity</label>

<input type="number"
name="reqty"
placeholder="Enter Quantity"
required
min="1">

</div>

<div class="buttons">

<a href="ViewCustProduct" class="cancel">

<i class="fa-solid fa-xmark"></i>

Cancel

</a>

<button type="submit">

<i class="fa-solid fa-bag-shopping"></i>

Buy Now

</button>

</div>

</form>

</div>

</div>

<footer>

© 2026 E-Store Inventory Management System

</footer>

</body>

</html>