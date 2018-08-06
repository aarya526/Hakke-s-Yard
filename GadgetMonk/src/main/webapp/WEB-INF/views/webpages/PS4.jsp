<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>PS4</title>
 <style>
.parallax{
background-image:url("resources/images/Playstation images/PS4-Console.jpg");
min-height:600px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:100%;
margin-top:-22px;
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
<div class="parallax">
<center>
<img style="margin-top:150px; margin-left:400px;" src="resources/images/Playstation images/ps4-badge.png"></img>
<h1 style="margin-top:40px; color:white;" class="display-4">Playstation 4</h1>
<p><font style="margin-top:50px;" size="5">Experience the future of Play with PS4 and PS4 Pro</font></p>
<a style="border-radius:0px; margin-top:50px;" class="btn btn-primary" href="ps4pro">PS4 Pro</a>
</center>
</div>
<div class="parallax1" style="margin-bottom:0px;">
<div style="margin-top:60px;"> 
<center>
<h1>Welcome to the future of play</h1>
</center>
</div>
<div class="container" style="margin-top:50px;">
<div class="row">
<div class="col-sm-6">
 <div class="card" style="width:300px; float:right;">
    <img class="card-img-top img-responsive img-fluid" src="resources/images/dropdown images/ps4.png" alt="Card image" style="width:100%">
    <div class="card-body">
	<center>
      <h4 class="card-title">Playstation 4</h4>
      <p style="color:black"class="card-text">The World's best selling console, with 500GB or 1TB storage and stunning HDR visuals</p>
      <a href="gallery" style="border-radius:0px; background-color:rgb(255, 165, 0); color:white;" class="btn">Buy Now</a>
      </center>
	</div>
  </div>
 </div>
 <div class="col-sm-6">
<div class="card" style="width:300px; float:left;">
     <img class="card-img-top img-responsive img-fluid" src="resources/images/dropdown images/ps4pro.png" alt="Card image" style="width:100%">
     <div class="card-body">
	  <center>
      <h4 class="card-title">PS4 Pro</h4>
      <p style="color:black"class="card-text">4K Gaming and Entertainment, with vibrant HDR.Meet the super charged PS4 Pro</p>
      <a href="ps4pro" style="border-radius:0px;" class="btn btn-primary">Discover PS4 Pro</a>
      </center>
	</div>
  </div>
  </div>
  </div>
  </div>
  </div>
  <div class="parallax2" style="margin-top:100px;margin-bottom:0px;">
<center><h2>The worlds best gaming console</h2>
<p style="color:rgb(44, 66, 78);">A sleeker, smaller PS4, delivering awesome gaming power that's always for the players. </p>
</center>
<div class="container">
<center>
<img style="margin-top:50px; margin-bottom:50px;" class="responsive" src="resources/images/Playstation images/ps4-slim-02.png"><img>
</center>
</div>
<div class="container-fluid">
<div class="row">
  <div class="col-sm-6">
  <img  class="img-reponsive img-fluid" style="margin-left:-15px;" src="resources/images/Playstation images/ps4-silver-03(1).png"></img>
  </div>
  <div class="col-sm-6" style=" padding-top:0px; padding-left:50px;">
  <h3>More ways to play</h3>
  <p style="color:black;">Store your games, apps, screenshots and videos with 500GB<br> and 1TB models - slimmer and lighter than the 
  original PS4<br> model and available in Jet Black, Glacier White and now<br> stunning Gold and Silver.
  </div>
 </div>
 <div class="row" style="margin-top:70px;">
 <div class="col-sm-6" style="padding-left:120px;">
 <h3>Vibrant HDR gaming</h3>
 <p style="color:black;">HDR-enabled PS4 games burst into life with incredible colour <br>and clarity on an HDR TV, delivering a more vibrant,
 realistic <br>spectrum of colours.</p> 
 </div>
 <div class="col-sm-6">
 <img  class="img-reponsive img-fluid" style="margin-left:15px;" src="resources/images/Playstation images/ps4-slim-01(1).png"></img>
 </div>
</div>
</div>

</div>
<div class="parallax3" style="margin-top:0px;">
<center>
<div>
<h1 style="margin-top:50px;">Unparalleled control</h1>
<p style="color:black;">The DUALSHOCK 4 wireless controller has been updated with a new look and feel, including a more visible,<br> 
colourful light bar to put even more of the game into your hands. It’s the most ergonomic, intuitive PlayStation<br>
 controller we've ever designed.</p>
 </div>
 </center>
<div class="container">
<img class="img-responsive img-fluid" src="resources/images/Playstation images/controller.png"></img>
</div>
<a href="#" class="btn" style="float:left; margin-left:100px; background-color:rgb(255, 165, 0); color:white; border-radius:0px;">Buy Now</a>
</div>
<div class="parallax4" style="margin-top:0px;">
<center>
<div style="width:500px; height:250px; float:right; margin-right:150px; margin-top:150px; background-color:black;
 opacity: 1; padding:15px; opacity:0.8;">
 <div style="width:450px; height:50px; ">
 <h3 style="color:white; margin-top:30px;" >The greatest games are on PS4</h3>
 <p>Whether you play on PS4 or PS4 Pro, the biggest blockbusters, incredible PlayStation exclusives and most 
 immersive games are waiting for you.</p>
<a href="gallery" class="btn btn-primary" style="border-radius:0px;">PS4 Games</a>
 </div>
 </div>
 </center>
 </div>
<div class="parallax5">
<center>
<div style="margin-top:50px;">
<h1 size="10">The most connected console</h1>
<p style="color:darkgrey; font-size:20px;">The freedom to play, share and socialise with your gaming world.</p>
</div>
</center>
<div class="container" >
<img style="margin-top:50px;" class="img-reponsive img-fluid"src="resources/images/Playstation images/social.png"></img>
</div>
<div style="margin-top:80px;">
<div class="row">

    <div class="col-sm-6">
	<div style="float:right;">
	<img  class="img-reponsive img-fluid" src="resources/images/Playstation images/share.jpg"></img>
	<div style="margin-top:50px;">
	<center>
	<h3>Share Play</h3>
	<p style="color:black;">Invite a friend to join your adventure, challenge them to<br> multiplayer matches or let
	them take over and play for you-<br>even if they don't own the game.</p>
	</center>
	</div>
	</div>
	</div>
    <div class="col-sm-6">
    <div style="float:left;">
	<img  class="img-reponsive img-fluid" src="resources/images/Playstation images/share.jpg"></img>
	<div style="margin-top:50px;">
	<center>
	<h3 style="">Remote Play</h3>
	<p style="color:black;">Stream games to your PC or Mac or PlayStation Vita over<br> your
	home WiFi network and never be tied to the TV again.
	</center>
	</div>
	</div>
  </div>
  </div>
</div>
<div class="container">
<img class="img-responsive img-fluid" src="resources/images/Playstation images/ps4console.png"></img>
</div>
<div class="container" style="margin-top:50px;">
  <div class="row">
    <div class="col-lg-4">
	<center>
	<img class="img-responsive" src="resources/images/Playstation images/stream.png"></img>
	<h5 align="center">Stream your gameplay</h5>
	<p style="color:black;">Broadcast your adventures live to the world via Twitch, YouTube or DailyMotion.</p>
	</center>
	</div>
	
    <div class="col-lg-4">
	<center>
	<img class="img-repsonsive" src="resources/images/Playstation images/shareinsecond.png"></img>
	<h5 align="center">Share in seconds</h5>
	<p style="color:black;">Share screenshots and videos of your greatest moments on Twitter and Facebook.</p>
	</center>
	</div>
	<div class="col-lg-4"> 
	<center>
	<img class="img-responsive" src="resources/images/Playstation images/connect.png"></img>
	<h5 align="center">Connect with friends</h5>
	<p style="color:black;">Create parties, chat to friends or join gaming communities to find new players.</p>
	</center>
	</div>
  </div>
</div>
</div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>