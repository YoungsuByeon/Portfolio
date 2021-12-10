<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page session="true"%>
<%@ page import="Member.*" %>
<%@ page import="reservation.*" %>    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<script type="text/javascript" src="../HeaderJS/jquery.js"></script>
<style type="text/css">
	a, li {text-decoration: none; list-style: none;}
	header { background: #0bff; width: 100%; height: 100px; }
	
	.head { width: 1100px; height: 95px; margin: 0 auto;}
	.title {float: left; height: 90px;}
	.user {float: right; margin-top:50px; margin-right:20px; font-size: 20px;}
	.user label:hover { color: #555; cursor: pointer; text-decoration: underline;}
	
	.dropInfo { position: fixed; left:71%;}
	.dropInfoTable { border: 1px solid; width: 200px; height: 100px; background: white;}
	
	nav { background: skyblue; width: 100%; height: 60px; margin: 0; padding: 0;}
	.infoTitle { width: 1100px; height: 55px; margin: 0 auto;}
	.infoTitleTB { width: 200px; height: 50px; transform:translateY(10%);}
	.memberInfo { cursor: pointer;}
	.memberUpdate { cursor: pointer;}
	
	.profileArea {width: 1200px; height:300px; margin: auto;}
	.myPage { 
		position: relative; float: left;
		width: 350px; height: 250px; margin-top: 40px; margin-right: 20px;
		border: 1px solid black;}
	#profileTB {width: 300px; height: 100px; margin: auto;}
	#addressTB {width: 300px; height: 120px; margin: auto;}
	#passTB {width:200px; margin: auto;}
	
	.passArea { width: 1100px; height:300px; margin: auto;}
	
	#checkreservat { width: 300px; height: 140px; margin: auto;}
	
	.hidden {position: absolute; left: -9999px;}
</style>
<script type="text/javascript">

	$(function () {
		$('.dropInfo').hide();
		$('.drop').click(function () {
			if($('.dropInfo').is(':visible')){
				$('.dropInfo').hide();
			}else{
				$('.dropInfo').show();
			}
		});
	});
	

	
	$(function () {
		$('.passArea').hide();
		$('.memberInfo').click(function () {
			$('.memberInfo').css({'color':'green','text-decoration':'underline'});
			$('.memberUpdate').css({'color':'black','text-decoration':'none'});
			$('.passArea').hide();
			$('.profileArea').show();
		});
		$('.memberUpdate').click(function () {
			$('.memberInfo').css({'color':'black','text-decoration':'none'});
			$('.memberUpdate').css({'color':'green','text-decoration':'underline'});
			$('.profileArea').hide();
			$('.passArea').show();
		});
	});
	
	function openChangePw(){
		var url = "pwChangeInfo.jsp"
		window.open(url,"changPw","width=500,height=300,top=200,left=600");
	}
	
	function ReservationCancel(){
		var id = document.cancelForm.id.value;
		var url = "../Reservation/reservationCancelCheck.jsp?id="+id;
		window.open(url,"reservationCancelCheck","width=500,height=350,top=200,left=600");
	}

</script>
</head>
<body>
	<header>
		<div class="head">
			<table class="title">
				<tr>
					<th><a href="../MainPage_loginAfter.jsp"><img alt="" src="../images/logo_white.png" width="200" height="90"></a></th>
					<th><h2>내정보</h2></th>
				</tr>
			</table>
			<div class="user">
				<label class="drop"><%= session.getAttribute("ID") %></label> 님
			</div>
		</div>
	</header>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
	<jsp:useBean id="reservation" class="reservation.BookingManagerDAO" scope="request" />
	<%
		String id = (String)session.getAttribute("ID");
	%>
	<div class="dropInfo">
		<%
			if(id != null){
				MemberInfo member = data.getMember(id);
				
				out.print("<table class='dropInfoTable' align='center'>");
				out.print("<tr><th>"+member.getId()+" 님</th><th><a href='../Logout/logout.jsp'>로그아웃</a></th></tr>");
				out.print("<tr><th colspan='2'>"+member.getEmail()+"</th></tr>");
				out.print("<tr><th><a href='myPage.jsp'>내정보</a></th><th><a href='memberDelete.jsp'>회원탈퇴</a></th></tr>");
				out.print("</table>");
			}
		%>
	</div>
	<nav>
		<div class="infoTitle">
			<table class="infoTitleTB">
				<tr><th><label class="memberInfo">회원정보</label></th><th><label class="memberUpdate">보안설정</label></th></tr>
			</table>
		</div>
	</nav>
	<section>
		<div class="profileArea">
			<div class="myPage profile">
				<h3 align="center">프로필</h3>
				<% 
					if(id != null){
					MemberInfo member = data.getMember(id);
		
					out.print("<table id='profileTB'>");
					out.print("<tr><th>아이디</th><th>이름</th><th>성별</th><th>생년월일</th></tr>");
					out.print("<tr><th>"+member.getId()+"</th><th>"+member.getName()+"</th><th>"+member.getGender()+"</th><th>"+member.getYear()+"-"+member.getMonth()+"-"+member.getDay()+"</th></tr>");
					out.print("</table>");
					}
				%>
			</div>
			<div class="myPage address">
				<h3 align="center">연락처</h3>
				<% 
					if(id != null){
					MemberInfo member = data.getMember(id);
					
					out.print("<form action='addresUpdate.jsp' method='post'>");
					out.print("<table id='addressTB'>");
					out.print("<tr class='hidden'><th colspan='2'><input type='text' name='id' value='"+member.getId()+"'></th></tr>");
					out.print("<tr><th>이메일</th><th><input type='text' name='email' value='"+member.getEmail()+"'></th></tr>");
					out.print("<tr><th>전화번호</th><th><input type='text' name='phone' value='"+member.getPhone()+"'></th></tr>");
					out.print("<tr><th colspan='2'><input type='submit' value='수정하기'></th></tr>");
					out.print("</table>");
					out.print("</form>");
					}
				%>
			</div>
			<div class="myPage reservation">
				<h3 align="center">예약확인</h3>
				<%
					if(id != null){
						BookingInfo reservat = reservation.getReservation(id);
						
						out.print("<form action='' method='post' name='cancelForm'>");
						out.print("<table id='checkreservat'>");
						out.print("<tr><th>예약자</th><td>"+reservat.getId()+"</td></tr>");
						out.print("<tr><th>Room이름</th><td>"+reservat.getRoomId()+"</td></tr>");
						out.print("<tr><th>체크인</th><td>"+reservat.getCheckinDate()+"</td></tr>");
						out.print("<tr><th>체크아웃</th><td>"+reservat.getCheckoutDate()+"</td></tr>");
						out.print("<tr><th>총 숙박일</th><td>"+reservat.getStayDate()+" 일</td></tr>");
						out.print("<tr><th>총 요금</th><td>"+reservat.getTotalAmount()+" 원</td></tr>");
						out.print("<tr><th colspan='2'><input type='button' value='예약취소' onclick='ReservationCancel()'></th></tr>");
						out.print("</table>");
						out.print("<form>");
				
					}
				%>
			</div>
		</div>
		<div class="passArea">
			<div class="myPage pass">
				<h3 align="center">비밀번호</h3>
				<table id="passTB">
					<tr><td>비밀번호</td><td><a href="" onclick="openChangePw()">변경하기</a></td></tr>
				</table>
			</div>
		</div>
	</section>
</body>
</html>