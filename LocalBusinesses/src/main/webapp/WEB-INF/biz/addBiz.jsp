<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Biz</title>

<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>


<jsp:include page="../navbar.jsp" />
	<main class="container-fluid">
	
	<h2>Add a Business</h2>

	<form  action="addBiz.do" method="POST">
    <br>Name: <input type="text" name="name" value="Name"/> 
	<br> Description: <input type="text" name="description" value="Description"/>
	<br> Logo Url: <input type="text" name="logo" value=""/> 
	<br> Website Url: <input type="text" name="website" value=""/> 
	<br> Email: <input type="text" name="email" value=""/> 
	<br> Phone: <input type="text" name="phone" value=""/> 
	<br> Hours of Operation: <input type="text" name="hours" value=""/> 
	<br> Rating: 
	 <select>
        <option type="number" name="rating" value="1">1</option>
        <option type="number" name="rating" value="2">2</option>
        <option type="number" name="rating" value="3">3</option>
        <option type="number" name="rating" value="4">4</option>
        <option type="number" name="rating" value="5">5</option>
      </select><br>
	<br> Reviews: <input type="text" name="reviews" value=""/> 
	<br> Year Established:<input type="number" name="yearEst" value="0"/>
	<br><input type="submit" value="Create this Business" />




</form>

</main>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>