<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Product Details</title>
</head>
<body>
<spring:url value="/product/add" var = "addUrl"/>
<a href = "${addUrl}">Add new product</a>
<table class = "table" border = "1" width = "100%">
 <tr>
  <th>Icon</th>
  <th>Product Id</th>
  <th>Product Name</th>
  <th>Company</th>
  <th>Description</th>
  <th>Quantity</th>
  <th>Price</th>
  <th colspan = "2">Action</th>
 </tr>
 <c:forEach items = "${list}" var = "product">
  <tr>
  <td><img class="img img-thumbnail" style="max-width: 200px;" src="${pageContext.request.contextPath }/resources/${product.imageUrl }"/></td>
  <td>${product.productId }</td>
  <td>${product.productname }</td>  
  <td>${product.company }</td>  
  <td>${product.description }</td>  
  <td>${product.quantity }</td>  
  <td>Rs. ${product.price }</td>
  <spring:url value="/admin/product/delete/${product.productId }" var = "deleteUrl"/>
  <td><a href = "${deleteUrl }">delete</a></td>
  <spring:url value="/admin/product/update/${product.productId }" var = "updateUrl"/>
  <td><a href = "${updateUrl }">Update</a></td>
   </tr>
 </c:forEach>
</table>
</body>
</html>