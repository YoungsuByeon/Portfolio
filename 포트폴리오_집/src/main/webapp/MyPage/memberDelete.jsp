<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberDelete</title>
</head>
<body>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="page" />
	<%
		String id = (String)session.getAttribute("ID");
		if(id != null){
			if(data.removeMember(id) != 0){
				out.print("<h3>회원정보를 삭제하였습니다.</h3>");
				session.invalidate();
				out.print("<h3><a href='../MainPage.html'>메인 화면으로 돌아가기</a></h3>");
			}else{
				out.print("<h3>회원정보를 삭제하지 못했습니다. 잠시후 다시 시도해 주세요</h3>");
				out.print("<h3><a href='myPage.jsp'>회원정보 보기화면으로 돌아가기</a></h3>");
			}
		}else{
			out.print("<h3>로그인이 필요합니다</h3>");
			response.sendRedirect("../MainPage.html");
		}
	%>
</body>
</html>