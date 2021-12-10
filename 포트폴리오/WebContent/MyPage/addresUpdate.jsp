<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body align="center">
	<div style="margin-top: 100px;">
		<jsp:useBean id="member" class="Member.MemberInfo" scope="page" />
		<jsp:setProperty property="*" name="member"/>
		<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="page" />
		
		<%
			String id = (String)session.getAttribute("ID");
			if(id != null){
				if(data.addressUpdate(member) != 0){
					out.print("연락처 수정에 성공하셨습니다.<br>");
					out.print("<a href='myPage.jsp'>내정보로 돌아가기</a>");
				}else{
					out.print("연락처 수정에 실패하였습니다.<br>");
					out.print("<a href='myPage.jsp'>내정보로 돌아가기</a>");
				}
			}
		%>
	</div>
</body>
</html>