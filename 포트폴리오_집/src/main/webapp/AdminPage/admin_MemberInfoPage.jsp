<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.*" %>
<%@ page import="reservation.*" %>
<%@ page session="true" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminMainPage</title>
<style type="text/css">

	table { border: 2px double black; width: 1000px; margin: 0 auto;}
	td, th {border: 1px black solid; text-align: center; padding: 5px;}

</style>
<script type="text/javascript">

	function idDelete(id) {
		location.href = "../MyPage/memberDelete.jsp?id="+id;
	}
	
	
	function searchCheck(form) {
		if(form.keyWord.value == ""){
			alert("검색 단어를 입력하세요.")
			form.keyWord.focus();
			return;
		}
		form.submit();
	}

</script>
</head>
<body align="center">
	<jsp:useBean id="datas" class="Member.MemberManagerDAO" scope="request" />
	<%
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		ArrayList<MemberInfo> list = (ArrayList<MemberInfo>)datas.getMemberList(keyField, keyWord);
	%>
	<h2>회원 정보</h2>
	<hr>
	<table>
		<tr>
			<th>회원번호</th><th>아이디</th><th>비밀번호</th><th>이름</th><th>생년월일</th><th>성별</th><th>이메일</th><th>전화번호</th><th>가입날짜</th><th>&nbsp;</th>
		</tr>
		<%
			for(MemberInfo vo:(ArrayList<MemberInfo>) list){
		%>
			<tr>
				<td><%= vo.getCustomerNum() %></td>
				<td><%= vo.getId() %></td>
				<td><%= vo.getPw() %></td>
				<td><%= vo.getName() %></td>
				<td><%= vo.getYear() %>-<%= vo.getMonth() %>-<%= vo.getDay() %></td>
				<td><%= vo.getGender() %></td>
				<td><%= vo.getEmail() %></td>
				<td><%= vo.getPhone() %></td>
				<td><%= vo.getJoinDate() %></td>
				<td><input type="button" value="삭제" onclick="idDelete('<%= vo.getId() %>');"></td>
			</tr>
		<%
			}
		%>
		<tr>
			<td colspan="10"><br>
			<form name="serach" method="post">
				<select name="keyField">
					<option value="0">----선택----</option>
					<option value="customerNum">회원번호</option>
					<option value="id">아이디</option>
					<option value="name">이름</option>
				</select>
				<input type="text" name="keyWord" />
				<input type="button" value="검색" onclick="searchCheck(form)">
			</form>
			</td>
		</tr>
		<tr>
			<td colspan="10"><p align="right"><a href="admin_MemberInfoPage.jsp">[전체목록]</a>&nbsp;&nbsp;<a href="../MainPage.html">[메인페이지]</a></p></td>
		</tr>
	</table>
	<br>
	<hr>
	<h3>예약 현황</h3>
	<jsp:useBean id="reservat" class="reservation.BookingManagerDAO" scope="page" />
	<%
		ArrayList<BookingInfo> dao = (ArrayList<BookingInfo>)reservat.getReservationList();
	%>
	<hr>
	<table>
		<tr><td>회원번호</td><td>아이디</td><td>이름</td><td>생년월일</td><td>성별</td><td>이메일</td><td>전화번호</td><td>룸이름</td><td>어른</td><td>어린이</td><td>체크인 / 체크아웃</td><td>가격</td><td>예약한 날짜</td></tr>
		<%
			for(BookingInfo ab : (ArrayList<BookingInfo>) dao){
		%>
		<tr>
			<td><%= ab.getCustomerNum() %></td>
			<td><%= ab.getId() %></td>
			<td><%= ab.getName() %></td>
			<td><%= ab.getYear()+"-"+ab.getMonth()+"-"+ab.getDay() %></td>
			<td><%= ab.getGender() %></td>
			<td><%= ab.getEmail() %></td>
			<td><%= ab.getPhone() %></td>
			<td><%= ab.getRoomId() %></td>
			<td><%= ab.getTotalAdult() %></td>
			<td><%= ab.getTotalChild() %></td>
			<td><%= ab.getCheckinDate()+" ~ "+ab.getCheckoutDate() %></td>
			<td><%= ab.getTotalAmount() %></td>
			<td><%= ab.getBookingDate() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>




















