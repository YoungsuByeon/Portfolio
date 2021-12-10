<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="Member.MemberInfo" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="Member.MemberInfo" scope="request" />
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
	
	<%
		String id = member.getId();
		String pw = member.getPw();
		
		if(! data.isMember(id, pw)){
			if(data.insertMember(member) != 0){
				out.print("<h3>회원가입에 성공하셨습니다</h3>");
				out.print("<h3><a href='../MainPage.jsp'>로그인 화면으로 돌아가기</a></h3>");
			}
			else{
				out.print("<h3>회원 가입에 실패하였습니다.</h3>");
				out.print("<h3><a href='../MainPage.jsp'>로그인화면으로 돌아가기");
			}
		}else{
			out.print("<h3>이미 가입된 아이디 입니다. 다시 작성해 주세요</h3>");
			out.print("<h3><a href='../MainPage.jsp'>회원가입으로 돌아가기<a></h3>");
		}
	%>
</body>
</html>