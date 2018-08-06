<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<title>PS4 Pro</title>
 <style>
.parallax{
background-image:url("${pageContext.request.contextPath}/resources/images/PS4 Pro Images/parallax1.png");
min-height:700px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:100%;
margin-top:0px;
margin-bottom:0px;
}
.parallax1{
background-image:url("");
min-height:1100px;
background-color:black;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-bottom:0px;
padding-top:70px;
}
.parallax2{
background-color:#f0f0f0;
min-height:1000px;
background-color:lightgrey;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-top:0px;
padding-top:70px;
}
.parallax3{
background-color:rgb(60, 60, 60);
min-height:1350px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
padding-top:70px;
}
.parallax4{
background-image:url("");
background-color:rgb(102, 200, 207);
min-height:1000px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax5{
background-image:url("${pageContext.request.contextPath}/resources/images/PS4 Pro Images/gow.jpg");
background-color:white;
min-height:1300px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
padding-top:100px;
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
color:black;
font-family:ariel,helvetica,sans-serif;
}
h3{
font-size:27px;
color:rgb(44, 66, 78);
font-family:helvetica;
}
p{
color:black;
font-size:20px;
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
<body style="background-color:black;">
<jsp:include page="header.jsp"></jsp:include>
<div class="parallax">
<div>
<center>
<img class="img-responsive img-fluid" style="margin-top:120px;" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/award.png">
<p style="margin-top:50px; color:white;">The super-charged PS4: faster, more powerful and with 4K gaming*.<br>
Winner of the 2018 iF gold award for product design.</p>
<a href="gallery" class="btn" style="color:white; background-color:rgb(255, 165, 0); border-radius:0px; margin-top:40px;">Buy PS4 Pro</a>
</center>
</div>
</div>
<div class="parallax1">
<div>
<center>
<h3 style="margin-top:100px;color:white">"As a gaming platform, PlayStation 4 is the best around-which makes the PS4 <br>Pro the best of the best."</h3>
</center>
</div>
<div>
<img  style="margin-top:20px;" class="img-responsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/ps4pro.png">
</div>
<div class="container">
 <div style="margin-top:30px;"class="row">
    <div class="col-sm-4">
	<div style="margin-left:110px;">
	<img  class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/4k.png"></img>
	<div style="margin-top:30px;">
	<p style="color:white;">4K gaming and <br>entertainment*</p>
	</center>
	</div>
	</div>
	</div>
    <div class="col-sm-4">
    <div style="margin-left:50px;">
	<img  style="margin-left:50px;"class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/hdr.png"></img>
	<div style="margin-top:50px;">
	<p style="color:white;">High Dynamic Range for  <br>intensely vibrant colours</p>
	</center>
	</div>
	</div>
	</div>
    <div class="col-sm-4">
	<div style="margin-left:50px;">
	<img  style="margin-left:50px;"class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/2X.png"></img>
	<div style="margin-top:50px;">
	<p style="color:white;">Double the GPU power of the <br>standard PS4</p>
	</center>
	</div>
	</div>
	</div>
  </div>
  </div>
</div>
<div class="parallax2">
<div></div>
<div>
<center>
<h1 style="">HDR technology</h1>
<p>With an HDR TV, compatible PS4 games display a range of colours closer to the full spectrum
 that the human eye can see, delivering unbelievable vibrancy and lifelike details.</p>
				<img style="margin-top: 100px;" class="img-reponsive img-fluid"
					src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/hdrtech.png">
			</center>
</div>
</div>
<div class="parallax3">
<center>
<h1 style="color:white;">Frame rate boost</h1>
<p style="color:white;">Action becomes faster, smoother and more explosive with support for faster and more stable frame rates**.</p>
<img class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/framerate.png">
<div class="row" style="margin-top:120px;">
  <div class="col-sm-6">
  <div style="float:right;">
						<img class="img-reponsive img-fluid"
							src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/fps.png">
						<h3 style="margin-top:50px;color:white;">FPS boost: locked</h3>
  <p style="color:white;">Frame rates are boosted and locked in<br> place for some games on PS4 Pro.</p>
  </div>
  </div>
  <div class="col-sm-6">
    <div style="float:left">  
    <img class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/fpsboost.png">
	<h3 style="margin-top:55px;color:white;">FPS boost: targeted</h3>
	<p style="color:white;">PS4 Pro targets faster frame rates for<br> select PS4 games.</p>
  </div>
  </div>
</div>
</center>
</div>
<div class="parallax4">
<img class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/supersampling.png">
<div>
<center>
<h2 style="color:#3c3c3c; font-size:40px;">Supersampling</h2>
<p style="color:#3c3c3c">Get a super-charged gaming experience from your PS4 Pro enhanced games-even when playing on a non-4K TV.</p>
<br>
<p style="color:#3c3c3c">Supersampling mode takes your game's highest resolution and uses that extra visual information in certain games
 to deliver <br>smoother
 curves, sharper edges and more refined details when downscaling to an HD TV.</p>
</center>
</div>
</div>
<div class="parallax5">
<center>
<h1 style="font-size:45px; color:white">The limited edition God of War PS4 Pro</h1>
</center>
<div style="margin-top:100px;">
<img class="img-reponsive img-fluid" src="${pageContext.request.contextPath}/resources/images/PS4 Pro Images/limited.png">
</div>
<div style="margin-top:50px;">
<center>
<p style="color:white;">Forged in the mists of Norse legend, this limited edition PS4 Pro 
features intricate detail from the Leviathan Axe -Kratos'<br> formidable weapon from the latest instalment of God of War.</p>
<p style="color:white;">Experience this legendary tale of gods and monsters from 20th April 2018, enhanced in stunning detail for PS4 
Pro.</p>
<a href="gallery" class="btn" style="background-color:orange; border-radius:0px; color:white; margin-top:100px;">Buy PS4 Pro</a>
</center>
 </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>