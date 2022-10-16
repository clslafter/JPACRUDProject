<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify or Delete</title>

<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>

<img src="http://cdn.shopify.com/s/files/1/0742/9831/products/Ancap_flag_digital_1200x1200.png?v=1492657256" class="img-fluid" height="100" width="130">
<jsp:include page="../navbar.jsp" />
	<main class="container-fluid">

	<h2>Modify this Business</h2>
	<br> Business ID: ${biz.id}
	<form action="modBiz.do" method="POST">
	<br>Name: <input type="text" name="name" value="${biz.name}"/> 
	<br> Description: <input type="text" name="description" value="${biz.description}"/>
	<br> Logo Url: <input type="text" name="logo" value="${biz.logo}"/> 
	<br> Website Url: <input type="text" name="website" value="${biz.website}"/> 
	<br> Email: <input type="text" name="email" value="${biz.email}"/> 
	<br> Phone: <input type="text" name="phone" value="${biz.phone}"/> 
	<br> Hours of Operation: <input type="text" name="hours" value="${biz.hours}"/> 
	<br> Rating: <input type="number" name="rating" value="${biz.rating}"/> 
	<br> Reviews: <input type="text" name="review" value="${biz.reviews}"/> 
	<br> Year Established:<input type="number" name="yearEst" value="${biz.yearEst}"/>
			<input type="hidden" name="id" value="${biz.id}" /> <br> 
			<input type="submit" value="Submit" />


	</form>
	<br>
	<br>
	<h2>Delete this Business?</h2>
	<br>
	<form action="deleteBiz.do" method="POST">
		<input type="hidden" name="id" value="${biz.id}" />
		 <input type="submit" value="Delete this Business" />
	</form>

</main>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>