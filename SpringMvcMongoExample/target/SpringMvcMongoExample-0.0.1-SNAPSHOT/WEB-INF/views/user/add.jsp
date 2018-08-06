<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new user form</title>
</head>
<body>
<spring:url value="/user/save" var = "saveUrl"/>
<form:form action = "${saveUrl }">
 <table>
  <tr>
   <td>Enter name </td>
   <td><form:input type = "text" path = "name"/></td>
  </tr>
 </table>
</form:form>
</body>
</html>