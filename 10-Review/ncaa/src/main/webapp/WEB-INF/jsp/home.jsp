<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>Summary Page</h1>

	<table>

		<tr>
			<th>Team</th>
			<th>Conference</th>
			<th>Win</th>
			<th>Losses</th>
			<th>Details</th>
		</tr>
		
		<c:forEach items='${teamSummary}' var='team'>
		
			<c:url value='/details' var='detailsUrl'>
				<c:param name='team' value='${team.teamName}' />
				<c:param name='wins' value='${team.wins}' />
				<c:param name='losses' value='${team.losses}' />
			</c:url>
		
		<tr>
			<td>${team.teamName}</td>
			<td>${team.division}</td>
				<td>${team.wins}</td>
				<td>${team.losses}</td>				
				<td><a href='${detailsUrl}'>Details</a></td>
		</tr>
		
		</c:forEach>

	</table>
	<c:url value='/add' var='addUrl' />
	<a href='${addUrl}'> + Add New Team </a>

</body>
</html>