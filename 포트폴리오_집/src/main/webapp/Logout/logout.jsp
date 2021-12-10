<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("ID");
		if(id != null){
			session.invalidate();
			response.sendRedirect("../MainPage.jsp");
		}
	%>
</body>
</html>