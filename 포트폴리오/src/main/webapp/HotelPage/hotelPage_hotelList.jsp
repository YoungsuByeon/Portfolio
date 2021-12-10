<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelPage_hotelList</title>
<style type="text/css">
	
	body {z-index: 1;}
	* {list-style: none;}
	* a {text-decoration: none;}
	
	*.hotel {
		position: relative; width: 1100px; height: 250px;
		margin: 0 auto; border: 1px solid #555; margin-bottom: 30px;}
	*.hotel:hover {box-shadow: 1px 1px 2px #555;}
	
	.hotel1 img{position: relative; float: left;}
	.hotel1_info {
		position: relative; float: left; 
		width: 850px; height: 250px;}
	.hotel1_info ul li {color: #555;}
	.hotel1_info ul li a{font-size: 50px; color: #555;}
	.hotel1_info #price {position:relative; top:50px; right:50px; float: right; }
	.hotel1_info #price span {font-size: 35px; font-weight: bolder;}
	
	
	.hotel2 img{position: relative; float: left;}
	.hotel2_info {
		position: relative; float: left; 
		width: 850px; height: 250px;}
	.hotel2_info ul li {color: #555;}
	.hotel2_info ul li a{font-size: 50px; color: #555;}
	.hotel2_info #price {position:relative; top:50px; right:50px; float: right; }
	.hotel2_info #price span {font-size: 35px; font-weight: bolder;}
	

</style>
</head>
<body>
	<div>
		<div class="hotel hotel1">
			<a href="hotelPage_럭셔리호텔_roomList.jsp"><img alt="" src="../images/롯데타워.jpg" width="250" height="250"></a>
			<div class="hotel1_info">
				<ul>
					<li><a href="hotelPage_럭셔리호텔_roomList.jsp">럭셔리 호텔</a></li>
					<li>&nbsp;&nbsp;5성급&nbsp;&middot;&nbsp;서울 송파구</li>
					<li id="price">1박 총&nbsp;<span>100,000원</span></li>
				</ul>
			</div>
		</div>
		<div class="hotel hotel2">
			<a href="#"><img alt="" src="../images/조선호텔.jpg" width="250" height="250"></a>
			<div class="hotel2_info">
				<ul>
					<li><a href="#">앤티크 호텔</a></li>
					<li>&nbsp;&nbsp;5성급&nbsp;&middot;&nbsp;서울 중구</li>
					<li id="price">1박 총&nbsp;<span>100,000원</span></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>