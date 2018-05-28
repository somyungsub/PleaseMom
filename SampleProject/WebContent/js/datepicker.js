$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});
$( function() {
	var dif_day = 0;
    $(".datepicker").datepicker({
    	onSelect : function() {
    		$( ".datepicker-to" ).datepicker( "destroy" );
    		var from_date = $(".datepicker").datepicker('getDate');		// 출발일 From
    		var today = new Date();										// 오늘날짜
    		var ONE_DAY = 1000*60*60*24;								// 하루 ms
    		var diffrence = Math.abs(from_date - today);				// 출발일from - 오늘날짜
    		dif_day = Math.floor((diffrence / ONE_DAY) + 1);		// 일로 환산

    		$(".datepicker-to").datepicker({
    	    	minDate: dif_day
    	    });
		},
    	minDate: 0
    });
    $(".datepicker-to").datepicker({
    	minDate: 0
    });
});