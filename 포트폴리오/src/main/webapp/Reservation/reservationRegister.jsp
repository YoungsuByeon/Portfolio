<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>
<%@ page session="true" %>
<%@ page import="reservation.BookingInfo" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationRegister</title>
<script type="text/javascript">

	function rValue() {
		document.getElementById("id").value = opener.document.reservationForm.id.value;
		document.getElementById("roomName").value = opener.document.reservationForm.roomId.value;
		document.getElementById("checkIn").value = opener.document.reservationForm.checkinDate.value;
		document.getElementById("checkOut").value = opener.document.reservationForm.checkoutDate.value;
		document.getElementById("totalAdult").value = opener.document.reservationForm.totalAdult.value;
		document.getElementById("totalChild").value = opener.document.reservationForm.totalChild.value;
		document.getElementById("totalAmount").value = opener.document.reservationForm.totalAmount.value;
	}

</script>
<style type="text/css">

	body{text-align: center;}
	table{width: 250px; height: 200px; margin: 0 auto; text-align: center;}
	input {border: none; text-align: center;}
	.hidden {position: absolute; left: -9999px;}
	.line {border-top: 1px solid lightgray;}
	.line input{ width: 90px; height: 30px; background: #0bff; color: white; cursor: pointer;}

</style>
</head>
<body onload="rValue()">
	<form action="reservationRegisterPro.jsp" method="post">
		<h3>예약 확인</h3>
		<hr style="width: 300px">
		<table >
			<tr class="hidden"><td colspan="2"><input type="text" name="id" id="id"></td></tr>
			<tr><th>룸 이름</th><td><input type="text" name="roomId" id="roomName"></td></tr>
			<tr><th>체크인</th><td><input type="text" name="checkinDate" id="checkIn"></td></tr>
			<tr><th>체크아웃</th><td><input type="text" name="checkoutDate" id="checkOut"></td></tr>
			<tr><th>어른</th><td><input type="text" name="totalAdult" id="totalAdult"></td></tr>
			<tr><th>어린이</th><td><input type="text" name="totalChild" id="totalChild"></td></tr>
			<tr class="hidden"><td colspan="2"><input type="text" name="totalAmount" id="totalAmount"></td></tr>
			<tr>
				<td class="line" colspan="2">
					<input type="submit" value="예약하기">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소" onclick="window.close()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>