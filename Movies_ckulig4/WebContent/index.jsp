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
			<div class="main">
				<p><br><br>Hello, Welcome to my Movie website! <br><br>
				I Have made a list of movies that I have watched, please <a href="ViewAll">take a look!</a><br><br></p>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>