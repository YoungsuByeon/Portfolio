<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" type="text/css" href="MainPageCSS/main.css" />
<link rel="stylesheet" type="text/css" href="HeaderCSS/head.css" />

<script type="text/javascript" src="HeaderJS/jquery-1.8.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="HeaderJS/respond.src.js"></script>
<script type="text/javascript" src="HeaderJS/jquery.js"></script>
<script type="text/javascript" src="HeaderJS/head.js"></script>
<script type="text/javascript">

	

</script>
</head>
<body>
	<input type="checkbox" id="sidebar">
	<header>
		<div class="header">
			<nav class="mainMenu">
				<a href="index.html"><img alt="logo" src="images/logo_black.png" width="200px" height="80px" class="headLogoImg"></a>
				<h1 class="skip">메인메뉴</h1>
				<ul class="mainMenuList">
					<li class="dropDown">
						<a href="travelPage.jsp" class="travelIcon">
							<img alt="여행지" src="images/airplane_black.png">
							<img alt="여행지" src="images/airplane_white.png">
							<span>Travel</span>
						</a>
						<div class="dropDown_list" id="list1">
							<a href="#">서울</a>
							<a href="#">경기도</a>
							<a href="#">강원도</a>
							<a href="#">충청도</a>
							<a href="#">전라도</a>
							<a href="#">경상도</a>
						</div>
					</li>
					<li class="dropDown">
						<a href="hotelPage.jsp" class="hotelIcon">
							<img alt="숙박" src="images/hotel_black.png">
							<img alt="숙박" src="images/hotel_white.png">
							<span>Hotel</span>
						</a>
						<div class="dropDown_list" id="list2">
							<a href="#">호텔</a>
							<a href="#">펜션</a>
							<a href="#">게스트하우스</a>
							<a href="#">모텔</a>
						</div>
					</li>
					<li class="dropDown">
						<a href="restaurantPage.jsp" class="restaurantIcon">
							<img alt="음식점" src="images/restaurant_black.png">
							<img alt="음식점" src="images/restaurant_white.png">
							<span>Restaurant</span>
						</a>
						<div class="dropDown_list" id="list3">
							<a href="#">한식</a>
							<a href="#">양식</a>
							<a href="#">중식</a>
							<a href="#">일식</a>
							<a href="#">디저트</a>
						</div>
					</li>
				</ul>
				<table >
					<h1 class="skip">SNS 아이콘</h1>
					<tr class="snsImg">
						<td><a href="https://www.instagram.com">
								<img class="instagram1" alt="instagram" 
									src="images/instagram1.png"
									onmouseover="this.src='images/instagram2.png'"
									onmouseout="this.src='images/instagram1.png'">
							</a></td>
						<td><a href="https://www.facebook.com">
								<img class="facebook1" alt="facebook" 
									src="images/facebook1.png"
									onmouseover="this.src='images/facebook2.png'"
									onmouseout="this.src='images/facebook1.png'">
							</a></td>
						<td><a href="https://www.youtube.com">
								<img class="youtube1" alt="youtube" 
									src="images/youtube1.png"
									onmouseover="this.src='images/youtube2.png'"
									onmouseout="this.src='images/youtube1.png'">
							</a></td>
					</tr>
					<h1 class="skip">내정보 / 전체메뉴</h1>
					<tr class="myPage">
						<td></td>
						<td>
							<label class="headMenu">
								<span class="headMenuLine"></span>
								<span class="headMenuLine"></span>
								<span class="headMenuLine"></span>
							</label>
						</td>
						<td>
							<input type="checkbox" id="sidebar">
							<label for="sidebar"><a><img alt="내정보" src="images/사람아이콘.png"></a></label>
						</td>
					</tr>
				</table>
			</nav>
		</div>
	</header>
