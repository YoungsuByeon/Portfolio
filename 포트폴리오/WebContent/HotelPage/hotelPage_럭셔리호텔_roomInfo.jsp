<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="Member.*" %>
<%@ page import="reservation.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelPage_럭셔리호텔_roomInfo</title>

<link rel="stylesheet" href="../HotelPageCSS/hotelPage_roomInfo.css">
<script type="text/javascript">
	
	function Reservation() {
		var id = document.reservationForm.id.value;
		var url ="../Reservation/reservationRegister.jsp?id="+id;
		window.open(url,"reservationRegister","width=500,height=350,top=200,left=600");
	}
	
	var picker = new pikaday({
		field: document.getElementById('datepicker'),
		format:'yyyy-MM-dd',
		toString(date, format){
			let dat = ("0" + date.getDate()).slice(-2);
			let month = ("0" +(date.getMonth()+1).slice(-2));
			let year = date.getFullYear();
			return '${year}-${month}-${dat}';
		}
	})

</script>
<style type="text/css">

	.hidden { position: absolute; left: -9999px;}
	.reservation {text-align: center;}

</style>
</head>
<body>
	<!-- 해드영역 -->
	<header>
		<div class="back">
			<input type="checkbox" id="back">
			<label for="back"><a href="hotelPage_럭셔리호텔_roomList.jsp"><img alt="" src="../images/뒤로가기아이콘.png" width="40" height="40"></a></label>
			<h2>Room 1</h2>
		</div>
	</header>
	<section>
		<!-- 이미지 스와이프 -->
		<div class="carousel">
			<div class="jumbotron"></div>
			<div class="gallery">
				<figure><img src="../images/room1.jpg" /></figure>
				<figure><img src="../images/room2.jpg" /></figure>
				<figure><img src="../images/room3.jpg" /></figure>
				<figure><img src="../images/room4.jpg" /></figure>
				<figure><img src="../images/room5.jpg" /></figure>
			</div>
		</div>
	</section>
	<article>
		<div class="roomInfo">
			<table class="roomInfoTB">
				<tr>
					<th>객실 정보</th>
					<td>인원 : 기준 2인 / 최대 3인<br><br>침대 개수 : 싱글침대 1개, 더블침대 1개</td>
					<td>객실 크기 : 24.79m&sup2; </td>
				</tr>
				<tr>
					<th>객실 상세</th>
					<td colspan="2">
						<p>[객실소개]<br>
							사계절 한라산의 아름다움을 볼 수 있는 최대 3인이 숙박 가능한 패밀리 타입의 객실이며, 침실, 욕실로 구성되어 있습니다.
							<br><br>
							[객실 내 제공 품목]<br>
							어메니티(샴푸,샤워젤,린스,비누), 무료생수 1일 2병~3 제공(3인 투숙시 3병), 원두커피, 티, 모닝콜 서비스, 루프탑 고객 이용 무료 서비스 등
							<br><br>
							[유의사항]<br>
							- 칫솔, 치약 미제공<br>
							- 예약시 반드시 투숙자명을 실명으로 기재해주세요.<br>
							- 투숙자명을 별칭으로 기재 시 입실이 어려울 수 있습니다.
					</td>
				</tr>
				<tr>
					<th>편의 시설</th>
					<td>
						<ul>
							<li><img src="../images/에어컨아이콘.png" align="middle">&nbsp;&nbsp;A/C</li>
							<li><img src="../images/티비아이콘.png" align="middle">&nbsp;&nbsp;TV</li>
							<li><img src="../images/미니바아이콘.png" align="middle">&nbsp;&nbsp;Minibar</li>
							<li><img src="../images/주방아이콘.png" align="middle">&nbsp;&nbsp;Kitchen</li>
						</ul>
					</td>
					<td>
						<ul>
							<li><img src="../images/와이파이아이콘.png" align="middle">&nbsp;&nbsp;WiFi</li>
							<li><img src="../images/금고아이콘.png" align="middle">&nbsp;&nbsp;Safe</li>
							<li><img src="../images/전화아이콘.png" align="middle">&nbsp;&nbsp;Telephone</li>
							<li><img src="../images/수건아이콘.png" align="middle">&nbsp;&nbsp;Towels</li>
						</ul>
					</td>
				</tr>
			</table>
			<aside>
				<div class="booking">
					<div id="bookingText">
						<ul>
							<li>1박 요금</li>
							<li><br><span>100,000원</span></li>
						</ul>
					</div>
					<form action="" method="post" name="reservationForm">
						<div id="bookingSubmit">
							<table class="reservation">
								<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request" />
								<%
									String id = (String)session.getAttribute("ID");
									if(id != null){
										MemberInfo member = data.getMember(id);
										out.print("<tr class='hidden'><td colspan='2'><input type='text' name='id' value='"+member.getId()+"'></td></tr>");
									}
								%>
								<tr class='hidden'><td colspan='2'><input type='text' name='roomId' value='럭셔리호텔 room1'></td></tr>
								<tr><th>체크인</th><th>체크아웃</th></tr>
								<tr>
									<td><input type="date" name="checkinDate" id="datepicker" required></td>
									<td><input type="date" name="checkoutDate" id="datepicker" required></td>
								</tr>
								<tr><td>어른</td>
									<td colspan="2">
										<select style="width: 120px;" name="totalAdult">
											<option>1</option>
											<option>2</option>
										</select>
									</td>
								</tr>
								<tr><td>어린이</td>
									<td colspan="2">
										<select style="width: 120px;" name="totalChild">
											<option>0</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</td>
								</tr>
								<tr class='hidden'><td colspan='2'><input type='text' name='totalAmount' value='100000'></td></tr>
							</table><br>
							<input type="button" value="예약하기" onclick="Reservation()">
						</div>
					</form>
				</div>
			</aside>
		</div>
	</article>
	
	
	<!-- partial -->
	<script  src="../HotelPageJS/hotelPage_roomInfo.js"></script>
	
</body>
</html>