<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="common/header.jspf"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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

	<c:url var="loginSubmitUrl" value="/login" />

	<h2>Login</h2>

	<form:form method="POST" action="${loginSubmitUrl}"
		modelAttribute="log">
		<div>
			<label for="email">Email</label>
			<form:input path="email" placeholder=" email" class="placeholder"></form:input>
			<form:errors path="email" cssClass="error"></form:errors>
		</div>

		<div>
			<form:label path="password">Password</form:label>
			<form:input path="password" placeholder=" password"
				class="placeholder"></form:input>
			<form:errors path="password" cssClass="error"></form:errors>
		</div>

		<div>
			<input type="submit" value="Submit" />
		</div>
	</form:form>

</body>
</html>
<%@include file="common/footer.jspf"%>