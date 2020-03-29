<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="All Films List" />

<%@include file="common/header.jspf"%>

<c:url value="/processFilmFormResults" var="filmResults" />

<form method="GET" action="${filmResults}">
	<label for="minLength">Minimum Length:</label> <input name="minLength"
		placeholder="min" /> <label for="maxLength">Maximum Length:</label> <input
		name="maxLength" placeholder="max" /> <label for="genre">Genre</label>
	<select name="genre" placeholder="choose:">
		<option value="Action">Action</option>
		<option value="Animation">Animation</option>
		<option value="Children">Children</option>
		<option value="Classics">Classics</option>
		<option value="Comedy">Comedy</option>
		<option value="Documentary">Documentary</option>
		<option value="Drama">Drama</option>
		<option value="Family">Family</option>
		<option value="Foreign">Foreign</option>
		<option value="Games">Games</option>
		<option value="Horror">Horror</option>
		<option value="Music">Music</option>
		<option value="New">New</option>
		<option value="Sci-Fi">Sci-Fi</option>
		<option value="Sports">Sports</option>
		<option value="Travel">Travel</option>
		<input type="submit" value="Search" />
</form>

<table class="table">
	<tr>
		<th>Name</th>
		<th>Description</th>
		<th>Release Year</th>
		<th>Length</th>
		<th>Rating</th>
	</tr>

	<c:forEach items="${films}" var="film">

		<tr>
			<td><c:out value="${film.title}" /></td>
			<td><c:out value="${film.description}" /></td>
			<td><c:out value="${film.releaseYear}" /></td>
			<td><c:out value="${film.length}" /></td>
			<td><c:out value="${film.rating}" /></td>
		</tr>

	</c:forEach>
</table>

<%@include file="common/footer.jspf"%>