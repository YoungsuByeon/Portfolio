<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RestaurantPage_List_정겨운한식</title>
<style type="text/css">
	
	.back {
		position: relative; width: 1100px; height:50px; 
		margin: 0 auto;}
	#back{display: none;}
	label {margin-left: 20px; position: relative; float: left;}
	
	
	.box { width: 1100px; height: 1000px; margin: 0 auto;}
	.img { background: red; font-size:60px;
		width: 100%; height: 300px;}
	.name {background: blue; font-size:60px;
		width: 100%; height: 200px;}
	.report {background: ; font-size:60px;
		width: 100%; height: 400px;}
	.info {background: ; font-size: 60px;
		width: 100%; height: 100%;}
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
				이미지 섹션
			</div>
		</header>
		<hr>
		<section>
			<div class="name">
				섹션1 - 가게명, 위치, 가격 
				한식쓰 
			</div>
			<hr>
			<div class="report">
				소개 내용
				<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f747df8d79cd0fad84eadb02cd2dada0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.557621, 127.007613),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		var markerPosition = new kakao.maps.LatLng(37.557621, 127.007613);
		var marker = new kakao.maps.Marker({
			position: markerPosition
		});
		marker.setMap(map);
	</script>
			</div>
			<hr>
			<div class="info">
				인포메이션 - 전화번호, 홈페이지 주소
			</div>
		</section>
	</div>
	
</body>
</html>