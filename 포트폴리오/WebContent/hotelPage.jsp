<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HotelPage</title>
<link rel="stylesheet" type="text/css" href="HotelPageCSS/hotelPage.css" />
<link rel="stylesheet" type="text/css" href="https://unpkg.com/lightpick@latest/css/lightpick.css">

<script type="text/javascript" src="HeaderJS/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="HotelPageJS/hotelPage.js"></script>


</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="headBackImg"></div>
	<div class="reservation_area">
		<div>
			<div class="kategori">
				<a href="#" class="nav-item is-active" active-color="#0bff">호텔&bull;리조트</a>
				<a href="#" class="nav-item" active-color="#0bff">펜션&bull;게스트하우스</a>
				<a href="#" class="nav-item" active-color="#0bff">모텔</a>
				<span class="nav-indicator"></span>
			</div>
		</div>
<script  src="HotelPageJS/hotelPage-UnderLine.js"></script>
		
		<form action="#" method="get">
			<p>
				<label for="area_search" id="skip">검색 지역</label>
				<input id="area_search" type="text" placeholder="어디로 떠나세요?">
			</p>
			<p>
				<label for="calendar" id="skip">달력</label>
				<input type="text" id="calendar" placeholder="날짜선택">
			</p>	
<script async src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://unpkg.com/lightpick@latest/lightpick.js"></script>
<script src="HotelPageJS/calendar.js"></script>
			
			<p>
				<label for="person" id="skip">예약인원</label>
				<input id="reservation_person" for="person" type="text" list="person" value="성인 0명, 어린이 0명">
			</p>
				<div class="select_person">
					<h3>인원선택</h3>
						<table id="person_check">
							<tr>
								<th>
									<label></label>
									<span>성인</span>
								</th>
								<td>
									<input id="sub1" type="checkbox" onClick="javascript:this.form.adult.value--;">
									<label for="sub1"><a><img alt="빼기" src="images/빼기.png" ></a></label>
								</td>
								<td>
									<input id="result1" type="text" value="2" name="adult">
								</td>
								<td>
									<input id="add1" type="checkbox" onClick="javascript:this.form.adult.value++;">
									<label for="add1"><a><img alt="더하기" src="images/더하기.png" ></a></label>
								</td>
							</tr>
							<tr>
								<th>
									<label></label>
									<span>어린이</span>
								</th>
								<td>
									<input id="sub2" type="checkbox" onClick="javascript:this.form.kid.value--;">
									<label for="sub2"><a><img alt="빼기" src="images/빼기.png" ></a></label>
								</td>
								<td>
									<input id="result2" type="text" value="0" name="kid">
								</td>
								<td>
									<input id="add2" type="checkbox" onClick="javascript:this.form.kid.value++;">
									<label for="add2"><a><img alt="더하기" src="images/더하기.png" ></a></label>
								</td>
							</tr>
						</table>
						<label></label>
						<input id="submit" type="button" value="적용하기" onclick="apply()">
				</div>
				<input id="hotelPage_search" type="submit" value="검색">
		</form>
	</div>
	<div class="hotelPage_List">
		<iframe src="HotelPage/hotelPage_hotelList.jsp" width="95%" height="100%"></iframe>
	</div>
<!-- 풋터 -->	
	<%@ include file="footer.jsp" %>
</body>
</html>