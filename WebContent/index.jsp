<!doctype html>
<html>
	<head>
		<title>Movies</title>
		<meta name="description" content="This is a MVC web application that demonstrates how to use IO 
		to output contents of an Excel spreadsheet to a webpage, by outputing all the movies I have watched.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Movies Application</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="container">
				<p>Hello, Welcome to my Movie website, where you can see a list of movies that I have watched, please click the link above to view all of them!</p>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>