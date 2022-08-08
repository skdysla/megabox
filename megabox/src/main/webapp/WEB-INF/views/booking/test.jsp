<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"/>
<script>
function print_here() {
	alert('호출됨1');
	var datepicker_code = '<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="position: absolute; top: 1824px; left: 836px; z-index: 1; display: block;"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a class="ui-datepicker-prev ui-corner-all ui-state-disabled" title="이전달"><span class="ui-icon ui-icon-circle-triangle-w">이전달</span></a><a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="다음달"><span class="ui-icon ui-icon-circle-triangle-e">다음달</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-year">2022</span>년&nbsp;<span class="ui-datepicker-month">8월</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th scope="col" class="ui-datepicker-week-end"><span title="일">일</span></th><th scope="col"><span title="월">월</span></th><th scope="col"><span title="화">화</span></th><th scope="col"><span title="수">수</span></th><th scope="col"><span title="목">목</span></th><th scope="col"><span title="금">금</span></th><th scope="col" class="ui-datepicker-week-end"><span title="토">토</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">31</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">1</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">2</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">3</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">4</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">5</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">6</span></td></tr><tr><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">7</span></td><td class="  ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default ui-state-highlight" href="#">8</a></td><td class="  ui-datepicker-current-day" data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default ui-state-active" href="#">9</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">10</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">11</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">12</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">13</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">14</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">15</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">16</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">17</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">18</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">19</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">20</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">21</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">22</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">23</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">24</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">25</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">26</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">27</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">28</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">29</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">30</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="7" data-year="2022"><a class="ui-state-default" href="#">31</a></td><td class=" ui-datepicker-other-month " data-handler="selectDay" data-event="click" data-month="8" data-year="2022"><a class="ui-state-default ui-priority-secondary" href="#">1</a></td><td class=" ui-datepicker-other-month " data-handler="selectDay" data-event="click" data-month="8" data-year="2022"><a class="ui-state-default ui-priority-secondary" href="#">2</a></td><td class=" ui-datepicker-week-end ui-datepicker-other-month " data-handler="selectDay" data-event="click" data-month="8" data-year="2022"><a class="ui-state-default ui-priority-secondary" href="#">3</a></td></tr></tbody></table><div class="ui-datepicker-buttonpane ui-widget-content"><button type="button" class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all" data-handler="today" data-event="click">오늘</button><button type="button" class="ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all" data-handler="hide" data-event="click">닫기</button></div></div>';
	$("#add_here").append(datepicker_code);
	
	show_datepicker();
}

function show_datepicker(){
	alert('호출됨2');
	if ($("#showHere").hasClass('hasDatepicker') === false) {
		alert('호출됨3');
		$("#showHere").datepicker();
	}
}


  $(function(){
    $('#datepicker').datepicker();
  })
  
  <script>
	$(document)
			.ready(
					function() {
						$("#please")
								.click(
										function() {
											console.log('호출됨!');
											window
													.open(
															"test2",
															"_blank",
															"toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");
										});

						/* var idHtml = document.getElementById('print_calendar');
						idHtml.value = "클릭됐지롱"; */

						/* $(function(){
						  $('#print_calendar').datepicker();
						}) */
						/* $("#print_calendar").datepicker({
						      dateFormat: 'yy-mm-dd' //달력 날짜 형태
						      ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
						      ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
						      ,changeYear: true //option값 년 선택 가능
						      ,changeMonth: true //option값  월 선택 가능                
						      ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
						      ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
						      ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
						      ,buttonText: "선택" //버튼 호버 텍스트              
						      ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
						      ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
						      ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
						      ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
						      ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
						      ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
						      ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
						  });                    
						  
						  //초기값을 오늘 날짜로 설정해줘야 합니다.
						  $("#print_calendar").datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후) */

					});
</script>
</script>
</head>
<body>
<input id="datepicker">

<div class="bg-line">
									<input type="text" id="showHere"
										class="" value="2022.08.09">
									<button type="button" class="btn-calendar-large" title="달력보기"
										onclick="print_here()">달력보기</button>
								</div>


<!-- <div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
		style="position: absolute; top: 1824px; left: 836px; z-index: 1; display: block;">
		<div
			class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
			<a class="ui-datepicker-prev ui-corner-all ui-state-disabled"
				title="이전달"><span class="ui-icon ui-icon-circle-triangle-w">이전달</span></a><a
				class="ui-datepicker-next ui-corner-all" data-handler="next"
				data-event="click" title="다음달"><span
				class="ui-icon ui-icon-circle-triangle-e">다음달</span></a>
			<div class="ui-datepicker-title">
				<span class="ui-datepicker-year">2022</span>년&nbsp;<span
					class="ui-datepicker-month">8월</span>
			</div>
		</div>
		<table class="ui-datepicker-calendar">
			<thead>
				<tr>
					<th scope="col" class="ui-datepicker-week-end"><span title="일">일</span></th>
					<th scope="col"><span title="월">월</span></th>
					<th scope="col"><span title="화">화</span></th>
					<th scope="col"><span title="수">수</span></th>
					<th scope="col"><span title="목">목</span></th>
					<th scope="col"><span title="금">금</span></th>
					<th scope="col" class="ui-datepicker-week-end"><span title="토">토</span></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">31</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">1</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">2</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">3</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">4</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">5</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">6</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">7</span></td>
					<td class="  ui-datepicker-today" data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default ui-state-highlight" href="#">8</a></td>
					<td class="  ui-datepicker-current-day" data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default ui-state-active" href="#">9</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">10</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">11</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">12</a></td>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">13</a></td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">14</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">15</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">16</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">17</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">18</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">19</a></td>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">20</a></td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">21</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">22</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">23</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">24</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">25</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">26</a></td>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">27</a></td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="7" data-year="2022"><a
						class="ui-state-default" href="#">28</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">29</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">30</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="7" data-year="2022"><a class="ui-state-default"
						href="#">31</a></td>
					<td class=" ui-datepicker-other-month " data-handler="selectDay"
						data-event="click" data-month="8" data-year="2022"><a
						class="ui-state-default ui-priority-secondary" href="#">1</a></td>
					<td class=" ui-datepicker-other-month " data-handler="selectDay"
						data-event="click" data-month="8" data-year="2022"><a
						class="ui-state-default ui-priority-secondary" href="#">2</a></td>
					<td class=" ui-datepicker-week-end ui-datepicker-other-month "
						data-handler="selectDay" data-event="click" data-month="8"
						data-year="2022"><a
						class="ui-state-default ui-priority-secondary" href="#">3</a></td>
				</tr>
			</tbody>
		</table>
		<div class="ui-datepicker-buttonpane ui-widget-content">
			<button type="button"
				class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all"
				data-handler="today" data-event="click">오늘</button>
			<button type="button"
				class="ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all"
				data-handler="hide" data-event="click">닫기</button>
		</div>
	</div>
	 -->
	
	

</body>
</html>