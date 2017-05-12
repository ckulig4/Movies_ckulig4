<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<title>Movies List</title>
		<meta name="description" content="This is a JSP example that
		demonstrates how to output every Movie I have watched from my Excel spreadsheet to the web page.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Movie List</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<c:choose>
					<c:when test="${empty movies}">
						<p>Sorry, there isn't any movies on the list.</p>
						<p>Try to <a href="populateDatabase.jsp">populate</a> the list of movies first.</p>
						
					</c:when>
					<c:otherwise>
						<c:forEach var="movie" items="${movies}">
							<div class="span4">
								<h2>${movie.title}</h2>
								<p>${movie.title} was directed by ${movie.director} and has a ${movie.lengthInMinutes} minute runtime.</p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>