/* 전체메뉴 슬라이드 효과 */
	$(function () {
	/* 전체메뉴 숨겨 놓기 */
		$('#allMenu_box').hide();
		
		
	/* 메뉴버튼을 클릭하면 비스듬하게 됫다가 다시 돌아오는 효과 */
		$('.headMenu').click(function (e) {
			e.preventDefault();
			$(window).scroll(function() {
				var scroll = $(window).scrollTop();
				if (scroll >= 50){
					$('#allMenu_box').slideUp(500);
					$('.headMenu').toggleClass('is-active')
				}else{
					false;
				}
			});
			$(this).toggleClass("is-active")
			
		});
		$('.allMenu_close').click(function (e) {
			e.preventDefault();
			$('.headMenu').toggleClass('is-active');
		});
		
	/* 메뉴버튼을 누르면 전체메뉴 창이 나타나는 효과 */
		$('.headMenu').click(function () {	/* 메뉴버튼을 누르면 메뉴창이 열리고 닫힘 */
			$('#allMenu_box').slideToggle(500);
		});
		
		$('.allMenu_close').click(function () {	/* X버튼을 누르면 메뉴창이 닫힘 */
			$('#allMenu_box').slideUp(500);
		});
		
		$('.headMenu').click(function () {	/* 메뉴버튼을 누르면 추천카테고리 영역에 열린 리스트컨텐츠 사라지게하기 */
			$('.allMenu_List').fadeOut(2000);
		});
		$('.allMenu_close').click(function () {  /*X버튼을 누르면 추천카테고리 영역에 열린 리스트컨텐츠 사라지게하기*/ 
			$('.allMenu_List').fadeOut(2000);
		});
	});
	
	/*$(function () {
		$(window).scroll(function () {
			$('#allMenu_box').slideUp(500)
		});
		$(window).scroll(function () {
			$('.headMenu').toggleClass('is-active')
		});
	});*/
	
	/*$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		if (scroll >= 50){
			$('#allMenu_box').slideUp(500);
			$('.headMenu').toggleClass('is-active')
		}
	});*/
	
	/* 전체 메뉴 속 리스트에 마우스를 올리면 아래 div 영역에 컨텐츠가 나타나는 효과 */
	$(document).ready (function() {
		
		$('#travel_seoul a').mouseover(function () {
			$('.travel_seoul').show();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_gyeonggi a').mouseover(function () {
			$('.travel_gyeonggi').show();
			$('.travel_seoul').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_gangwon a').mouseover(function () {
			$('.travel_gangwon').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_chungcheong a').mouseover(function () {
			$('.travel_chungcheong').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_jeolla a').mouseover(function () {
			$('.travel_jeolla').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_gyeongsang a').mouseover(function () {
			$('.travel_gyeongsang').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_hotel a').mouseover(function () {
			$('.hotel_hotel').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_pension a').mouseover(function () {
			$('.hotel_pension').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_guestHouse a').mouseover(function () {
			$('.hotel_guestHouse').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_motel a').mouseover(function () {
			$('.hotel_motel').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_korean a').mouseover(function () {
			$('.restaurant_korean').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_western a').mouseover(function () {
			$('.restaurant_western').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_chinese a').mouseover(function () {
			$('.restaurant_chinese').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_japanese a').mouseover(function () {
			$('.restaurant_japanese').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#travel_dessert a').mouseover(function () {
			$('.restaurant_dessert').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#information_transportation a').mouseover(function () {
			$('.information_transportation').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#information_picture a').mouseover(function () {
			$('.information_picture').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_promotionVideo').hide();
			$('.information_notice').hide();
		});
		$('#information_promotionVideo a').mouseover(function () {
			$('.information_promotionVideo').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_notice').hide();
		});
		$('#information_notice a').mouseover(function () {
			$('.information_notice').show();
			$('.travel_seoul').hide();
			$('.travel_gyeonggi').hide();
			$('.travel_gangwon').hide();
			$('.travel_chungcheong').hide();
			$('.travel_jeolla').hide();
			$('.travel_gyeongsang').hide();
			$('.hotel_hotel').hide();
			$('.hotel_pension').hide();
			$('.hotel_guestHouse').hide();
			$('.hotel_motel').hide();
			$('.restaurant_korean').hide();
			$('.restaurant_western').hide();
			$('.restaurant_chinese').hide();
			$('.restaurant_japanese').hide();
			$('.restaurant_dessert').hide();
			$('.information_transportation').hide();
			$('.information_picture').hide();
			$('.information_promotionVideo').hide();
		});
	/*컨텐츠 영역에서 마우스를 벗어나게 하면 사라지게 하는 효과*/
		$('.allMenu_List').mouseleave(function() {
			$('.allMenu_List').hide();
		});
	});
		
	
	
/* 아이디 비밀번호 찾기 탭 효과 */
	$(document).ready(function() {
		$(".tab_title li").click(function() {
			var idx = $(this).index();
		$(".tab_title li").removeClass("on");
		$(".tab_title li").eq(idx).addClass("on");
		$(".tab_cont > div").hide();
		$(".tab_cont > div").eq(idx).show();
		})
	});
	
