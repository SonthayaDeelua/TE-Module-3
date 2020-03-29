<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>PersonList Example</title>
	</head>
	<body>
		<p>We are getting a list from Java called requestScope.nameList.</p>
		<table>

			<c:forEach var = "name" items="${personList}">
			<tr>
			
				<td><c:out value="${name.firstName}" /></td>
				<td><c:out value="${name.lastName}" /></td>
				<td><c:out value="${name.ageName}" /></td>
				<td><c:out value="${name.adult}" /></td>
			
		
			</tr>
			</c:forEach>

		</table>
	</body>
</html>