<!-- 로그인 창 -->
			<div class="login_sideBar">
				<div class="login">
					<div class="closeIcon">
						<legend class="skip">닫기 버튼</legend>
						<input type="checkbox" id="sidebar">
						<label for="sidebar">
							<span></span>
							<span></span>
						</label>
					</div>
					<h1><a href="index.html"><img alt="메인페이지로가는 로고 이미지" src="images/logo_black.png" width="200px" height="100px"></a></h1>
					<form action="Login/login.jsp" method="post" name="loginForm" id="loginForm">
						<legend class="skip">로그인</legend>
						<p>
							<label for="loginId" class="skip">아이디</label>
							<input id="loginId" name="user_id" type="text" placeholder="아이디">
						</p>
						<p>
							<label for="loginPw" class="skip">비밀번호</label>
							<input id="loginPw" name="user_pw" type="password" placeholder="비밀번호">
						</p>
						<ul>
							<li><label class="remember"><input type="checkbox" name="idsave" value="saveOk">아이디 저장</label></li>
							<li><input type="submit" name="submit" value="로그인" onclick="sendit()">
						</ul>
					</form>
					<div class="login-help">
						<input type="checkbox" id="popup">
						<label for="popup"><a><span>아이디 / 비밀번호 찾기</span></a></label>
						<div>
							<label for="popup"></label>
						</div>
					</div>
					<div class="join_membership">
						<input type="checkbox" id="join_member">
						<label for="join_member"><a href="#"><span>회원가입</span></a></label>
					</div>
				</div>
			</div>
			<label for="sidebar" class="background"></label>
		
<!-- 아이디 / 비밀번호 찾기 팝업창 -->
		<div class="Login_Help_Page">
			<legend class="skip">닫기 버튼</legend>
			<div class="loginCloseIcon">
				<input type="checkbox" id="loginClose">
				<label for="popup">
					<span></span>
					<span></span>
				</label>
			</div>
			<a href="index.html"><img src="images/logo_black.png" width="200" height="100"></a>
			<ul class="tab_title">
				<li class="on">아이디 찾기</li>
				<li>비밀번호 찾기</li>
			</ul>
			<div class="tab_cont">
				<div class="on">
					<h3>아이디 찾기</h3>
					<p>가입시 입력하신 이메일을 통해 찾을 수 있습니다.</p>
					<form action="#" method="post" name="findId" id="findId">	
						<table class="type1">
							<tr>
							 	<th><input type="text" name="name" placeholder="이름"></th>
							</tr>
							<tr>
								<th><input type="text" name="email" placeholder="이메일"></th>
							</tr>
							<tr>
								<th><input class="btn" value="찾기" type="button" onclick="openFindId()"></th>
							</tr>
						
						</table>
					</form>
				</div>
				<div>
					<h3>비밀번호 찾기</h3>
					<p>이름, 가입한 아이디, 이메일을 통해 찾으실 수 있습니다.</p>
					<form action="#" method="post" name="findPw" id="findPw">
						<table class="type2">
							<tr>
								<th><input type="text" name="id" placeholder="아이디"></th>
							</tr>
							<tr>
							 	<th><input type="text" name="name" placeholder="이름"></th>
							</tr>
							<tr>
								<th><input type="text" name="email" placeholder="이메일"></th>
							</tr>
							<tr>
								<th><input class="btn" type="button" value="찾기" onclick="openFindPw()"></th>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		
		
