<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<title>Your Cart</title>
<style>
.parallax{
background-image:url("resources/images/Playstation images/PS4-Console.jpg");
min-height:600px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:100%;
margin-top:0px;
margin-bottom:0px;
}
.parallax1{
background-image:url("");
min-height:500px;
background-attachment:fixed;
background-color:white;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-bottom:0px;
}
.parallax2{
background-color:#f0f0f0;
min-height:1400px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax3{
background-color:white;
min-height:800px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax4{
background-image:url("resources/images/Playstation images/cod.jpg");
background-color:white;
min-height:600px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax5{
background-image:url("");
background-color:white;
min-height:2200px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.navbar1{
  overflow: hidden;
  background-color:blue;
  font-family: Arial;
}
.navbar1 a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown1 {
  float: left;
  overflow: hidden;
}
.dropdown1 .dropbtn1 {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}
.navbar1 a:hover, .dropdown1:hover .dropbtn1 {
  background-color:rgb(0, 118, 201);
}
.dropdown-content1 {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 100%;
 
  left: 0;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content1 .header1 {
  background:rgb(0, 118, 201);
  padding: 16px;
  color: white;
}
.dropdown1:hover .dropdown-content1 {
  display: block;
}
.zoom{
transform:scale(1.08);
}
.ps4{
width:200px; 
height:120px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:130px;
}
.psvr{
width:200px; 
height:120px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:250px;
}
.xboxone-X{
width:210px; 
height:80px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:250px;
}
.ps4pro{
width:200px;
height:120px;
margin-top:20px;
transition:transform 0.5s; 
 margin-left:20px;
}
.buy{
width:200px;
height:120px;
margin-top:20px;
transition:transform 0.5s; 
 margin-left:20px;
}
.h2{
 font-family: Arial, sans-serif;
 }
 .responsive {
    width: 100%;
    height: auto;
}
 .responsive1 {
    width: auto;
    height: auto;
	float:left;
}
.responsive2 {
    width: 100%;
    height: auto;
	float:right;
}
h1{
font-size:50px;
color:rgb(44, 66, 78);
font-family:ariel,helvetica,sans-serif;
}
h3{
font-size:30px;
color:rgb(44, 66, 78);
font-family:helvetica;
}
p{
color:white;
}
.smoother-gameplay{
width:437px;
height:auto;
float:right; 
margin-right:-437px;
border-bottom:5px solid green;
padding:23px;
margin-top:300px;
background-color:black;
}
.bigger-world{
width:442px;
height:auto;
float:left; 
border-bottom:5px solid green;
padding:23px;
margin-top:445px;
background-color:black;
}
.ps4nav{
border-bottom:5px solid green;
}
.footer {
   
   left: 0;
   bottom: 0;
   width: 100%;
   height: 200px;
   background-color: rgb(60, 60, 60);
   color: white;
   text-align: center;
}
 .card-product:after {
    content: "";
    display: table;
    clear: both;
    visibility: hidden; }
  .card-product .price-new, .card-product .price {
    margin-right: 5px; }
  .card-product .price-old {
    color: #999; }
  .card-product .img-wrap {
    border-radius: 3px 3px 0 0;
    overflow: hidden;
    position: relative;
    height: 220px;
    text-align: center; }
    .card-product .img-wrap img {
      max-height: 100%;
      max-width: 100%;
      object-fit: cover; }
      
     .card-product .info-wrap {
    overflow: hidden;
    padding: 15px;
    border-top: 1px solid black; }
  .card-product .action-wrap {
    padding-top: 4px;
    margin-top: 4px; }
  .card-product .bottom-wrap {
    padding: 15px;
    border-top: 1px solid #eee; }
  .card-product .title {
    margin-top: 0; }
</style>
<script>
$(document).ready(function(){
   $(".ps4").mouseenter(function(){
   $(".ps4").addClass("zoom");
   });
   $(".ps4").mouseleave(function(){
   $(".ps4").removeClass("zoom"); 
   });
   $(".ps4pro").mouseenter(function(){
   $(".ps4pro").addClass("zoom");
   });
   $(".ps4pro").mouseleave(function(){
   $(".ps4pro").removeClass("zoom");
   });
   $(".buy").mouseenter(function(){
   $(".buy").addClass("zoom");
   });
   $(".buy").mouseleave(function(){
   $(".buy").removeClass("zoom");
   });
   $(".psvr").mouseenter(function(){
   $(".psvr").addClass("zoom");
   });
   $(".psvr").mouseleave(function(){
   $(".psvr").removeClass("zoom");
   });
   $(".xboxone-X").mouseenter(function(){
   $(".xboxone-X").addClass("zoom");
   });
   $(".xboxone-X").mouseleave(function(){
   $(".xboxone-X").removeClass("zoom");
   });
   
   });
   
</script>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
<c:if test="${!empty(cartItems) }">

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
        <a href="<c:url value="/cart/clearcart"></c:url>" class="btn btn-danger pull-left" >Clear Cart <span class = "glyphicon glyphicon-trash"></span></a>
            <table class="table table-hover" width = "100%">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Category</th>
                        <th class = "text-center">Quantity</th>
                        <th class = "text-center">Price</th>
                        
                        <th> </th>
                    </tr>
                </thead>
             
                <tbody>
                   <c:forEach items = "${cartItems }" var = "cart">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="img img-thumbnail pull-left" > <img style = "width:200px;"class="media-object img-thumbnail img-responsive" src="${pageContext.request.contextPath }/resources/${cart.product.imageUrl}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.product.productname }</a></h4>
                                
                                <h5 class="media-heading"> by <a href="#">${cart.product.company }</a></h5>
                            </div>
                        </div>
                        </td>
                         <td class="col-sm-1 col-md-1 text-center" > ${cart.product.category.categoryname }</td>
                        <td class="col-sm-1 col-md-1" style="text-align: center"> ${cart.quantity }
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs. ${cart.product.price }</strong></td>
                      

                        <td class="col-sm-1 col-md-1">
                        <a href = "<c:url value='/cart/deletecartitem/${cart.itemId }'></c:url>" class="btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span>
                            <c:set var="totalPrice" value="${totalPrice + cart.totalPrice }"></c:set>
                        </a></td>
                    </tr>
                  </c:forEach>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>Rs. ${totalPrice }</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>Free</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h4><strong>Rs. ${totalPrice }</strong></h4></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href = "${pageContext.request.contextPath }/gallery" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></td>
                        <td>
                        <a href = "<c:url value='/cart/shippingaddress'></c:url>" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </a></td>
                    </tr>
                </tbody>
                  
            </table>
        </div>
    </div>
</div>
</c:if>
<c:if test="${ empty(cartItems) }">
<div class = "container">
<div class = "jumbotron">
<div style = "margin-top:150px; margin-left:250px;">
<h1 style = "color:black;">Your Cart is Empty </h1><span><a href = "${pageContext.request.contextPath }/gallery">continue shopping......</a></span>
</div>
</div>
</div>
</c:if>
</body>
</html>

