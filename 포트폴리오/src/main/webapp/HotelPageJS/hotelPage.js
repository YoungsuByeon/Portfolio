	/*인원 체크 창 여닫기*/
	$(function () {
		$('.select_person').hide();
		$('#reservation_person').click(function () {
			if($('.select_person').is(':visible')){
				$('.select_person').hide();
			}else{
				$('.select_person').show();
			}
		});
		$('#submit').click(function() {
			$('.select_person').hide();
		});
	});
	
	/*인원을 누르면 위에 인원 체크 창에 출력*/
	function apply() {
		var adult = document.getElementById("result1");
		var kid = document.getElementById("result2");
		var result = document.getElementById("reservation_person");
		
		result.value = "성인 "+adult.value+"명, "+"어린이 "+kid.value+"명";
		
	}
	
	/*$('#kategori1').click(function() {
		$('#kategori1').css('color','#0bff');
	});*/

