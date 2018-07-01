<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'></c:url>">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin's Login</title>
<style>
.errors{
font-style="italics";
color:red;
}
</style>
</head>
<body>
 <div class = "container">
  <div style = "width: 1100px; height: 120px; background-color:cornflowerblue;" >
  </div>
   <form action = "<c:url value = '/j_spring_security_check'></c:url>" method = "POST">
     <div class = "form-group">
      <label for = "username">Username: </label>
      <input type = "text" class = "form-control" placeholder = "Enter Email" name = "j_username"/>
     </div>
     <div class = "form-group">
      <label for = "password">Enter Password: </label>
      <input type = "text" class = "form-control" placeholder = "Enter Password" name = "j_password"/> 
     </div>
     <button type = "submit" class ="btn btn-success">Login</button>
   </form>
 </div>
</body>
</html>