$(document).on("click","#CalDate",function(){
		$(this).addClass('on').siblings().removeClass('on');
	})
	
	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radBokd]").click(function(){
	 
	        if($("input[name=radBokd]:checked").val() == "QD01M01"){
	            $("select[name=selLocal]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radBokd]:checked").val() == "QD01M02"){
	              $("select[name=selLocal]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});

$(function(){
	    // datepicker -  jquery ui
	    datepickerEvent = function datepicker() {

	        var allPlayDates = [];
	        allPlayDates.push("20190127".maskDate());
	        allPlayDates.push("20190129".maskDate());
	        allPlayDates.push("20190201".maskDate());
	        allPlayDates.push("20190205".maskDate());
	        allPlayDates.push("20190206".maskDate());
	        allPlayDates.push("20190301".maskDate());
	        allPlayDates.push("20190305".maskDate());
	
	        $( ".datepicker" ).datepicker({
	            tempHtmlShow : true, // 개발
	            allPlayDateClassName:"meagBox-selected-day", // 개발
	            allPlayDates : allPlayDates, // 개발
	            showButtonPanel : true, // 개발
	            showOn: "both", // 개발
	            buttonText: "날짜 선택", // css 에서 배경 처리
	        });
	
	        $( ".date-calendar" ).datepicker({
	            showOn: "both",
	            buttonText: "날짜 선택", // css 에서 배경 처리
	            dateFormat: 'yy.mm.dd',
	            prevText: '이전 달',
	            nextText: '다음 달',
	            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	            dayNm: ['일', '월', '화', '수', '목', '금', '토'],
	            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	            showMonthAfterYear: true,
	            yearSuffix: '년'
	        });
	    }
	    if( $('.datepicker').length > 0 || $('.date-calendar').length > 0 ) {
	        datepickerEvent();
	    }
	    
	    $('#endDate').datepicker('setDate', 'today');
	    
	    if( $('#CalDate').val() == 'D7') {
	    	$('#startDate').datepicker('setDate', '-1M');
	    	$('#endDate').datepicker('setDate', 'today');
	    }
	    
	    $(document).ready(function(){
	    	$(document).on("click", "button[id='CalDate']", function() {
	    		var date = $(this).val();

		    	if( date == 'D7') {
		    		$('#startDate').datepicker('setDate', '-7D');
		    		$('#endDate').datepicker('setDate', 'today');
		    	} 
				else if ( date == 'M1' ) {
		    		$('#startDate').datepicker('setDate', '-1M');
		    		$('#endDate').datepicker('setDate', 'today');
		    	} 
				else if ( date == 'M3' ) {
		    		$('#startDate').datepicker('setDate', '-3M');
		    		$('#endDate').datepicker('setDate', 'today');
		    	} 
		    	else if ( date == 'M6' ) {
		    		$('#startDate').datepicker('setDate', '-6M');
		    		$('#endDate').datepicker('setDate', 'today');
		    	}
	    	});
	    });
	    
	
});