<!-- 회원가입 팝업 창 -->
		<div class="joinPage">
			<legend class="skip">닫기버튼</legend>
			<div class="joinPage_closeIcon">
				<input type="checkbox" id="joinPageClose">
				<label for="join_member">
					<span></span>
					<span></span>
				</label>
			</div>
			<a href="index.html"><img alt="메인페이지로 가는 로고이미지" src="images/logo_black.png"></a>
			<form action="Register/register.jsp" method="post" name="joinForm" id="registerForm" onsubmit="return checkValue()">
				<p>
					<label for="joinId"	class="skip">아이디</label>
					<input id="joinId" type="text" placeholder="아이디" name="id" onkeydown="inputIdChk()">
					<a href="#"><input id="joinId_check" type="button" value="중복확인" onclick="openIdChk()" target="_blank"></a>
					<input type="hidden" name="idDuplication" value="idUncheck">
				</p>
				<p>
					<label for="joinPw" class="skip">비밀번호</label>
					<input id="joinPw" type="password" placeholder="비밀번호" onchange="check_pw()" name="pw">
				</p>
				<p>
					<label for="joinPw" class="skip">비밀번호 재확인</label>
					<input id="joinPw2" type="password" placeholder="비밀번호 재확인" onchange="check_pw()" name="pw2">
					<br>&nbsp;<span id="check"></span>
				</p>
				<p>
					<label for="joinName" class="skip">이름</label>
					<input id="joinName" type="text" placeholder="이름" name="name">
				</p>
				<p>
					<label for="joinBirth" class="skip">생년월일</label>
					<input id="joinYear" type="text" placeholder="생년(4자)" maxlength="4" name="year">
					<label for="user_Month" class="skip">생월</label>
					<select id="joinMonth" name="month">
						<option value="00">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<label for="joinDay" class="skip">생일</label>
					<input id="joinDay" type="text" placeholder="일" maxlength="2" name="day">
				</p>
				<p class="joinGender_box">
					<label for="joinGender">성별</label>
					<input type="radio" name="gender" id="joinGender_male" value="남"><label for="joinGender_male">남</label>
					<input type="radio" name="gender" id="joinGender_female" value="여"><label for="joinGender_female">여</label>
				</p>
				<p>
					<label for="joinEmail" class="skip">이메일</label>
					<input id="joinEmail" type="text" placeholder="본인 확인 이메일" name="email">
				</p>
				<p>
					<label for="joinPhone" class="skip">휴대폰 번호</label>
					<input id="joinPhone" type="text" placeholder="전화번호 입력 '-'제외" maxlength="11" name="phone">
					<input id="joinPhone_codeGet" type="button" value="인증번호 받기">
					<input id="joinPhone_codeEnter" type="text" placeholder="인증번호를 입력하세요">
				</p>
				<p>
					<label for="joinBtn" class="skip">가입하기</label>
					<input id="joinBtn" type="submit" value="가입하기">
				</p>
			</form>
		</div>

		
<!-- 전체 메뉴 영역 -->
	<section>
		<div class="allMenu">
			<nav id="allMenu_box">
				<div class="searchAera">
					<table> 
						<tr>
							<th id="searchIcon">
								<div class="search">
									<form action="" autocomplete="on">
										<input id="search" name="search" type="text" placeholder="검색어를 입력해 주세요">
										<input id="search_submit" value="Rechercher" type="submit">
									</form>
								</div>
							</th>
							<th>
								<div class="popular_search">
									<ul class="rank-list">
						             	<li>인기 검색어</li>
						                <li><a href="#">1 순위</a></li>
						                <li><a href="#">2 순위</a></li>
						                <li><a href="#">3 순위</a></li>
						                <li><a href="#">4 순위</a></li>
						                <li><a href="#">5 순위</a></li>
						                <li><a href="#">6 순위</a></li>
						                <li><a href="#">7 순위</a></li>
						                <li><a href="#">8 순위</a></li>
						                <li><a href="#">9 순위</a></li>
						                <li><a href="#">10 순위</a></li>
						        	</ul>
					            </div>
							</th>

	
<script type="text/javascript">

$(document).ready(function(){
	var height =  $(".popular_search").height();
	var num = $(".rank-list li").length;
	var max = height * num;
	var move = 0;
	function noticeRolling(){
		move += height;
		$(".rank-list").animate({"top":-move},600,function(){
			if( move >= max ){
				$(this).css("top",0);
				move = 0;
			};
		});
	};
	noticeRollingOff = setInterval(noticeRolling,2000);
});		
        
