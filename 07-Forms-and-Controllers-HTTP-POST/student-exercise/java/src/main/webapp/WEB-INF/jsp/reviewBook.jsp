<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<section id="main-content"> 

		<h2> REVIEW FORUM </h2>
		
		<h2><c:url var="postAMessageHref" value="/greeting"/>
		<a  href="${postAMessageHref}"> Post new review here</a></h2>
	
		
		
	<c:forEach var="review" items="${reviews}">
		
		 	<h4><c:out value="${review.title}  (${review.username})"/></h4>
	
		 	
			
		 	<p><c:out value="${review.dateSubmitted}"/></p>
		
		 <div>
		 	<c:choose>
		 	
		 		<c:when test="${review.rating ==1}">
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		</c:when>
		 		
		 		<c:when test="${review.rating == 2}">
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		</c:when>
		 		
		 		<c:when test="${review.rating == 3}">
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		</c:when>
		 		
		 		<c:when test="${review.rating == 4}">
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		</c:when>
		 		
		 		<c:when test="${review.rating == 5}">
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		<span><c:url value="/img/star.png" var="oneStar" /> <img
					src="${oneStar}" /></span>
		 		</c:when>		 	
		 	</c:choose>
		 	</div>
		 	
		 	<p class = "text"><c:out value="${review.text} "/></p>
		 	<hr>
		 
		</c:forEach>

	</section>

</body>
</html>