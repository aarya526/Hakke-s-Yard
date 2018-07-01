<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Product Form</title>
<style>
.errors{
font-style="italics";
color:red;
}
</style>
</head>
<body style = "background-color: black;">
<div class = "container-fluid" style = "width :900px; height: 120px; background-color: cornflowerblue; margin-bottom:50px; ">
 </div>
<div class = "container" style = "width:450px; padding:20px; background-color:lightgrey; border-radius:10px; margin-bottom:30px;" >
<spring:url value="/admin/product/save" var="saveURL" />
  <form:form action="${saveURL }" method="POST" modelAttribute="productForm" enctype="multipart/form-data">
  <form:hidden path="ProductId"/>
  <div class="form-group">
    <label for="name">Product Name:</label> 
    <form:input class="form-control" placeholder="Enter ProductName" path="productname"/>
    <form:errors path="productname" class="errors"/>
  </div>
  <div class="form-group">
   <label for="company">Company: </label>
   <form:input class="form-control" placeholder="Enter Company Name" path="company"/>
   <form:errors path="company" class="erros"/>
  </div>
  <div class="form-group">
    <label for="description" >Description: </label>
    <form:textarea path="description" class="form-control" placeholder="Enter Description"/>
    <form:errors path="description" class="errors"/>
  </div>
  <div class="form-group">
    <label for="quantity">Quantity: </label>
    <form:input class="form-control" placeholder="Enter Quantity" path="quantity"/>
    <form:errors path="quantity" class="errors"/>
  </div>
  <div class="form-group">
    <label for="price">Price: </label>
   <form:input class="form-control" placeholder="Enter Price" path="price" />
   <form:errors path="price" class="errors"/>
  </div>
  <div class="form-group">
   <label for="file">Upload Photo: </label>
   <form:input type="file" path="file"/>
  </div>
  <button type="submit" class="btn btn-success">Save</button>
 </form:form>
 </div>
</body>
</html>
