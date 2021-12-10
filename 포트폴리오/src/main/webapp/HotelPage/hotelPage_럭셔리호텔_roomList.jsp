<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelPage_럭셔리호텔_roomList</title>
<script type="text/javascript" src="../HeaderJS/jquery-1.8.1.min.js"></script>
<style type="text/css">

	* {list-style: none;}
	* a {text-decoration: none;}
	
	#back{display: none;}
	label {margin-left: 20px;}	
	
	*.room {
		position: relative; width: 1100px; height: 250px;
		margin: 0 auto; border: 1px solid #555; margin-bottom: 30px;}
		
	.room1_img { position: relative; float: left; width: 280px; height: 250px; overflow: hidden;}
	.moreInfo {position: absolute; bottom: 0; right:0; background: gray; color: white; padding: 5px;}
	.room1_con { position: relative; float: left; width:600px; height: 250px;}
	.room1_con h1 a {margin-left: 20px; color: #555; padding: 0;}
	.room1_con ul li {padding: 3px 0; font-size: 15px;}
	.room1_con table {position:absolute; width: 580px; height: 60px; text-align: center; top: 190px;}
	.room1_price {position:relative; float:left; text-align: center; width: 220px; height: 250px;}
	#moreInfo_btn {width: 200px; height: 50px; font-size: 30px; background: #0bff; color: #fff; cursor: pointer;}
	
	#acBall {position: absolute; left: 22px; top: 170px;}
	#wifiBall {position: absolute; left: 94px; top: 170px;}
	#tvBall {position: absolute; left: 166px; top: 170px;}
	#safeBall {position: absolute; left: 238px; top: 170px;}
	#barBall {position: absolute; left: 310px; top: 170px;}
	#callBall {position: absolute; left: 382px; top: 170px;}
	#kitBall {position: absolute; left: 454px; top: 170px;}
	#towelBall {position: absolute; left: 526px; top: 170px;}
	
</style>
<script type="text/javascript">

	$(function () {
		$('.moreInfo').hide();
		$('#room1_img').mouseover(function () {
			$('.moreInfo').slideDown(300);
		});
		$('#room1_img').mouseout(function () {
			$('.moreInfo').slideUp(300);
		});
		
		$('#acBall').hide();
		$('#acIcon').mouseover(function () {
			$('#acBall').show();
		});
		$('#acIcon').mouseout(function () {
			$('#acBall').hide();
		});
		
		$('#wifiBall').hide();
		$('#wifiIcon').mouseover(function () {
			$('#wifiBall').show();
		});
		$('#wifiIcon').mouseout(function () {
			$('#wifiBall').hide();
		});
		
		$('#tvBall').hide();
		$('#tvIcon').mouseover(function () {
			$('#tvBall').show();
		});
		$('#tvIcon').mouseout(function () {
			$('#tvBall').hide();
		});
		
		$('#safeBall').hide();
		$('#safeIcon').mouseover(function () {
			$('#safeBall').show();
		});
		$('#safeIcon').mouseout(function () {
			$('#safeBall').hide();
		});
		
		$('#barBall').hide();
		$('#barIcon').mouseover(function () {
			$('#barBall').show();
		});
		$('#barIcon').mouseout(function () {
			$('#barBall').hide();
		});
		
		$('#callBall').hide();
		$('#callIcon').mouseover(function () {
			$('#callBall').show();
		});
		$('#callIcon').mouseout(function () {
			$('#callBall').hide();
		});
		
		$('#kitBall').hide();
		$('#kitIcon').mouseover(function () {
			$('#kitBall').show();
		});
		$('#kitIcon').mouseout(function () {
			$('#kitBall').hide();
		});
		
		$('#towelBall').hide();
		$('#towelIcon').mouseover(function () {
			$('#towelBall').show();
		});
		$('#towelIcon').mouseout(function () {
			$('#towelBall').hide();
		});
	});

</script>
</head>
<body>
	<input type="checkbox" id="back">
	<label for="back"><a href="hotelPage_hotelList.jsp"><img alt="" src="../images/뒤로가기아이콘.png" width="40" height="40"></a></label>
	<div class="room room1">
		<div class="room1_img">
			<a href="hotelPage_럭셔리호텔_roomInfo.jsp"><img src="../images/room1.jpg" width="280" height="250" id="room1_img"></a>
			<div class="moreInfo">
				More Info
			</div>
		</div>
		<div class="room1_con">
			<h1><a href="hotelPage_럭셔리호텔_roomInfo.jsp">Room1</a></h1>
			<ul>
				<li>기준 2인/최대 3인</li>
				<li>싱글침대 1개, 더블침대 1개</li>
			</ul>
				<img id="acBall" src="../images/에어컨말풍선.png" width="30" height="30">
				<img id="wifiBall" src="../images/와이파이말풍선.png" width="30" height="30">
				<img id="tvBall" src="../images/티비말풍선.png" width="30" height="30">
				<img id="safeBall" src="../images/금고말풍선.png" width="30" height="30">
				<img id="barBall" src="../images/미니바말풍선.png" width="30" height="30">
				<img id="callBall" src="../images/전화말풍선.png" width="30" height="30">
				<img id="kitBall" src="../images/주방말풍선.png" width="30" height="30">
				<img id="towelBall" src="../images/수건말풍선.png" width="30" height="30">	
				
			<table>
				<tr>
					<td id="acIcon"><img src="../images/에어컨아이콘.png" width="30" height="30"></td>
					<td id="wifiIcon"><img src="../images/와이파이아이콘.png" width="30" height="30"></td>
					<td id="tvIcon"><img src="../images/티비아이콘.png" width="30" height="30"></td>
					<td id="safeIcon"><img src="../images/금고아이콘.png" width="30" height="30"></td>
					<td id="barIcon"><img src="../images/미니바아이콘.png" width="30" height="30"></td>
					<td id="callIcon"><img src="../images/전화아이콘.png" width="30" height="30"></td>
					<td id="kitIcon"><img src="../images/주방아이콘.png" width="30" height="30"></td>
					<td id="towelIcon"><img src="../images/수건아이콘.png" width="30" height="30"></td>
				</tr>
			</table>
		</div>
		<div class="room1_price">
			<br>
			<p style="font-size: 15px">1박 총</p>
			<p style="font-size: 35px; font-weight: bolder;">100,000원</p>
			<a href="hotelPage_럭셔리호텔_roomInfo.jsp"><input type="button" value="More Info" id="moreInfo_btn"></a>
		</div>
	</div>
</body>
</html>