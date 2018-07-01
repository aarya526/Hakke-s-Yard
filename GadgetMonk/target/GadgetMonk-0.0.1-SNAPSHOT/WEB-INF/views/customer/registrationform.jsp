<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/registration.css'></c:url>">
<title>Customer Registration</title>
</head>
<body>
<div class = "container">
 <c:url value = "/save" var = "addUrl"/>
  <form:form action = "${addUrl }" modelAttribute = "customer">
   <form:hidden path="id"/>
   <form:label path = "firstname">Enter Firstname: </form:label>
   <form:input type = "text" path="firstname" id = "firstname"/>
   <form:label path = "lastname">Enter Lastname: </form:label>
   <form:input type = "text" path="lastname" id = "lastname"/>
   <form:label path = "phonenumber">Enter Phonenumber: </form:label>
   <form:input type = "text" path="phonenumber" id = ""/>
   <hr>
   <b>Login Credentials</b><br>
   <form:label path="user.email">Enter Email</form:label>
   <form:input path="user.email" id="user.email" type="email"/>
   <form:label path="user.password">Enter password</form:label>
   <form:input path="user.password" id="user.password" type="password"/>
   <hr>
   <b>Billing Address</b>
   <form:label path="billingaddress.apartmentnumber">Enter Apartment Number: </form:label>
   <form:input type = "text" path="billingaddress.apartmentnumber" id = "billingaddress.apartmentnumber"/>
   <form:label path="billingaddress.streetname">Enter Streetname: </form:label>
   <form:input type = "text" path="billingaddress.streetname" id = "billingaddress.streetname"/>
   <form:label path="billingaddress.city">Enter City: </form:label>
   <form:input type = "text" path="billingaddress.city" id = "billingaddress.city"/>
   <form:label path="billingaddress.state">Enter State: </form:label>
   <form:input type = "text" path="billingaddress.state" id = "billingaddress.state"/>
   <form:label path="billingaddress.country">Enter Country: </form:label>
   <form:input type = "text" path="billingaddress.country" id = "billingaddress.country"/>
   <form:label path="billingaddress.zipcode">Enter Zipcode: </form:label>
   <form:input type = "text" path="billingaddress.zipcode" id = "billingaddress.zipcode"/>
   <hr>
   <b>Shipping Address</b>
   <form:label path="shippingaddress.apartmentnumber">Enter Apartment Number: </form:label>
   <form:input type = "text" path="shippingaddress.apartmentnumber" id = "shipping.apartmentnumber"/>
   <form:label path="shippingaddress.streetname">Enter Streetname: </form:label>
   <form:input type = "text" path="shippingaddress.streetname" id = "shipping.streetname"/>
   <form:label path="shippingaddress.city">Enter City: </form:label>
   <form:input type = "text" path="shippingaddress.city" id = "shippingaddress.city"/>
   <form:label path="shippingaddress.state">Enter State: </form:label>
   <form:input type = "text" path="shippingaddress.state" id = "shippingaddress.state"/>
   <form:label path="shippingaddress.country">Enter Country: </form:label>
   <form:input type = "text" path="shippingaddress.country" id = "shippingaddress.country"/>
   <form:label path="shippingaddress.zipcode">Enter Zipcode: </form:label>
   <form:input type = "text" path="shippingaddress.zipcode" id = "shippingaddress.zipcode"/>
   <br>
   <input type = "submit" value = "Register"/>
  </form:form>
</div>
</body>
</html>