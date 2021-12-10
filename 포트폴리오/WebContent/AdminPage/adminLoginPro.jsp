<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLoginPro</title>
<style type="text/css">

	body { text-align: center;}
	div { margin-top: 100px;}

</style>
</head>
<body>
	<div>
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			response.setContentType("text/html;charset=utf-8");
			if(id != null && (id.length() != 0)){
				if(id.equals("admin") && pw.equals("1234"));
				
				out.print("<font size='12'>관리자로 로그인 하였습니다.</font><br><br>");
				out.print("<a href='admin_MemberInfoPage.jsp'>관리자 페이지로 가기</a>");
			}
			
		%>
	</div>
</body>
</html>