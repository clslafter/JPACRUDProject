<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libertarian Businesses</title>

<jsp:include page="bootstrapHead.jsp" />

</head>
<body>

<img src="http://cdn.shopify.com/s/files/1/0742/9831/products/Ancap_flag_digital_1200x1200.png?v=1492657256" class="img-fluid" height="100" width="130">


	<jsp:include page="navbar.jsp" />
	<main class="container-fluid">

		<h1>Libertarian Businesses</h1>
		
		<h4>Add a Business:</h4>
		<form action="addBizForm.do"> <input type="submit" value="Add Business"/></form>

		<form action="getBiz.do" method="GET">
			Business ID: <input type="text" name="bizId" class="form-control" />
			<input type="submit" value="Show Business" class="btn btn-outline-secondary" />
		</form>
		
	<hr>

		<table class="table table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="biz" items="${bizList}">
					<tr>
						<td><a href="getBiz.do?bizId=${biz.id}">${biz.id}</a></td>
						<td><a href="getBiz.do?bizId=${biz.id}">${biz.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>