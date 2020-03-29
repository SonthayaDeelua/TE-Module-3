<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="All Actors List"/>

<c:url value="/actorFormResults" var = "actorResultsVar"/>
<form method="GET" action="${actorResultsVar}">
<input name="search" placeholder= "Put actor name here"/>
<input value="submit" type="submit"/>
</form>

<table class="table">
<tr>
<th>Name</th>
</tr>
<c:forEach items="${actors}" var="actor">
<tr>
<td><c:out value="${actor.firstName}"/>
<c:out value="${actor.lastName}"/></td>
</tr>
</c:forEach>
</table>
<%@include file="common/footer.jspf"%>
