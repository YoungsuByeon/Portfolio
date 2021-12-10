<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page session="true" %>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindIdPro</title>
<style type="text/css">
	
	body{ text-align: center}
	h3 { margin-top: 100px;}
	input {
		height: 35px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body >
	
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request"/>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		if(data.findId(name, email)){
			session.setAttribute("NAME", name);
			
			RequestDispatcher rd = request.getRequestDispatcher("findIdInfo.jsp");
			rd.forward(request, response);
		}
		
	%>
	
	<h3>이름 또는 이메일주소를 잘못 입력하였습니다.<br>다시 입력해주세요</h3>
	<input id='cancelBtn' type='button' value='다시검색하기' onclick='window.close()'>

</body>
</html>