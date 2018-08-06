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

<title>PS VR</title>
 <style>
.parallax{
background-image:url("resources/images/PS4 Pro Images/parallax1.png");
min-height:700px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:100%;
margin-top:0px;
margin-bottom:0px;
}
#myVideo {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%; 
    min-height: 100%;
}
.parallax1{
background-image:url("");
min-height:900px;
background-color:white;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-bottom:0px;
padding-top:30px;
}
.parallax2{
background-image:url("resources/images/psvr images/symbols.jpg");
background-color:white;
min-height:2100px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-top:0px;
padding-top:70px;
}
.parallax3{
background-image:url("resources/images/psvr images/newworld.jpg");
background-color:none;
min-height:700px;
padding:150px;
}
.parallax4{
background-image:url("");
background-color:white;
min-height:1100px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
padding-top:80px;
}
.parallax5{
background-image:url("resources/images/PS4 Pro Images/gow.jpg");
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
<div class="container">
</div>
<div class="parallax">
<div>
<center>
<img class="img-responsive img-fluid" style="margin-top:120px;" src="resources/images/psvr images/psvrlogo.png">
<h2 style="color:white;">PlayStation&reg;VR</h2>
<p style="margin-top:20px; color:white;">Experience new worlds with PS VR<br>Winner of the IF gold award for product design<br>
Including PlayStation VR Worlds and a PlayStation Camera.</p>
<a href="gallery" class="btn" style="color:white; background-color:rgb(255, 165, 0); border-radius:0px; margin-top:40px;">Buy PS VR</a>
</center>
</div>
</div>
<div class="parallax1">
<div>
<center>
<h2 class="display-3"style="color:black;">Live the game</h2>
<p style="color:darkgrey; margin-top:20px;">Immerse yourself in extraordinary new worlds, put yourself at the centre of an incredible gaming universe and <br>
experience a new way to play with PlayStation VR.</p>
</center>
</div>
 <div style="margin-top:100px;"class="row">
    <div class="col-sm-7">
	<img class="img-reponsive img-fluid" style="width:120%;"src="resources/images/psvr images/allconsole.png"></img>
	</div>
    <div class="col-sm-4">
	<div style="width:370px;height:250px; background-color:black; opacity:0.7; float:left;margin-top:50px; padding-left:30px;
	padding-top:20px;margin-left:-15px;">
	<h3 style="color:white;">Powered by PS4</h3>
	<p style="color:white;font-size:17px; margin-top:30px;">PlayStation VR is the latest member of the<br> PS4 family-so whichever 
	PS4 console you<br> own, you're PS VR ready; connect the<br> headset to your PS4, add a PlayStation<br> Camera* 
	and leave reality behind.
	</div>
  </div>
</div>
</div>
<div class="parallax2">
<div>
<center>
<h3 style="color:white;">As a thing to touch, behold and wear, the Sony PlayStation VR is <br>really rather awesome"</h3>
</center>
</div>
<div class="row" style="margin-top:150px;">
<div class="col-sm-6">
<div style="float:right; padding-right:30px;">
<h3 style="color:white;">See the future</h3>
<p style="margin-top:30px;font-size:15px; color:white;"><b>5.7" OLED screen</b><br>See hyper-real 3D environments come 
to life with a custom<br> OLED screen.</p>
<p style="font-size:15px;color:white;"><b>360 degree vision</b><br>Whichever way you turn the 360 degree immersion of PS VR<br>
 makes you part of a living, breathing world with a seamless<br> field of view.</p>
 <p style="font-size:15px;color:white;"><b>120 frames per second</b><br>Smooth visuals and super low latency combine to create an <br>
 incredibly immersive gaming world.</p>
</div>
</div>
<div class="col-sm-6">
<img class="img-reponsive img-fluid" src="resources/images/psvr images/jelly.png"></img>
</div>
</div>
<div class="row" style="margin-top:150px;">
<div class="col-sm-6">
<img class="img-reponsive img-fluid" src="resources/images/psvr images/vr.png"></img>
</div>
<div class="col-sm-6">
<div style="float:left;padding-left:30px;">
<h3 style="color:white;">Audio immersion</h3>
<p style="margin-top:30px;font-size:15px;color:white;"><b>3D audio</b><br>Discover a new dimension in sound with cutting-edge 3D <br> 
audio that lets you accurately perceive the direction and <br>distance of sounds that are coming from above, below and <br>
all around you.</p>
<p style="font-size:15px;color:white;"><b>Built in mic</b><br>Chat to your online friends, discuss in-game tactics and <br>
 strengthen your immersion in the virtual world with the <br> headset's integrated microphone.</p>
</div>
</div>
</div>
<div class="row" style="margin-top:150px;">
<div class="col-sm-6">
<div style="float:right; padding-right:30px;">
<h3 style="color:white;">Live the game on social media</h3>
<p style="margin-top:30px;font-size:15px;color:white;">Check out our social media wall
 and see some of the <br>hilarious and inspiring ways PS VR players are sharing their<br>
experiences on Twitter and Instagram. Send us your pics <br>using #PSVR and you could join them... </p>
</div>
</div>
<div class="col-sm-6">
<img class="img-reponsive img-fluid" src="resources/images/psvr images/social.png"></img>
</div>
</div>
</div>
<div class="parallax3">
<div class="row">
    <div class="col-sm-6"></div>
    <div class="col-sm-6">
	<div style="width:400px;height:270px; background-color:rgb(0, 174, 255); opacity:0.8; float:left;padding-left:30px;
	padding-top:20px;">
	<h3 style="color:white;">Play in new worlds</h3>
	<p style="color:white;font-size:17px; margin-top:30px;">From driving high octane supercars in GT <br>
	Sport to fighting your way through hostile <br>alien worlds in Farpoint, braving the chilling <br> 
	sanitorium of The Inpatient or taking point for <br>your squad in Bravo Team, new worlds are <br>
	waiting for everyone with PS VR.</p>
	</div>
  </div>
</div>
</div>
<div class="parallax4">
<div class="row">
<div class="col-sm-6">
<img class="img-reponsive img-fluid" src="resources/images/psvr images/eye.png"></img>
</div>
<div class="col-sm-6">
<div style="float:left;padding-left:30px;">
<h3>Get inside the game</h3>
<p style="margin-top:30px;font-size:16px;"><b>PlayStation Camera</b><br>With dual lenses and 3D depth sensors, the PlayStation 
<br>Camera tracks the position of the headset, PlayStation Move  <br>controller and DUALSHOCK 4 light bar wherever you are,<br>
ensuring you're always at the centre of your VR gaming <br>universe.</p>
<p style="font-size:16px;"><b>Precision tracking</b><br>Nine LEDs positioned on the front, back and sides of the PS <br>
VR headset are tracked by the PlayStation Camera – ensuring  <br>pinpoint accuracy within the game world, wherever you are<br>
in the room. </p>
</div>
</div>
</div>
<div class="row" style="margin-top:150px;">
<div class="col-sm-5">
<div style="float:right; padding-right:30px;">
<h3>Complete control</h3>
<p style="margin-top:30px;font-size:15px;"><b>DUALSHOCK 4</b><br>The PS4 precision control you love takes on a new dimension <br>
 with PS VR; every game is compatible with the DUALSHOCK <br>4 wireless controller, while the light bar is constantly tracked 
 <br>to further enhance in-game movement. </p>
 <p style="font-size:15px;"><b>PlayStation Move motion controller</b><br>Bring your hands into the game world and take full control of
 <br>your VR experiences, giving an even deeper sense of<br> presence and further enhancing your immersion. </p>
 <p style="font-size:15px;"><b>PS VR aim controller</b><br>Make every shot count and see your controller brought to life 
 <br>in-game as a virtual weapon, bringing deadly precision to <br> presence and further enhancing your immersion. </p>
</div>
</div>
<div class="col-sm-7">
<img class="img-reponsive img-fluid" src="resources/images/psvr images/shoot.png"></img>
</div>
</div>
</div>
<div class="parallax5">
<center>
<h1 style="font-size:45px; color:white">The limited edition God of War PS4 Pro</h1>
</center>
<div style="margin-top:100px;">
<img class="img-reponsive img-fluid" src="resources/images/PS4 Pro Images/limited.png">
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
<div class="footer">
 
</div>
</body>
</html>