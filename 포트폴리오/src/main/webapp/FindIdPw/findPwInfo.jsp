<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%@ page import="Member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPwInfo</title>
<style type="text/css">

	body {text-align: center;}
	div { margin-top: 50px;}
	input {
		height: 35px; width: 150px; margin-top: 30px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<div>
		<h2>비밀번호 찾기</h2>
		<hr size="1" width="460">
		<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="page" />
		<% 
			String id = (String)session.getAttribute("ID");
			if(id != null){
				MemberInfo member = data.getMember(id);
				out.print(member.getId()+"님께서 찾으시는 비밀번호는<br>");
				out.print(member.getPw()+" 입니다.");
			}
		%>
		<br>
		<input id='cancelBtn' type='button' value='확인' onclick='window.close()'>
	</div>
</body>
</html>