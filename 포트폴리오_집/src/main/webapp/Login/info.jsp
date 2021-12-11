<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="page" />
	<%
		String id = (String)session.getAttribute("ID");
		if(id != null){
			MemberInfo member = data.getMember(id);
			response.sendRedirect("../MainPage_loginAfter.jsp");
			
		}
	%>
</body>
</html>