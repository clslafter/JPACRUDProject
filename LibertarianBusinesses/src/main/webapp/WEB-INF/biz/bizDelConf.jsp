<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Business Delete Confirmation</title>

<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>

<img src="http://cdn.shopify.com/s/files/1/0742/9831/products/Ancap_flag_digital_1200x1200.png?v=1492657256" class="img-fluid" height="100" width="130">

<jsp:include page="../navbar.jsp" />
	<main class="container-fluid">

<h2>Film Deletion Confirmation</h2>

	<c:choose>
		<c:when test="${deleteTest == true}">
<p>The selected film was deleted. </p>

<br>
<br>

</c:when>
		<c:otherwise>
<p>The selected film was not deleted.
An error occurred, please try again.</p>
<br>

	</c:otherwise>
	</c:choose>
</main>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>