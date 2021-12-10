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

	body {text-align: center;}
	div { margin-top: 100px;}
	#cancelBtn {
		height: 35px; width: 150px; margin-top: 30px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<div>
		<jsp:useBean id="member" class="Member.MemberInfo" scope="request" />
		<jsp:setProperty property="*" name="member"/>
		<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
		<%
			String id = (String)session.getAttribute("ID");
			if(id != null){
				if(data.pwUpdate(member) !=0){
					out.print("비밀번호가 수정 되었습니다.<br>");
					out.print("<input id='cancelBtn' type='button' value='확인' onclick='window.close()'>");
				}else{
					out.print("비밀번호 수정에 실패하였습니다.");
				}
			}
		%>
	</div>
</body>
</html>