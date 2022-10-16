<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Business Details</title>

<jsp:include page="../bootstrapHead.jsp" />

</head>
<body>

<img src="http://cdn.shopify.com/s/files/1/0742/9831/products/Ancap_flag_digital_1200x1200.png?v=1492657256" class="img-fluid" height="100" width="130">

	<jsp:include page="../navbar.jsp" />
	<main class="container-fluid">

		<h1>Business Details</h1>

		<div>

			<c:choose>
				<c:when test="${empty biz}">
					<p>Your business could not be found, please try again.</p>
				</c:when>
				<c:otherwise>



					<h5>${biz.name}</h5>

					<p>Established: ${biz.yearEst}</p>

					<p>
					<blockquote>Description: ${biz.description}</blockquote>
					</p>
					<ul>

						<c:choose>
							<c:when test="${empty biz.logo}">
								<li>No logo</li>
							</c:when>
							<c:otherwise>
								<li>Logo: <a href="${biz.website}"><img
										src="${biz.logo}" height="60" width="80"></a></li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.website}">
								<li>No website</li>
							</c:when>
							<c:otherwise>
								<li>Website: <a href="${biz.website}">Website Link</a></li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.email}">
								<li>No email</li>
							</c:when>
							<c:otherwise>
								<li>Email: <a href="mailto:${biz.email}">${biz.email}</a></li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.phone}">
								<li>No phone</li>
							</c:when>
							<c:otherwise>
								<li>Phone: ${biz.phone}</li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.hours}">
								<li>No hours listed</li>
							</c:when>
							<c:otherwise>
								<li>Hours of Operation: ${biz.hours}</li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.rating}">
								<li>Not rated</li>
							</c:when>
							<c:otherwise>
								<li>Rating: ${biz.rating}</li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${empty biz.reviews}">
								<li>No reviews posted</li>
							</c:when>
							<c:otherwise>
								<li>Reviews: ${biz.reviews}</li>
							</c:otherwise>
						</c:choose>

					</ul>



					<br>
					<br>
					<br>
					<form action="modOrDelForm.do" method="GET">
						<input type="hidden" name="bizId" value="${biz.id}" /> <input
							type="submit" value="Modify or Delete this Business" />
					</form>
				</c:otherwise>
			</c:choose>
		</div>





	</main>
	<jsp:include page="../bootstrapFoot.jsp" />

</body>
</html>