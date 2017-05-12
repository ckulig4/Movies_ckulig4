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
			<div class="main">
				<p>I'm sorry Dave, but I'm afraid I can't let you do that...</p>
				<p>This application has encountered an error has has been forced to shutdown.</p>				
				<c:choose>
					<c:when test="${ message != null}">
					<p><strong>***** ${message} *****</strong></p>
					</c:when>				
					<c:otherwise>
						<p>To continue, click the Back button.</p>
						<p><strong>Error Details</strong></p>
						<p>Type: ${pageContext.exception["class"]}</p>
						<p>Message: ${pageContext.exception.message}</p>	
					</c:otherwise>
				</c:choose>
				<img src="./assets/images/iterror.jpg" alt="it clown face" height="393" width="700">				
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>