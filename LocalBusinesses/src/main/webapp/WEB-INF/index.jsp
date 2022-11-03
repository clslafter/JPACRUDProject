<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Businesses</title>

<jsp:include page="bootstrapHead.jsp" />

</head>
<body>




	<jsp:include page="navbar.jsp" />
	<main class="container-fluid">

		<h1>Local Businesses</h1>
		
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