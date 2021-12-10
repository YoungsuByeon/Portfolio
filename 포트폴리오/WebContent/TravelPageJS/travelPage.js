


/*지역 리스트에 마우스를 올리면 지도에 색이 바뀌면서 콘텐츠 영역 나오게 하기*/
	$(function () {
		$('.show_gg').hide();
		$('.show_gw').hide();
		$('.show_cc').hide();
		$('.show_jl').hide();
		$('.show_gs').hide();
		
		$('.서울').mouseenter(function () {
			$('#서울').fadeIn(300);
			$('.show_seoul').show();
			$('.show_gg').hide();
			$('.show_gw').hide();
			$('.show_cc').hide();
			$('.show_jl').hide();
			$('.show_gs').hide();
		});
		$('.서울').mouseout(function () {
			$('#서울').fadeOut(300);
		});
	/* ----------------------------------- */
		
		$('.경기').mouseenter(function () {
			$('#경기').fadeIn(300);
			$('.show_gg').show();
			$('.show_seoul').hide();
			$('.show_gw').hide();
			$('.show_cc').hide();
			$('.show_jl').hide();
			$('.show_gs').hide();
		});
		$('.경기').mouseout(function () {
			$('#경기').fadeOut(300);
		});
	/* ----------------------------------- */
		
		$('.강원').mouseenter(function () {
			$('#강원').fadeIn(300);
			$('.show_gw').show();
			$('.show_seoul').hide();
			$('.show_gg').hide();
			$('.show_cc').hide();
			$('.show_jl').hide();
			$('.show_gs').hide();
		});
		$('.강원').mouseout(function () {
			$('#강원').fadeOut(300);
		});
	/* ----------------------------------- */
		
		$('.충청').mouseenter(function () {
			$('#충청').fadeIn(300);
			$('.show_cc').show();
			$('.show_seoul').hide();
			$('.show_gg').hide();
			$('.show_gw').hide();
			$('.show_jl').hide();
			$('.show_gs').hide();
		});
		$('.충청').mouseout(function () {
			$('#충청').fadeOut(300);
		});
	/* ----------------------------------- */
		
		$('.전라').mouseenter(function () {
			$('#전라').fadeIn(300);
			$('.show_jl').show();
			$('.show_seoul').hide();
			$('.show_gg').hide();
			$('.show_gw').hide();
			$('.show_cc').hide();
			$('.show_gs').hide();
		});
		$('.전라').mouseout(function () {
			$('#전라').fadeOut(300);
		});
	/* ----------------------------------- */
		
		$('.경상').mouseenter(function () {
			$('#경상').fadeIn(300);
			$('.show_gs').show();
			$('.show_seoul').hide();
			$('.show_gg').hide();
			$('.show_gw').hide();
			$('.show_cc').hide();
			$('.show_jl').hide();
		});
		$('.경상').mouseout(function () {
			$('#경상').fadeOut(300);
		});
	});
/*컨텐츠 영역에서 마우스가 벗어나면 사라지게 하기*/
	$(function() {
		$('.show_con').mouseleave(function() {
			/*$('#show_seoul').show();*/
			/*$('.show_con').hide();*/
		});
	});

	
	