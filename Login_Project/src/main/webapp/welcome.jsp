<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
		<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	
	
	
	<div class="container my-3">
		<form class="nav justify-content-end" action="Logout">
			<input class="btn btn-primary my-3" type="submit" value="Logout">
		</form>
	
		<h2>Welcome ${username}!</h2>
		
		<ul>
			<li> <a class="my-6" href="videos.jsp">Videos here</a> </li>
			<br>
			<li> <a class="my-3" href="recommendation.jsp">Products Recommendations for you</a> </li>
		</ul>
	</div>>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>