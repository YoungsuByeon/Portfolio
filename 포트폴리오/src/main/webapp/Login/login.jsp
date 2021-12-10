<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro</title>
</head>
<body>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
	<%
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		if(data.isMember(id, pw)){
			session.setAttribute("ID", id);
			
			RequestDispatcher rd = request.getRequestDispatcher("info.jsp");
			rd.forward(request, response);
		}else{
	%>
		<script>
			alert("아이디 또는 비밀번호가 잘못 입력 되었습니다.\n아이디와 비밀번호를 정확히 입력해 주세요.");
			history.go(-1);
		</script>
	<%
		}
	%>
	

	
</body>
</html>