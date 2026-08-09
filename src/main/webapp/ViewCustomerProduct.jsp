



<%@page import="java.util.Iterator"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CustomerBean cb=(CustomerBean)session.getAttribute("customerBean");
ArrayList<ProductBean> plist=(ArrayList<ProductBean>)session.getAttribute("plist");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Products</title>

<link rel="stylesheet" href="ViewCustomerProducts.css">

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
<b><%=cb.getfName()%></b>

</div>

<div>

<a href="CustomerLogin.jsp" class="home">

<i class="fa-solid fa-house"></i>

Home

</a>

<a href="custLogout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</div>

</header>


<section class="title">

<h1>Available Products</h1>

<p>

Browse all available products and purchase your favorite items.

</p>

</section>

<div class="products">

<%

if(plist.size()==0){

%>

<div class="empty">

<i class="fa-solid fa-box-open"></i>

<h2>No Products Available</h2>

<p>Please check back later.</p>

</div>

<%

}else{

Iterator<ProductBean> itr=plist.iterator();

while(itr.hasNext()){

ProductBean pb=itr.next();

%>

<div class="card">

<div class="product-icon">

<i class="fa-solid fa-box"></i>

</div>

<h2><%=pb.getPname()%></h2>

<p><strong>Code :</strong> <%=pb.getPcode()%></p>

<p><strong>Company :</strong> <%=pb.getPcompany()%></p>

<p class="price">

₹ <%=pb.getPprice()%>

</p>

<p>

<strong>Stock :</strong>

<%=pb.getPqty()%>

</p>

<a href="buy?pcode=<%=pb.getPcode()%>" class="buy">

<i class="fa-solid fa-cart-shopping"></i>

Buy Now

</a>

</div>

<%

}

}

%>

</div>

<footer>

© 2026 E-Store Inventory Management System

</footer>

</body>

</html>