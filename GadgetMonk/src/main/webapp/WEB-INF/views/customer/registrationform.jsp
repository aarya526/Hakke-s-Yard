
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="<c:url value='/resources/css/registration.css'></c:url>">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Customer Registration</title>
<style>
  .login{
  width:350px;
  height:780px;
  justify-content:center;
  margin-top:50px;
  background-color:white;
  border-radius:5px;
  }
  .loginLogo{
  height:50px;
  margin-bottom:0px;
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
 font-family: Arial, Helvetica, sans-serif;
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
font-size:60px;
color:white;
font-family:ariel,helvetica,sans-serif;
margin-top:50px;
}
h3{
font-size:30px;
color:black;
font-family:helvetica;
}
p{
color:black;
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
.error{
font-style:italic;
color: rgb(166, 31, 38);
}
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
<body class="bg-light" background=" ${pageContext.request.contextPath }/resources/images/Playstation images/wallpaper.jpeg">
<jsp:include page="header.jsp"></jsp:include>
<div class = "container" style = "width:450px; height:auto; ">

 <c:url value = "/save" var = "addUrl"/>
  <form:form action = "${addUrl }" modelAttribute = "customer">
  <h3 style = "color:white; margin-left:30px;"><b>Customer Registration</b></h3>
   <form:hidden path="id"/>
   <form:label path = "firstname">Enter Firstname: </form:label>
   <form:input class = "form-control" type = "text" path="firstname" placeholder = "Enter Firstname" />
   <form:errors style = "margin-left:100px;" class = "error" path = "firstname"/>
   <form:label path = "lastname">Enter Lastname: </form:label>
   <form:input class = "form-control" type = "text" path="lastname" placeholder = "Enter Lastname"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "lastname"/>
   <form:label path = "phonenumber">Enter Phonenumber: </form:label>
   <form:input class = "form-control" type = "text" path="phonenumber" placeholder = "Enter Phonenumber"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "phonenumber"/>   
   <hr>
   <b>Login Credentials</b><br>
   <form:label path="user.email">Enter Email</form:label>
   <form:input class = "form-control" path="user.email" placeholder = "Enter EmailId" type="email"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "user.email"/>
   <form:label path="user.password">Enter password</form:label>
   <form:input class = "form-control" path="user.password" placeholder = "Enter Password" type="password"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "user.password"/>
   <hr>
   <b>Billing Address</b>
   <form:label path="billingaddress.apartmentnumber">Enter Apartment Number: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.apartmentnumber" placeholder = "Enter Apartmentnumber"/>
   <form:errors style = "margin-left:70px;" class = "error" path = "billingaddress.apartmentnumber"/>
   <form:label path="billingaddress.streetname">Enter Streetname: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.streetname" placeholder = "Enter Streetname"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "billingaddress.streetname"/>
   <form:label path="billingaddress.city">Enter City: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.city" placeholder = "Enter City"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "billingaddress.city"/>
   <form:label path="billingaddress.state">Enter State: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.state" placeholder = "Enter State"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "billingaddress.state"/>
   <form:label path="billingaddress.country">Enter Country: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.country" placeholder = "Enter Country"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "billingaddress.country"/>
   <form:label path="billingaddress.zipcode">Enter Zipcode: </form:label>
   <form:input class = "form-control" type = "text" path="billingaddress.zipcode" placeholder = "Enter Zipcode"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "billingaddress.zipcode"/>
   <hr>
   <b>Shipping Address</b>
   <form:label path="shippingaddress.apartmentnumber">Enter Apartment Number: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.apartmentnumber" placeholder = "Enter Apartmentnumber"/>
   <form:errors style = "margin-left:70px;" class = "error" path = "shippingaddress.apartmentnumber"/>
   <form:label path="shippingaddress.streetname">Enter Streetname: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.streetname" placeholder = "Enter Streetname"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "shippingaddress.streetname"/>
   <form:label path="shippingaddress.city">Enter City: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.city" placeholder = "Enter City"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "shippingaddress.city"/>
   <form:label path="shippingaddress.state">Enter State: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.state" placeholder = "Enter State"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "shippingaddress.state"/>
   <form:label path="shippingaddress.country">Enter Country: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.country" placeholder = "Enter Country"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "shippingaddress.city"/>
   <form:label path="shippingaddress.zipcode">Enter Zipcode: </form:label>
   <form:input class = "form-control" type = "text" path="shippingaddress.zipcode" placeholder = "Enter Zipcode"/>
   <form:errors style = "margin-left:100px;" class = "error" path = "shippingaddress.zipcode"/>
   <br>
   <br>
   <form:button type = "submit" class = "btn btn-primary">Register</form:button>
  </form:form>
</div>
</body>
</html>