<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet"> 
<title>GM:Home Page</title>
<style>
.parallax{
background-image:url("");
background-color:white;
min-height:1500px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:1200px 800px;
margin-bottom:0px;
}
.parallax1{
background-image:url("resources/images/Playstation images/processor.jpeg");
min-height:1500px;
background-attachment:fixed;
background-color:rgb(0, 0, 0);
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-bottom:0px;
}
.parallax2{
background-color:white;
min-height:1200px;
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
<div class="parallax" style="margin-bottom:0px;">
<img  src="resources/images/Playstation images/PSsymbol.jpg" style="width:250px; height:150px;"></img>
<center><h2>Welcome to the future of play</h2></center>
<div class="container">
<center>
<img style="margin-top:50px; margin-bottom:50px;" class="responsive" src="resources/images/Playstation images/ps4-slim-02.png"><img>
</center>
<div style="float:left; margin-left:-120px;">
<img src="resources/images/Playstation images/ps4-silver-03(1).png"class="responsive1" ></img>
</div>
<div style="float:right;">
<h3><font style="font-family:ariel,helvetica,sans-serif;">Vibrant HDR Gaming</font></h3>
<p><font size="4">HDR-enabled PS4 games burst into life with incredible colour<br> 
and clarity on an HDR TV, delivering a more vibrant, realistic<br>
 spectrum of colours</font></p>
 </div>
 <div style="float:right; margin-top:80px; margin-right:-119px;">
 <img src="resources/images/Playstation images/ps4-slim-01(1).png" class="responsive1" ></img>
 </div>
<div style="float:left; margin-top:50px;">
 <h3><font style="font-family:ariel,helvetica,sans-serif;">More Ways to Play</font></h3>
 <p><font size="4">Store your games, apps, screenshots and videos with 500GB<br>
 and 1TB models - slimmer and lighter than the original PS4<br> model and available 
 in Jet Black, Glacier White and now<br>
 stunning Gold and Silver.</font></p>
 </div>
 </div>
</div>
<div class="parallax1">
<img src="resources/images/Playstation images/XboxOneX-1.jpg" style="width:150px; margin-top:20px; margin-left:40px; height:auto;"></img>
<div class="container">
<center>
<h3 style="color:white;">The World's most Powerful Console</h3>
<p style="color:white;">With 40% more power than any other console, experience immersive true 4K gaming.
 Games play better on Xbox One X.</p>
</center>

<div style="float:right; margin-right:450px; margin-top:50px; margin-bottom:0px;">
<img src="resources/images/Playstation images/game.png" style="position:absolute;"></img>
</div>
<div class="smoother-gameplay">
<h1 style="margin-top:0px;"><font style="font-size:35px;">Smoother gameplay</font></h1>
<p style="color:white;">The 8-core Custom AMD CPU is clocked at 2.3GHz <br>to bring enhanced AI, 
real world detail, and smoother interactions to your gaming.</p>
</div>
<div style="margin-top:500px;">
 <div style="float:left; margin-top:200px; margin-bottom:0px;">
 <img src="resources/images/Playstation images/bigger-world.png" style="position:absolute;"></img>
 </div>
 <div class="bigger-world">
<h1 style="margin-top:0px;"><font style="font-size:35px;">Bigger World</font></h1>
<p style="color:white;">12GB GDDR5 of graphic memory add speed and power<br> to game performance
 to enable bigger worlds, further<br> horizons, and quicker load times..</p>
</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>