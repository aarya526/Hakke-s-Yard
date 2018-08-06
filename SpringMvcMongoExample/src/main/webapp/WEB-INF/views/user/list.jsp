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
<table width = "100%" border = "1">
 <tr>
  <td>Id</td>
  <td>name</td>
  <td colspan = "2">Actions</td>
 </tr>
 <c:forEach items = "${list}" var = "user">
  <tr>
  <td>${user.id }</td>
  <td>${user.name }</td>
  <spring:url value="/user/delete/${user.id }" var = "deleteUrl"/>
  <td><a href = "${deleteUrl }">delete</a></td>
  <spring:url value="/user/update/${user.id }" var = "updateUrl"/>
  <td><a href = "${updateUrl }">update</a></td>
  </tr>
 </c:forEach>
</table>

</body>
</html>