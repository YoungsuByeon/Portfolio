<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="reservation.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationCancelPro</title>
<style type="text/css">

	body {text-align: center;}
	div { margin-top: 100px;}
	#cancelBtn {
		height: 35px; width: 150px; margin-top: 30px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
<script type="text/javascript">

	function returnMyPage() {
		location.replace("../MyPage/myPage.jsp");
	}

</script>
</head>
<body>
	<div>
		<jsp:useBean id="data" class="reservation.BookingManagerDAO" scope="request" />
		<%
			String id = (String)session.getAttribute("ID");
			if(id != null){
				if(data.removeReservation(id) != 0){
					out.print("<h2>예약이 취소되었습니다.</h2>");
					session.invalidate();
					out.print("<input id='cancelBtn' type='button' value='확인' onclick='window.close()'>");
				}else{
					out.print("취소되지 않았습니다. 다시시도해 주세요<br>");
					out.print("고객센터 02-123-1234<br>");
					out.print("<input id='cancelBtn' type='button' value='확인' onclick='window.close()'>");
				}
			}
		%>
	</div>
</body>
</html>