<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Name List Example</title>
</head>
<body>
	<p>We are getting a list from Java called requestScope.personList.</p>
	<table>
		<tr>

			<th>first name</th>
			<th>last name</th>
			<th>age</th>
			<th>adult?</th>
		</tr>
		<c:forEach var="person" items="${personList}">
			<tr>
				<td><c:out value="${person.firstName}" /></td>
				<td><c:out value="${person.lastName}" /></td>
				<td><c:out value="${person.age}" /></td>
				<td><c:out value="${person.adult}" /></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>