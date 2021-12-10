<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" type="text/css" href="MainPageCSS/main.css" />
<link rel="stylesheet" type="text/css" href="MainPageCSS/mainPage_con.css" />

<style type="text/css">
@media (min-width:1024px){}
@media (min-width:768px) and (max-width:1023px) {}
@media (max-width:767px) {}
	
	.foot { width: 100%; height: 100px; text-align: center;}
	.footCopy { width: 50%; float:left; line-height: 90px;}	
	.footCompany {width: 50%; float: right; line-height: 40px;}	
	
		
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container1">
		<div class="box">
			<img alt="봄" src="images/spring.jpg" width="680" height="510">
			<span>Spring</span>
		</div>
		<div class="box">
			<img alt="여름" src="images/summer.jpg" width="680" height="510">
			<span>Summer</span>
		</div>
		<div class="box">
			<img alt="가을" src="images/fall.jpg" width="680" height="510">
			<span>Fall</span>
		</div>
		<div class="box">
			<img alt="겨울" src="images/winter.jpg" width="680" height="510">
			<span>Winter</span>
		</div>
	</div>
	
	<div class="travel_container">
		<div>
			<img src="images/여행사진1.jpg" width="600" height="750">
		</div>
		<div>
			<p class="firstExplain">
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
				when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
				It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
				It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
				and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			</p>
			<a href="#"><input type="button" value="button" id="firstExplainBtn"></a>
		</div>
	</div>
	
	<div class="hotel_container">
		<div>
			<img src="images/여행사진2.jpg" width="600px" height="750">
		</div>
		<div class="secondExplain">
			<h3>The standard Lorem Ipsum passage,<br> used since the 1500s</h3>
			<br>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
				Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
			</p>
			<a href="#"><input type="button" value="button" id="secondExplainBtn"></a>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>