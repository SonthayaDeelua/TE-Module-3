<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Hello Spring MVC</title>
		<link rel="stylesheet" href="css/site.css"></link>
	</head>
	<body>
		<div id="main_content">
			<h1>Thanks!</h1>
			<p>We'll let you know when the Awesomeness arrives!</p>
		</div>
		
		<c:url var='surveyInputUrl' value='/surveyInput' />			
		<p>Got a minute? Let us know what you think is <a href="${surveyInputUrl}">Awesome</a>!
	</body>
</html>