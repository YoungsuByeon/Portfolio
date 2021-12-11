<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RestaurantPage_List_정겨운한식</title>
<link rel="stylesheet" href="../RestaurantPageCSS/ImgSlide.css">
<style type="text/css">
	
	.back {
		position: relative; width: 1100px; height:50px; 
		margin: 0 auto;}
	#back{display: none;}
	label {margin-left: 20px; position: relative; float: left;}
	
	
	.box { width: 1100px; height: 1000px; margin: 0 auto;}
	.img { width: 100%; height: 300px;}
	.name { width: 100%; height: 100px;}
	.name p img {width: 23px; height: 23px;}
	.name p span {font-size: 15px;}
	.report {width: 100%; height: 450px; }
	#report {width: 550px; height: 400px; float: left;}
	#map { position:relative; float: right;}
	#info { width: 400px; height: 280px;}
	a {color: black;}
</style>

</head>
<body>
	<div class="box">
		<div class="back">
			<input type="checkbox" id="back">
			<label for="back"><a href="restaurantPage_List.jsp"><img alt="" src="../images/뒤로가기아이콘.png" width="40" height="40"></a></label>
		</div>
		<header>
			<div class="img">
				<div class="container">
					<div class="slide" style="background-image: url(../images/foodImg1.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg2.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg3.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg4.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg5.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg6.jpg);"></div>
					<div class="slide" style="background-image: url(../images/foodImg7.jpg);"></div>
				</div>
			</div>
	<script  src="../RestaurantPageJS/imgScript.js"></script>
		</header>
		
		<hr style="margin-top: 50px;">
		<section>
			<div class="name">
				<div>
					<h1>정겨운 한식</h1>
					<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 한식</span>
				</div> 
			</div>
			<div class="report">
				<div id="report">
					<table id="info">
						<tr><th colspan="2">매장 정보</th></tr>
						<tr><th>주소</th><td>서울특별시 중구 한식1길 10 정겨운한식 1층<br><a href="http://kko.to/cOQL4u3fH" target="_blank" style="color: gray">길찾기</a></td></tr>
						<tr><th>전화</th><td>02-123-1234</td></tr>
						<tr><th>영업시간</th><td>11:30 ~ 14:30<br> 17:00 ~ 22:00</td></tr>
						<tr><th>휴무일</th><td>연중무휴</td></tr>
						<tr><th>홈페이지</th><td><a href="https://www.shilla.net/seoul/dining/viewDining.do?contId=KRN#ad-image-0" target="_blank">https://www.shillahotels.com/</a></td></tr>
						<tr><th>주차</th><td>가능</td></tr>
					</table>
				</div>
				<div id="map" style="width:450px;height:350px;"></div>
<!-- 지도 api 스크립트 -->				
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f747df8d79cd0fad84eadb02cd2dada0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.55583386039719, 127.00514375572894),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		var markerPosition = new kakao.maps.LatLng(37.55583386039719, 127.00514375572894);
		var marker = new kakao.maps.Marker({
			position: markerPosition
		});
		marker.setMap(map);
	</script>
			</div>
		</section>
	</div>
	
</body>
</html>