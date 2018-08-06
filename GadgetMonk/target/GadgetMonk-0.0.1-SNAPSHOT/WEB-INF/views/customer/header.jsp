<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<c:if test = "${pageContext.request.userPrincipal == null}">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath }/ps4">Gadget Monk</a>
    </div>
    
    <ul class="nav navbar-nav">
      
      <li><a href="${pageContext.request.contextPath }/ps4">Playstation 4</a></li>
      <li><a href="${pageContext.request.contextPath }/ps4pro">Playstation 4 Pro</a></li>
      <li><a href="${pageContext.request.contextPath }/psvr">Playstation VR</a></li>
      <li><a href="${pageContext.request.contextPath }/gallery">Gadget Gallery</a></li>
    </ul>
 
    <ul class="nav navbar-nav navbar-right">
      <li><a href="all/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div>
    </nav>
    </c:if>
    <c:if test="${ pageContext.request.userPrincipal != null}">  
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Gadget Monk</a>
    </div>
    <security:authorize access = "hasRole('ROLE_USER')">
    <ul class="nav navbar-nav">
    
      <li><a href="${pageContext.request.contextPath }/ps4">Playstation 4</a></li>
      <li><a href="${pageContext.request.contextPath }/ps4pro">Playstation 4 Pro</a></li>
      <li><a href="${pageContext.request.contextPath }/psvr">Playstation VR</a></li>
      <li><a href="${pageContext.request.contextPath }/gallery">Gadget Gallery</a></li>
    </ul>
    </security:authorize>
     <security:authorize access = "hasRole('ROLE_ADMIN')">
    <ul class="nav navbar-nav">
      <li><a href="<c:url value='/admin/product/list'></c:url>">Product List</a></li>
      <li><a href="<c:url value='/admin/product/add'></c:url>">Add New Product</a></li>
      <li><a href="<c:url value='/admin/category/list'></c:url>">Category List</a></li>
      <li><a href="gallery">Add New Category</a></li>
    </ul>
    </security:authorize>
    <ul class="nav navbar-nav navbar-right">
    <security:authorize access = "hasRole('ROLE_USER')">
      <li><a  href = "<c:url value='/cart/purchaseDetails'></c:url>">My Cart <span class="glyphicon glyphicon-shopping-cart"></span>(${sessionScope.cartSize })</a></li>
      </security:authorize>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class = "glyphicon glyphicon-user"></span> ${pageContext.request.userPrincipal.name }
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
</c:if>



