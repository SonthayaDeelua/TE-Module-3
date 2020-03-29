<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="common/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
<style>
.error {
	color: red;
}

.placeholder {
	color: gray;
}
</style>
</head>
<body>

	<c:url var="registerSubmitUrl" value="/register" />

	<h2>New User Registration</h2>

	<form:form method="POST" action="${registerSubmitUrl}"
		modelAttribute="registration">

		<div>
			<label for="firstName">First Name</label>
			<form:input path="firstName" placeholder=" first name"
				class="placeholder"></form:input>
			<form:errors path="firstName" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="lastName">Last Name</form:label>
			<form:input path="lastName" placeholder=" last name"
				class="placeholder"></form:input>
			<form:errors path="lastName" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="email">Email</form:label>
			<form:input path="email" placeholder=" email" class="placeholder"></form:input>
			<form:errors path="email" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="confirmEmail">Confirm Email</form:label>
			<form:input path="confirmEmail" placeholder=" confirm email"
				class="placeholder"></form:input>
			<form:errors path="emailMatching" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="password">Password</form:label>
			<form:input path="password" placeholder=" password"
				class="placeholder"></form:input>
			<form:errors path="password" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="confirmPassword">Confirm Password</form:label>
			<form:input path="confirmPassword" placeholder=" confirm password"
				class="placeholder"></form:input>
			<form:errors path="passwordMatching" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="birthdate">Birth Date</form:label>
			<form:input path="birthdate" placeholder=" YYYY-MM-DD"
				class="placeholder"></form:input>
			<form:errors path="birthdate" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="numberOfTickets"># of Tickets</form:label>
			<form:input path="numberOfTickets" type="number" placeholder="1-9"
				class="placeholder"></form:input>
			<form:errors path="numberOfTickets" cssClass="error"></form:errors>
		</div>

		<div>
			<input type="submit" value="Register" />
		</div>
	</form:form>

</body>
</html>
<%@include file="common/footer.jspf"%>