/* 아이디 비밀번호 찾기 누르면 열리는 효과 */
	$(function () {
		$('.Login_Help_Page').hide();	/* 페이지 안보이게 숨겨놓기 */
		$('#popup').click(function () { 	/* 찾기 버튼 누르면 열리게 하기 */
			$('.Login_Help_Page').toggle(1000);
		});
		$('.background').click(function () {	/* 뒷배경 누르면 사라지게 하기 */
			$('.Login_Help_Page').hide();
		});
	});
	
/* 회원가입을 누르면 열리는 효과 */
	$(function () {
		$('.joinPage').hide();	/* 페이지 안보이게 숨김 */
		$('.join_membership').click(function () {	/* 회원가입 버튼 누르면 열림 */
			$('.joinPage').toggle(1000);
		});
		$('.background').click(function () {	/* 뒷배경 누르면 닫힘 */
			$('.joinPage').hide();
		});
	});
	
	function checkValue(){
		var form = document.joinForm;
		
		if(! form.id.value){
			alert("아이디를 입력하세요");
			return false;
		}
		if(form.idDuplication.value != "idCheck"){
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		if(! form.pw.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(form.pw.value != form.pw2.value){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if(! form.name.value){
			alert("이름을 입력하세요.");
			return false;
		}
		if(! form.year.value){
			alert("년도를 입력하세요.");
			return false;
		}
		if(isNaN(form.year.value)){
			alert("년도는 숫자만 입력 가능합니다.")
			return false;
		}
		if(form.month.value == "00"){
			alert("월을 선택하세요.");
			return false;
		}
		if(! form.day.value){
			alert("날짜를 입력하세요.");
			return false;
		}
		if(isNaN(form.day.value)){
			alert("날짜는 숫자만 입력가능합니다.");
			return false;
		}
		if(! form.gender.value){
			alert("성별을 선택해 주세요.");
			return false;
		}
		if(! form.email.value){
			alert("메일 주소를 입력하세요");
			return false;
		}
		if(! form.phone.value){
			alert("전화번호를 입력하세요");
			return false;
		}
		if(isNaN(form.phone.value)){
			alert("전화번호는 ' - '제외한 숫자만 입력해주세요.")
			return false;
		}
	}

// 비밀번호 유효성 검사
	function check_pw(){
        var pw = document.getElementById('joinPw').value;
        var pw2 = document.getElementById('joinPw2').value;
        var SC = ["!","@","#","$","%"];
        var check_SC = 0;

        if(pw.length < 6 || pw.length>16){
            window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
            document.getElementById('pw').value='';
        }
        for(var i=0;i<SC.length;i++){
            if(pw.indexOf(SC[i]) != -1){
                check_SC = 1;
            }
        }
        if(check_SC == 0){
            window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
            document.getElementById('pw').value='';
        }
        if(pw !='' && pw2 !=''){
            if(pw == pw2){
                document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                document.getElementById('check').style.color='blue';
            }
            else{
                document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                document.getElementById('check').style.color='red';
            }
        }
    }
// 아이디 중복체크 팝업창
	function openIdChk(){
		var id = document.joinForm.id.value;
		var url="Register/idCheck.jsp?id="+id;
		window.open(url,"chkForm","width=500,height=300,top=200,left=600");
	}
	function inputIdChk(){
		document.joinForm.idDuplication.value = "idUncheck";
	}
	
// 아이디 찾기 팝업창
	function openFindId(){
		var findid = "findId";
		window.open("about:blank",findid,"width=500,height=300,top=200,left=600");
		var findId = document.findId;
		findId.target = findid;
		findId.action = "FindIdPw/findIdPro.jsp";
		findId.submit();
	}
// 비밀번호 찾기 팝업창
	function openFindPw(){
		var findpw = "findPw";
		window.open("about:blank",findpw,"width=500,height=300,top=200,left=600");
		var findPw = document.findPw;
		findPw.target = findpw;
		findPw.action = "FindIdPw/findPwPro.jsp";
		findPw.submit();
	}
// 아이디 저장
	window.onload = function(){
		if(getCookie("id")){	// getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
			document.loginForm.user_id.value = getCookie("id");	//input 이름이 id인곳에 getCookie("id")값을 넣어줌
			document.loginForm.idsave.checked = true;	// 체크는 체크됨으로
		}
	}
	function setCookie(name,value,expiredays){	//쿠키 저장함수
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString()+";"
	}
	function getCookie(Name){	 // 쿠키 불러오는 함수
		var search = Name+"=";
		if(document.cookie.length > 0){
			offset = document.cookie.indexOf(search);
			if(offset != -1){
				offset += search.length;
				end = document.cookie.indexOf(";",offset);
				if(end == -1)
					end = document.cookie.length;
				return unescape(document.cookie.substring(offset,end));
			}
		}
	}
	function sendit(){
		var frm = document.loginForm;
		if(!frm.user_id.value){
			alert("아이디를 입력 해주세요!");
			frm.user_id.focus();
			return;
		}
		if(!frm.user_pw.value){
			alert("비밀번호를 입력 해주세요!");
			frm.user_pw.focus();
			return;
		}
		if(document.loginForm.idsave.checked == true){	 // 아이디 저장을 체크 하였을때
			setCookie("id",document.loginForm.user_id.value,7);	//쿠키이름을 id로 아이디입력필드값을 7일동안 저장
		}else{	// 아이디 저장을 체크 하지 않았을때
			setCookie("id",document.loginForm.user_id.value,0);
		}
		document.loginForm.submit();	//유효성 검사가 통과되면 서버로 전송
	}