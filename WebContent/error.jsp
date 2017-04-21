<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<title>Error</title>
		<meta name="description" content="There has been an error in the Web Application">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Error</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="container">
				<p>I'm sorry Dave, but I'm afraid I can't let you do that...</p><br>
				<p>This application has encountered an error has has been forced to shutdown.</p>				
				<c:choose>
					<c:when test="${ message != null}">
					<p>${message}</p>
					</c:when>				
					<c:otherwise>
						<p>To continue, click the Back button.</p>
						<p><strong>Error Details</strong></p>
						<p>Type: ${pageContext.exception["class"]}</p>
						<p>Message: ${pageContext.exception.message}</p>	
					</c:otherwise>
				</c:choose>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>