<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%@ page import="Member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findIdInfo</title>
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
		<h2>아이디 찾기</h2>
		<hr size="1" width="460">
		<p>회원님께서 찾으시는 아이디는</p>
		<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="page" />
		<% 
			String name = (String)session.getAttribute("NAME");
			if(name != null){
				MemberInfo member = data.getFindId(name);		
				out.print("<span>"+member.getId()+"</span> 입니다.");
			}
		%>
		<br>
		<input id='cancelBtn' type='button' value='확인' onclick='window.close()'>
	</div>
</body>
</html>