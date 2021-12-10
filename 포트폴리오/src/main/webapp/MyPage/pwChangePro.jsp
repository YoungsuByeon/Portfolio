<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.*" %>
<%@ page session="true" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChangePwPro</title>
<style type="text/css">

	div{ text-align: center; margin: 0 auto; margin-top: 100px;}
	input {height: 35px; width: 150px; margin-top: 30px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
	<%
		String id = request.getParameter("id");
		if(data.changePw(id)){
			session.setAttribute("ID", id);
			
			RequestDispatcher rd = request.getRequestDispatcher("pwChangePro2.jsp");
			rd.forward(request, response);
		}
	%>
	<div>
		<h2>재확인후 다시 입력해 주세요</h2>
		<input type="button" value="확인" onclick="window.close()">
	</div>
</body>
</html>