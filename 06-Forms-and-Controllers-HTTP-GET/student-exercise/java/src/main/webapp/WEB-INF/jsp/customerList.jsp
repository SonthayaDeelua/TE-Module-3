<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="All Customers List" />

<%@include file="common/header.jspf"%>

<c:url value='/processCustomerFormResults' var='customerResults' />

<form method="GET" action="${customerResults}">
	<label for="name">First OR Last Name:</label> <input name="name"
		placeholder="First OR Last Name" /> <select name="sort"
		placeholder="choose:">
		<option value="last_name">Last Name</option>
		<option value="email">Email</option>
		<option value="active">Active</option>
	</select> <input type="submit" value="Search" />
</form>

<table class="table">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Active</th>
	</tr>

	<c:forEach items="${customers}" var="customer">

		<tr>
			<td><c:out value="${customer.firstName}" />
				<c:out value="${customer.lastName}" /></td>
			<td><c:out value="${customer.email}" /></td>
			<td><c:out value="${customer.active}" /></td>
		</tr>

	</c:forEach>
</table>