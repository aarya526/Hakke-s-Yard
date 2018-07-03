<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>GM:Login Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>
  .login{
  width:350px;
  height:auto;
  border-radius:5px;
  justify-content:center;
  margin-top:50px;
  background-color:white;
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
   
   });
   
</script>
</head>
<body class="bg-light" background="resources/images/Playstation images/wallpaper.jpeg">

<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
<a  class="navbar-brand btn btn-info" href="homepage">Gadget Monk</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="collapsibleNavbar" style="position:relative">
<div class="dropdown1">
    <button class="dropbtn1 " href=""><b>Playstation</b></button>
      <i class="fa fa-caret-down" ></i>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <a href="ps4"><img class="ps4" src="resources/images/dropdown images/ps4.png"></img></a>
      <a href="ps4pro"><img class="ps4pro" src="resources/images/dropdown images/ps4pro.png"></img></a>
     <a href="login"><img class="buy" src="resources/images/dropdown images/buy.png"></img></a>
	  
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Playstation VR</b></button>
      <i class="fa fa-caret-down" ></i>
     <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <a href="psvr"><img class="psvr" src="resources/images/Playstation images/psvr.png"></img></a>
      <a href="login"><img class="buy" src="resources/images/dropdown images/buy.png"></img></a>
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" ><b>Xbox One</b></button>
      <i class="fa fa-caret-down" ></i>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <img class="xboxone-X" src="resources/images/dropdown images/xboxoneX.png"></img>
      <a href="login"><img class="buy" src="resources/images/dropdown images/buy.png"></img></a>
	  
	  </div>
      </div>
    </div>
  </div> 
</nav>
<div class="container" style = "width: 450px; height:auto;">
<div class="login">
<div class="loginLogo bg-dark">
<a  class="close btn btn-dark" style = "margin-top:5px;" href="${pageContext.request.contextPath }/home" >&times;</a>
<h4><font  style="margin-top:50px; margin-left:100px; color:white;">Gadget Monk</font></h4>
</div>

<div style="padding:20px; margin-top:20px;" >
<b><font >Access Your Details with just one Login!</font></b>
<form action="<c:url value = '/j_spring_security_check'></c:url>" method="post">
<c:if test="${not empty error }"><div><b style = "color:red;">${error }</b></div></c:if>
<div class="form-group" style="margin-top:50px;">
<input type="text" class="form-control"  placeholder="Enter Username" name="j_username"/>
<input type="password" class="form-control" id="pwd" placeholder="Enter Password" name="j_password"/>

</div>
<input type="submit" name="submit" value="Login!" class=" btn btn-primary" style="width:300px; border-radius:5px; margin-bottom:20px;"/>

<button type="button" onClick="window.location.href='all/register'"class=" btn btn-secondary" style="width:300px; border-radius:5px;"><b>Create New Account</b></button>
<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
</form>
</div>
</div>
</div>
</body>
</html>