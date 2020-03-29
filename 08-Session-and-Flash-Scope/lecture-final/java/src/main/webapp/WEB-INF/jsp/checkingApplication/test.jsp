<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>I should be able to see my session data from anywhere, provided the session is still open </p>

<c:out value='${customerApplication.firstName}' />
<c:out value='${customerApplication.lastName}' />

</body>
</html>