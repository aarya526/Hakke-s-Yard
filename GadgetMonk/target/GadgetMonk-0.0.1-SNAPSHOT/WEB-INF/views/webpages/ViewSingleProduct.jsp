<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel = "stylesheet" href = "<c:url value = '/resources/css/singleproduct.css'></c:url>"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
<title>GM:Console Gallery</title>
</head>
<body background="${pageContext.request.contextPath }/resources/images/Playstation images/gamers.jpg">
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${pageContext.request.contextPath }/resources/${product.imageUrl}"/></div>
						  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
						</div>
					
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${product.productname }</h3>
						
						<p class="product-description">${product.description }</p>
						<h4 class="price">current price: <span>Rs.${product.price }</span></h4>
			
						<h5 class="sizes">Brand: ${product.company }
						</h5>
						<h5 class="colors">Quantity Left: <font color = "red">${product.quantity }</font>
						</h5>
						<div class="action">
						<c:url value = "/cart/addToCart/${productId}" var = "addUrl"></c:url>
				<form action="${addUrl}" method="post">
				
				    <div class = "form-group">
				    <label>Enter Quantity: </label>
					<input type="text" min = "1"  class="form-control" placeholder="Enter Quantity" name="requestedQuantity">
			        </div>
			
					<br>
				
					<input type="hidden" name="id" value="${product.productId}">
					
					<div class="price-wrap h5">
					 <button class="add-to-cart btn btn-success" type="submit">Add To Cart <span class = "glyphicon glyphicon-shopping-cart"></span></button>
							
					</div>	
				
				</form>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>