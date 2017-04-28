<!doctype html>
<html>
	<head>
		<title>404 - Page Not Found</title>
		<meta name="description" content="Page is not found in our web application.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>404 - page not found</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<p>There seems to be something missing here...</p>
				<p>To continue, click the Back button.</p>
				
				<img src="./assets/images/iterror.jpg" alt="it clown face" height="393" width="700">
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>