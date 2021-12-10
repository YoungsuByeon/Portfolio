<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RestaurantPage</title>
<link rel="stylesheet" href="RestaurantPageCSS/restaurantPage.css">
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="headBackImg"></div>
	<!-- 카테고리 메뉴 -->
	<nav>
		<div class="menuNav">
			<ul id="nav-1"> 
			    <li class="slide1"></li>         
			    <li class="slide2"></li>
			    <li class="first"><a href="#/">한식</a></li>
			    <li><a href="#/">양식</a></li>
			    <li><a href="#/">중식</a></li>
			    <li><a href="#/">일식</a></li>
			    <li><a href="#/">디저트</a></li>
			</ul>
		</div>
		
			
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
  		<script src="RestaurantPageJS/restaurantMenu.js"></script>
			
	</nav>
	
<!-- 검색 창 -->
	<div class="main_searchArea">
		<div class="container">
			<form class="Menu_SearchArea" autocomplete="off">
				<div class="finder">
					<div class="finder__outer">
						<div class="finder__inner">
							<div class="finder__icon" ref="icon"></div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>	
	<script  src="RestaurantPageJS/restaurantPage_search.js"></script>
	
	
<!-- 레스토랑 컨텐츠 영역 -->
	<section class="restaurantPage_List_Area">
		<div class="restaurantPage_List">
			<iframe src="RestaurantPage/restaurantPage_List.jsp" width="100%" ></iframe>
		</div>
	</section>
<!-- 풋터 -->	
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
	

</body>
</html>