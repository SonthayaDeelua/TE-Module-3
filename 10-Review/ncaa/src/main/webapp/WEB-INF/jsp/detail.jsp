<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detail Page</title>
</head>
<body>
<p>You picked <c:out value='${team}'/> with a L/W ratio of <c:out value='${ratio}' />.</p>
</body>
</html>