<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Business Update Confirmation</title>

<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<img src="http://cdn.shopify.com/s/files/1/0742/9831/products/Ancap_flag_digital_1200x1200.png?v=1492657256" class="img-fluid" height="100" width="130">

<jsp:include page="../navbar.jsp" />
	<main class="container-fluid">

	<c:choose>
		<c:when test="${empty biz}">
An error occurred, please try again. 
         </c:when>
		<c:otherwise>
Business ID: ${biz.id }<br>
${biz.name} was modified.<br>
			<br>


			<a href="getBiz.do?bizId=${biz.id}">See new details for
				${biz.name}</a>


		</c:otherwise>
	</c:choose>

</main>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>