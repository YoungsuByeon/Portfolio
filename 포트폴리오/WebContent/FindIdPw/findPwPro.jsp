<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindPwPro</title>
<style type="text/css">
	
	body{ text-align: center}
	h3 { margin-top: 100px;}
	input {
		height: 35px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request"/>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		if(data.findPw(id, name, email)){
			session.setAttribute("ID", id);
			
			RequestDispatcher rd = request.getRequestDispatcher("findPwInfo.jsp");
			rd.forward(request, response);
		}
		
	%>
	
	<h3>아이디 이름 이메일 주소를 다시 입력해주세요</h3>
	<input id='cancelBtn' type='button' value='다시검색하기' onclick='window.close()'>
</body>
</html>