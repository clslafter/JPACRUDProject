<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libertarian Businesses</title>
</head>
<body>

	<h1>Libertarian Businesses</h1>

	<ul>
		<c:forEach var="biz" items="${bizList}">
			<li>${biz.name}</li>
		</c:forEach>
	</ul>

</body>
</html>