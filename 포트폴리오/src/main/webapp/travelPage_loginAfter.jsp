<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TravelPage</title>
<link rel="stylesheet" href="TravelPageCSS/swiper.min.css">
<link rel="stylesheet" type="text/css" href="TravelPageCSS/travelPage.css" />

<script type="text/javascript" src="HeaderJS/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="TravelPageJS/travelPage.js"></script>
</head>
<body>
	<%@ include file="header_loginAfter.jsp" %>
	<!-- 해드 밑에 첫번째 컨텐츠 -->	
	<div class="con">
		
		<!-- 서울컨텐츠 -->
			<div class="showCon_back">
				<div class="show_con show_seoul" id="show_seoul">
					<img alt="롯데타워" src="images/롯데타워.jpg" width="300" height="300" id="seoul_img1">
					<img alt="남산타워" src="images/남산타워.jpg" width="200" height="300" id="seoul_img2">
					<img alt="숭례문" src="images/숭례문.jpg" width="200" height="200" id="seoul_img3">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_seoul go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
				
		<!-- 경기 컨텐츠 -->
				<div class="show_con show_gg">
				경기도 컨텐츠
					<img alt="" src="images/경기.png" width="200" height="200" id="_img">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_gg go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
				<div class="show_con show_gw">
				강원도 컨텐츠
					<img alt="" src="images/강원.jpg" width="200" height="200" id="">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_gw go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
				<div class="show_con show_cc">
				충청도 컨텐츠
					<img alt="" src="images/충북.png" width="200" height="200" id="">
					<img alt="" src="images/충남.png" width="200" height="200" id="">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_cc go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
				<div class="show_con show_jl">
				전라도 컨텐츠
					<img alt="" src="images/전북.jpg" width="200" height="200" id="">
					<img alt="" src="images/전남.jpg" width="200" height="200" id="">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_jl go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
				<div class="show_con show_gs">
				경상도 컨텐츠
					<img alt="" src="images/경북.png" width="200" height="200" id="">
					<img alt="" src="images/경남.png" width="200" height="200" id="">
					<div>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
							Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
							It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
							It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
							and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
						</p>
					</div>
					<a href="#" class="go_gs go_con"><img alt="바로가기" src="images/바로가기.png" width="18px" height="18px">바로가기</a>
				</div>
			</div>
		<script type="text/javascript">
		
			
		</script>		
				
	<!-- 지도영역 컨텐츠 -->
		<div class="mapCon">
			<img alt="" src="images/map.png" class="map">
			<div class="mapArea">
				<img alt="" src="images/서울.png" class="map" id="서울">
				<img alt="" src="images/경기도.png" class="map" id="경기">
				<img alt="" src="images/강원도.png" class="map" id="강원">
				<img alt="" src="images/충청도.png" class="map" id="충청">
				<img alt="" src="images/전라도.png" class="map" id="전라">
				<img alt="" src="images/경상도.png" class="map" id="경상">
			</div>
		<!-- 지역 명칭 리스트 -->
			<div class="areaList">
				<ul>
					<li><a href="#" class="서울 areaName"><img alt="숭례문" src="images/숭례문.png">서울</a></li>
					<li><a href="#" class="경기 areaName"><img alt="놀이공원" src="images/놀이공원.png">경기도</a></li>
					<li><a href="#" class="강원 areaName"><img alt="서핑" src="images/서핑.png">강원도</a></li>
					<li><a href="#" class="충청 areaName"><img alt="호수" src="images/호수.png">충청도</a></li>
					<li><a href="#" class="전라 areaName"><img alt="한옥마을" src="images/한옥.png">전라도</a></li>
					<li><a href="#" class="경상 areaName"><img alt="첨성대" src="images/첨성대.png">경상도</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 이미지 스와이프 영역 -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide"><img src="images/slide1.JPG" width="680" height="820"></div>
	    	<div class="swiper-slide"><img src="images/slide2.JPG" width="680" height="820"></div>
	    	<div class="swiper-slide"><img src="images/slide3.JPG" width="680" height="820"></div>
		</div>
	<!-- Add Pagination -->
	    <div class="swiper-pagination"></div>
	<!-- Add Arrows -->
	    <div class="swiper-button-next"></div>
	    <div class="swiper-button-prev"></div>
	</div>
			
<script src="TravelPageJS/swiper.min.js"></script>

	  <!-- Initialize Swiper -->
<script>
	var swiper = new Swiper('.swiper-container', {
		spaceBetween: 30,
		centeredSlides: true,
		autoplay: {
			delay: 2500,
		    disableOnInteraction: false,
		},
		    pagination: {
		    	el: '.swiper-pagination',
		        clickable: true,
		    },
		      navigation: {
		      	nextEl: '.swiper-button-next',
		        prevEl: '.swiper-button-prev',
		      },
		});
</script>
	<%@ include file="footer.jsp" %>
</body>
</html>