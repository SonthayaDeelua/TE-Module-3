<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Attempting to print out redirect values (nothing should be present):

<c:out value='${shares}'/>
<c:out value='${ticker}'/>
<c:out value='${timeStamp}'/>

</body>
</html>