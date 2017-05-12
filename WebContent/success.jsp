<!doctype html>
<html>
	<head>
		<title>Success</title>
		<meta name="description" content="This is a success page, only reached when everything goes correctly.">
<%@include file="includes/styles.jsp" %>		
	</head>
	<body>
		<div class="container">
			<div class="hero-unit">
				<h1>Success</h1>
			</div>
<%@ include file="includes/navigation.jsp" %>
			<div class="main">
				<p>${message}</p>
			</div>
<%@ include file="includes/footer.jsp" %>
		</div>
<%@ include file="includes/scripts.jsp" %>	
	</body>
</html>