<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
<a  class="navbar-brand btn btn-info" href="${pageContext.request.contextPath }/home">Gadget Monk</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="collapsibleNavbar" style="position:relative">
<div class="dropdown1">
    <button class="dropbtn1 " href=""><b>Playstation</b></button>
      <i class="fa fa-caret-down" ></i>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <a href="${pageContext.request.contextPath }/ps4"><img class="ps4" src="${pageContext.request.contextPath }/resources/images/dropdown images/ps4.png"></img></a>
      <a href="${pageContext.request.contextPath }/ps4pro"><img class="ps4pro" src="${pageContext.request.contextPath }/resources/images/dropdown images/ps4pro.png"></img></a>
     <a href="${pageContext.request.contextPath }/login"><img class="buy" src="${pageContext.request.contextPath }/resources/images/dropdown images/buy.png"></img></a>
	  
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Playstation VR</b></button>
      <i class="fa fa-caret-down" ></i>
     <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <a href="${pageContext.request.contextPath }/psvr"><img class="psvr" src="${pageContext.request.contextPath }/resources/images/Playstation images/psvr.png"></img></a>
      <a href="${pageContext.request.contextPath }/login"><img class="buy" src="${pageContext.request.contextPath }/resources/images/dropdown images/buy.png"></img></a>
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Xbox One</b></button>
      <i class="fa fa-caret-down" ></i>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <img class="xboxone-X" src="${pageContext.request.contextPath }/resources/images/dropdown images/xboxoneX.png"></img>
      <a href="${pageContext.request.contextPath }/login"><img class="buy" src="${pageContext.request.contextPath }/resources/images/dropdown images/buy.png"></img></a>
	  
	  </div>
      </div>
    </div>
  </div> 
<c:if test="${ pageContext.request.userPrincipal == null}">
<div class="btn-group">
<button class="btn btn-success" type="button" style="color:white" ><b>Contact Us</b></button>
<a class="btn btn-success" href="${pageContext.request.contextPath }/loginPage"><b>Login</b></a>
<button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
<span class="caret"></span> 
</button>
<div class="dropdown-menu" >
<a class="dropdown-item" href="${pageContext.request.contextPath }/gallery">Gamer's Gallery</a>
<a class="dropdown-item" href="${pageContext.request.contextPath }/customer/add">Sign up</a>
</div>
</div>
</c:if>
<c:if test = "${pageContext.request.userPrincipal != null }">	
<div class="btn-group">
<button class="btn btn-success" type="button" style="color:white" ><b>Contact Us</b></button>
<a class="btn btn-success" href="login"><b>${pageContext.request.userPrincipal.name}</b></a>
<button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
<span class="caret"></span> 
</button>
<div class="dropdown-menu" >
<a class="dropdown-item" href="${pageContext.request.contextPath }/gallery">Gamers Gallery</a>
<a class="dropdown-item" href="<c:url value='/cart/purchaseDetails'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>My Cart (${sessionScope.cartSize })</a>
<a class="dropdown-item" href="${pageContext.request.contextPath }/logout">Logout</a>
</div>
</div>
</c:if>
 </nav>




