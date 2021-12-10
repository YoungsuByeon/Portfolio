<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="reservation.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationCancelCheck</title>
<style type="text/css">
	
	body{text-align: center;}
	table{margin: 0 auto;}
	input{height: 35px; width: 150px; margin-top: 10px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<div>
		<h2>예약 취소</h2>
		<hr>
		<form action="reservationCancelPro.jsp" method="post">
			<jsp:useBean id="data" class="reservation.BookingManagerDAO" scope="request" />
			<%
				String id = (String)session.getAttribute("ID");
				if(id != null){
					BookingInfo reservat = data.getReservation(id);
					
					out.print("<table>");
					out.print("<tr><th>예약자</th><td>"+reservat.getId()+"</td></tr>");
					out.print("<tr><th>Room이름</th><td>"+reservat.getRoomId()+"</td></tr>");
					out.print("<tr><th>체크인</th><td>"+reservat.getCheckinDate()+"</td></tr>");
					out.print("<tr><th>체크아웃</th><td>"+reservat.getCheckoutDate()+"</td></tr>");
					out.print("</table>");
				}
			%>
			<h4>정말로 예약을 취소하시겠습니까?</h4>
			<input type="submit" value='취소하기'>
		</form>
	</div>
</body>
</html>