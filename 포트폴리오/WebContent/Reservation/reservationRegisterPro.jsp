<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="reservation.*" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationRegisterPro</title>
<style type="text/css">

	div { text-align: center; margin: 0 auto; margin-top: 25px;}
	input {height: 35px; width: 150px; margin-top: 30px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
</head>
<body>
	<jsp:useBean id="reservation" class="reservation.BookingInfo" scope="request" />
	<jsp:setProperty property="*" name="reservation"/>
	<jsp:useBean id="data" class="reservation.BookingManagerDAO" scope="request" />
	
	<% 
		String id = reservation.getId();
		
		if(! data.isReservation(id)){
			if(data.insertReservation(reservation) != 0){
				out.print("<div><h2>예약되었습니다.</h2>");
				out.print("<p>감사합니다 <span>"+reservation.getId()+"님</p>");
				out.print("숙박기간<br>");
				out.print(reservation.getCheckinDate()+" - "+reservation.getCheckoutDate()+"<br><br>");
				out.print("숙박인원<br>");
				out.print("어른 "+reservation.getTotalAdult()+"명 / 어린이 "+reservation.getTotalChild()+"명<br>");
				out.print("<input type='button' value='확인' onclick='window.close()'></div>");
			}else{
				out.print("<div><h2>예약이 되지않았습니다.<br>다시 시도해 주세요.</h2>");
				out.print("<input type='button' value='다시 예약하기' onclick='window.close()'></div>");
			}
		}else{
			out.print("<div><h2>이미 <span>예약</span> 되어있습니다.</h2>");
			out.print("<input type='button' value='확인' onclick='window.close()'></div>");
		}
			
	%>
</body>
</html>