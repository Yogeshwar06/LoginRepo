<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	
	<div class="container">
		<h2> Your Recommendations!</h2>
		
			<% ArrayList<String> movies = 
	           (ArrayList<String>)request.getAttribute("movies");
			for(String movie : movies) {%>
			<ul>
				<li><%=movie %></li>
			</ul>
				
			<%}%>
	            
	 </div>
	
</body>
</html>