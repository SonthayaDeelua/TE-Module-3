<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Team</title>
</head>
<body>

<c:url value='/processAdd' var='processAddUrl' />
<form method='POST' action='${processAddUrl}'>
	<div>
		<label for="division">Division:</label> 
		<select name="division" id="division">
			<option value="AAC">AAC</option>
			<option value="Big 10">Big 10</option>
			<option value="Big West">Big West</option>
		</select>
	</div>
	
	<div>
		<label for="team">Team Name:</label> 
		<input type="text" name="team" id="team" />
	</div>
	
	<div>
		<label for="team">Wins:</label> 
		<input type="text" name="wins" id="wins" />
	</div>
	
	<div>
		<label for="losses">Losses:</label> 
		<input type="text" name="losses" id="losses" />
	</div>
	
	<input type="hidden" name="hidden" value="woof" />
	
	<input class="formSubmitButton" type="submit" value="Add Team" />
	
</form>
</body>
</html>