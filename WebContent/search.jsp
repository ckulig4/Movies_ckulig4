<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<title>Search Movies</title>
		<meta name="description" content="This is a search tool to find movie titles">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Search</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<form action="Search" method="post">
					<label for="title"><strong>Search by title: </strong></label>
					<input name="title">
					<input type="submit" value="Search!">
				</form>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>