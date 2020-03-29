<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Hello Spring MVC</title>
</head>
<body>

	<section id="main-content">
		<h1>
			Hello,
			<c:out value="Party Animals" />
			!
		</h1>
		<h2>Do you want throw more awesome parties?</h2>

		<table>
			<tr>
				<td><c:url value="/img/forDummies.png" var="dummiesPhoto" /> <img
					src="${dummiesPhoto}" /></td>
				<td valign=top><c:url var='formInputUrl' value='/reviewBook' />
					<form action="${formInputUrl}" method='POST'>
						<div>
							<label for="username">Username:</label> 
							<input type="text"
								name="username" id="username" />
						</div>
						<br>
						<div>
							<label for="rating">Rating: </label> 
							<input type="text"
								name="rating" id="rating" />
						</div>
						<br>
						<div>
							<label for="title">Title: </label> 
							<input type="text"
								name="title" id="title" />
						</div>
						<br>
						<div >
							<label  for="text">Review: </label>
						</div>
						<div>
							<textarea name ="text" id="text" rows="10" cols="50"></textarea>
						
						</div>
						<br>
						<div>
							<input style="margin-left: 100px" type="submit" value="Submit!" />
						</div>
					</form>
				</td>
			</tr>
		</table>
	</section>
</body>
</html>