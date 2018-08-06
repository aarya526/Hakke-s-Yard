<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
<spring:url value="/user/add" var = "addUrl"/>
<a href = "${addUrl }">Add new user</a>
<table border = "100%">
 <tr>
  <th>Id</th>
  <th>name:</th>
 </tr>
 <c:forEach items = "${list}" var = "user">
  <tr>
  <td>${user.id }</td>
  <td>${user.name }</td>
  </tr>
 </c:forEach>
</table>

</body>
</html>