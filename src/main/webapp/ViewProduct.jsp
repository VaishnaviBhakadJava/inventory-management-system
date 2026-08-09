<%@page import="com.bean.AdminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.ProductBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
AdminBean ab=(AdminBean)session.getAttribute("adminBean");
ArrayList<ProductBean> plist=(ArrayList<ProductBean>)session.getAttribute("plist");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Products</title>

<link rel="stylesheet" href="ViewProduct.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

</head>

<body>

<header>

<div class="logo">

<i class="fa-solid fa-store"></i>

<h2>E-Store</h2>

</div>

<div class="welcome">

Welcome,
<b><%=ab.getUfname()%></b>

</div>

<a href="Logout" class="logout">

<i class="fa-solid fa-right-from-bracket"></i>

Logout

</a>

</header>


<div class="container">

<div class="top">

<h1>

<i class="fa-solid fa-box-open"></i>

Product Management

</h1>

<div class="buttons">

<a href="AdminHome.jsp" class="home">

<i class="fa-solid fa-house"></i>

Dashboard

</a>

<a href="AddProduct.html" class="add">

<i class="fa-solid fa-plus"></i>

Add Product

</a>

</div>

</div>


<div class="table-box">

<%
if(plist.size()==0){
%>

<h2 class="empty">

No Products Available

</h2>

<%
}
else{
%>

<table>

<thead>

<tr>

<th>Code</th>

<th>Name</th>

<th>Company</th>

<th>Price</th>

<th>Quantity</th>

<th>Edit</th>

<th>Delete</th>

</tr>

</thead>

<tbody>

<%
for(ProductBean pb:plist){
%>

<tr>

<td><%=pb.getPcode()%></td>

<td><%=pb.getPname()%></td>

<td><%=pb.getPcompany()%></td>

<td>₹ <%=pb.getPprice()%></td>

<td><%=pb.getPqty()%></td>

<td>

<a class="edit"

href="edit?pcode=<%=pb.getPcode()%>">

<i class="fa-solid fa-pen"></i>

Edit

</a>

</td>

<td>

<a class="delete"

href="delete?pcode=<%=pb.getPcode()%>">

<i class="fa-solid fa-trash"></i>

Delete

</a>

</td>

</tr>

<%
}
%>

</tbody>

</table>

<%
}
%>

</div>

</div>

</body>

</html>