<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<title>Populate Movie Database</title>
		<meta name="description" content="This is a page to populate the movie database.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Populate Movie List</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<form action="PopulateDatabase" method="post">
					<p>Click on the populate button to populate the movie database.</p>
					<p>Warning: Submitting this form will reset the database and it will
					only contain the movies included in the original spreadsheet.</p>
					<input type="submit" value="populate">
				</form>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>