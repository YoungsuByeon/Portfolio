<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RestaurantPage_List</title>
<style type="text/css">
	
	* {list-style: none;}
	* a {text-decoration: none;}
	
	.restaurant{ 
		position: relative; float:left;
		width: 400px; height: 500px;
		margin: 10px 20px; border: 1px solid #555;}
	.restaurant img { width: 400px; height: 370px;}
	.restaurant:hover {box-shadow: 2px 2px 5px gray;}
	
	#restaurantName {width: 380px; height: 125px; margin:0 auto}
	#restaurantName a {color: #555; font-size: 30px; font-weight: bold;}
	#restaurantName p img {width: 23px; height: 23px; margin-right: 10px;}
	#restaurantName p span {font-size: 15px;}
</style>
</head>
<body>
	<div class="listBackground">
		<div class="restaurant num1">
			<a href="restaurantPage_List_정겨운한식.jsp"><img alt="" src="../images/한식.jpg"></a>
			<div id="restaurantName">
				<a href="restaurantPage_List_정겨운한식.jsp">정겨운 한식</a>
				<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 한식</span>
			</div>
		</div>
		<div class="restaurant num2">
			<a href=""><img alt="" src="../images/양식.jpg"></a>
			<div id="restaurantName">
				<a href="">아름다운 양식</a>
				<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 양식</span>
			</div>
		</div>
		<div class="restaurant num3">
			<a href=""><img alt="" src="../images/중식.jpg"></a>
			<div id="restaurantName">
				<a href="">강력한 중식</a>
				<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 중식</span>
			</div>
		</div>
		<div class="restaurant num4">
			<a href=""><img alt="" src="../images/일식.jpg"></a>
			<div id="restaurantName">
				<a href="">정갈한 일식</a>
				<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 일식</span>
			</div>
		</div>
		<div class="restaurant num5">
			<a href=""><img alt="" src="../images/디저트.jpg"></a>
			<div id="restaurantName">
				<a href="">달콤한 디저트</a>
				<p><img alt="" src="../images/위치아이콘.png"><span>서울 - 디저트</span>
			</div>
		</div>
	</div>
</body>
</html>