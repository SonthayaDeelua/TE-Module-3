<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/jsp/common/header.jspf" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<c:url var="newUserInputUrl" value="/register"/>
		<form:form method="POST" action="${newUserInputUrl}" modelAttribute="signUp">

	<h3>confirmation</h3>
	<h>You have successfully registered</h>
	
		</form:form>

</body>
</html>

<c:import url="/WEB-INF/jsp/common/footer.jspf" />