</script>

							<th class="allMenu_close">
								<input type="checkbox" id="allMenu_close">
									<label>
										<span></span>
										<span></span>
									</label>
							</th>
						</tr>
					</table>
				</div>
				<h1 class='skip'>전체메뉴</h1>
				<ul class="allMenu_list">
					<li><a href="travelPage.jsp" id="allMenu_nav">Travel</a>
						<ul class="">
							<li id="travel_seoul"><a href="#">서울</a></li>
							<li id="travel_gyeonggi"><a href="#">경기도</a></li>
							<li id="travel_gangwon"><a href="#">강원도</a></li>
							<li id="travel_chungcheong"><a href="#">충청도</a></li>
							<li id="travel_jeolla"><a href="#">전라도</a></li>
							<li id="travel_gyeongsang"><a href="#">경상도</a></li>
						</ul>
					</li>
					<li><a href="hotelPage.jsp" id="allMenu_nav">Hotel</a>
						<ul>
							<li id="travel_hotel"><a href="#">호텔</a></li>
							<li id="travel_pension"><a href="#">펜션</a></li>
							<li id="travel_guestHouse"><a href="#">게스트하우스</a></li>
							<li id="travel_motel"><a href="#">모텔</a></li>
						</ul>
					</li>
					<li><a href="restaurantPage.jsp" id="allMenu_nav">Restaurant</a>
						<ul>
							<li id="travel_korean"><a href="#">한식</a></li>
							<li id="travel_western"><a href="#">양식</a></li>
							<li id="travel_chinese"><a href="#">중식</a></li>
							<li id="travel_japanese"><a href="#">일식</a></li>
							<li id="travel_dessert"><a href="#">디저트</a></li>
						</ul>
					</li>
					<li><a href="ex.html" id="allMenu_nav">Information</a>	
						<ul>
							<li id="information_transportation"><a href="#">대중교통</a></li>
							<li id="information_picture"><a href="#">관광사진</a></li>
							<li id="information_promotionVideo"><a href="#">홍보영상</a></li>
							<li id="information_notice"><a href="#">공지사항</a></li>
						</ul>
					</li>	
				</ul>
				
				<div class="menuRecommend">
					빨간색에서
				</div>
				<div class="allMenu_ListCon">
					<div class="allMenu_List travel_seoul" id="allMenu_list">
						서울 추천 컨텐츠
					</div>
					<div class="allMenu_List travel_gyeonggi" id="allMenu_list">
						경기도 추천 컨텐츠
					</div>
					<div class="allMenu_List travel_gangwon" id="allMenu_list">
						강원도 추천 컨텐츠
					</div>
					<div class="allMenu_List travel_chungcheong" id="allMenu_list">
						충청도 추천 컨텐츠
					</div>
					<div class="allMenu_List travel_jeolla" id="allMenu_list">
						전라도 추천 컨텐츠
					</div>
					<div class="allMenu_List travel_gyeongsang" id="allMenu_list">
						경상도 추천 컨텐츠
					</div>
					<div class="allMenu_List hotel_hotel" id="allMenu_list">
						호텔 추천 컨텐츠
					</div>
					<div class="allMenu_List hotel_pension" id="allMenu_list">
						펜션 추천 컨텐츠
					</div>
					<div class="allMenu_List hotel_guestHouse" id="allMenu_list">
						게스트하우스 추천 컨텐츠
					</div>
					<div class="allMenu_List hotel_motel" id="allMenu_list">
						모텔추천 컨텐츠
					</div>
					<div class="allMenu_List restaurant_korean" id="allMenu_list">
						한식 추천 컨텐츠
					</div>
					<div class="allMenu_List restaurant_western" id="allMenu_list">
						양식 추천 컨텐츠
					</div>
					<div class="allMenu_List restaurant_chinese" id="allMenu_list">
						중식 추천 컨텐츠
					</div>
					<div class="allMenu_List restaurant_japanese" id="allMenu_list">
						일식 추천 컨텐츠
					</div>
					<div class="allMenu_List restaurant_dessert" id="allMenu_list">
						디저트 추천 컨텐츠
					</div>
					<div class="allMenu_List information_transportation" id="allMenu_list">
						대중교통 추천 컨텐츠
					</div>
					<div class="allMenu_List information_picture" id="allMenu_list">
						관광사진 추천 컨텐츠
					</div>
					<div class="allMenu_List information_promotionVideo" id="allMenu_list">
						홍보영상 추천 컨텐츠
					</div>
					<div class="allMenu_List information_notice" id="allMenu_list">
						공지사항 추천 컨텐츠
					</div>
				</div>
			</nav>
		</div>
	</section>
</body>
</html>