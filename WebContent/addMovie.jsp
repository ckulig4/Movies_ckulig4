<!doctype html>
<html>
	<head>
		<title>New Movie Page</title>
		<meta name="description" content="This page is to allow you to add new Movie to the database.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Add a Movie</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<form action="AddMovie" method="post">
				
					<label for="title"><strong>Title:</strong></label>
					<input name="title"><br>
					
					<label for="director"><strong>Director:</strong></label>
					<input name="director"><br>
					
					<label for="lengthInMinutes"><strong>Length in Minutes:</strong></label>
					<input name="lengthInMinutes"><br>
					
					<input type="submit" value="Add Movie">
				</form>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>