<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" charEncoding="utf-8" />
    
<!DOCTYPE html>
<div class="container">
	
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="/booking" title="예매 페이지로 이동">예매 <!-- 예매 --></a>
					<a class="no-link" title="예매완료">예매완료 <!-- 예매완료 --></a>
				</div>
			</div>
		</div>
	
	<!--// page-tit-area -->

	<!-- contents -->
	<div id="contents" class="">
		<!-- inner-wrap -->
		<div class="inner-wrap">
			<!-- quick-reserve -->
			<div class="quick-reserve">
				<h2 class="tit purple">예매완료 <!-- 예매완료 --></h2>

				

				<!-- reserve-finish -->
				<div class="reserve-finish">
					<!-- reserve-ininfomation-box -->
					<div class="reserve-ininfomation-box">
						<div class="movie-poster-area">
							<p>
								티켓 예매번호 <!-- 티켓 예매번호 -->
								<span class="roboto">9423-785-40980</span>
							</p>
							<img src="https://img.megabox.co.kr/SharedImg/2022/08/02/hQsvDEd41AY0pmON6fAhJ55ouwS5K3wb_316.jpg" alt="놉" onerror="noImg(this)">
						</div>

						<!-- movie-infomation-area -->
						<div class="movie-infomation-area">
							<div class="movie-info-top">
								<p class="tit">
									<strong>예매가 완료되었습니다 <!-- 예매가 완료되었습니다 --><i>!</i></strong>
									
										<span class="righten"> <i class="iconset ico-circle-point"></i> 고객님의 상영익일 적립예정 포인트는 <!-- 고객님의 상영익일 적립예정 포인트는 --> <em>600P</em>입니다. <!-- 입니다. --></span>
									
								</p>
							</div>

							<div class="movie-info-middle">
								<ul class="dot-list gray">
									<li><span>예매영화 <!-- 예매영화 --></span> 놉 / 2D(자막)</li>
									<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span> 상봉 / 6층 컴포트 2관</li>
									<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;2022.08.20 (토) 10:40</li>
									<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;성인 1명</li>
									<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;J열 6</li>
									<li><span>전화번호 <!-- 전화번호 --></span> &nbsp;010-2338-1814</li>
									<li>
										<span>결제정보 <!-- 결제정보 --></span>
										<strong class="roboto">12,000</strong> 원 <!-- 원 --><br>
										<em></em>
									</li>
								</ul>

								
							</div>

							<!-- movie-info-bottom -->
							
								<div class="movie-info-bottom">
									<div class="add-send">
										예매정보 추가 발송 <!-- 예매정보 추가 발송 -->
										<a href="#tooltip01_01" class="tooltip hover" title="입력하신 번호로 예매정보를 추가발송합니다.">
											<span><i class="iconset ico-question-white">&nbsp;</i></span>
											<div class="ir" id="tooltip01_01" data-width="220">
												입력하신 번호로 예매정보를 추가발송합니다. <!-- 입력하신 번호로 예매정보를 추가발송합니다. -->
											</div>
										</a>
										
										<input type="text" title="연락처 입력" class="input-text w150px ml10" maxlength="11" id="inp_sms_rcv_no">
										<button type="button" class="button" id="btn_re_send_sms">전송 <!-- 전송 --></button>
									</div>

									
										<!-- 레이어 : 추후 적립 -->
										





<script type="text/javascript">
//예매 사용 카드번호 체크
$.fn.megaBoxCardNumberCheck = function() {
    $(this).on("keypress",function(e){
        if ( !e.key.isNumber() && e.key != '-') return false;
    })
    $(this).on("focus",function(e){
    	$(this).val($('#'+$(this).attr('id')+'_hid').val());
    })
    $(this).on("focusout",function(e){
    	var val = $(this).val().replace(/[^0-9]+/g, '');
        $(this).val(val);
        $('#'+$(this).attr('id')+'_hid').val(val);

		var makNo = $(this).val().maskCardNo();
		var varArr = makNo.split('-');
		if (varArr.length > 3) {
			varArr[2] = varArr[2].replaceAll(/[0-9]/g, '*');
		}

		$(this).val(varArr.join("-"));
    })
};

$(function() {
	//OK 캐쉬백 적립대상 금액 조회
	selectSaveAmount();

	$("#card_no").megaBoxCardNumberCheck();

	//OK 캐쉬백 인증 버튼 클릭
	$('#btn_save_point').on('click', function() {
		savePointRec();
	});

	$('input[name=radio_payment]').change(function(){
		$('#saveMethodname').val($(this).val());
	});

	$('#closeButton').click(function(){
		$('#cash_back .btn-modal-close').click();
	});

});

//OK 캐쉬백 적립대상 금액 조회
function selectSaveAmount() {
	var transNo       = $("#transNo").val();
	var paramData     = {tranNo:transNo};

	$.ajax({
        url: "/on/oh/ohz/PayBooking/selectSaveAmount.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
		data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
        	//console.log(data);
        	if (data.returnMap.resvrObjAt == 'Y') {
        		$('.point-save').show();
        		$('#oksaveAmount').val(data.returnMap.okSaveAmount);
        		$('#lpointsaveAmount').val(data.returnMap.lpointSaveAmount);
        	} else {
        		$('.point-save').hide();
        		$('#oksaveAmount').val(0);
        		$('#lpointsaveAmount').val(0);
        	}
        },
        error: function(xhr,status,error){
        	var err = JSON.parse(xhr.responseText);
        	//err.statCd 에 따라서 이전화면으로 리턴 가능토록
        	errBookingChk(err.msg);
        }
	});
}

//OK 캐쉬백 적립
function savePointRec() {
	var transNo       = $("#transNo").val();
	var saveAmount    = $("#saveAmount").val();
	var cardNo        = $("#card_no_hid").val();
	var methodName    = $("#saveMethodname").val();
	var paramData     = {tranNo:transNo, saveAmount:saveAmount, cardNo:cardNo, methodName:methodName};

	if (cardNo.length < 15) {
		gfn_alertMsgBox('카드 번호를 입력하세요.');
		$("#card_no").focus();
		return;
	}


	$.ajaxMegaBox({
        url: "/on/oh/ohz/PayBooking/savePointRec.do",
        type: "POST",
        data: JSON.stringify(paramData),
		async: false,
        sessionAt : true,
        success: function (data, textStatus, jqXHR) {
        	//console.log(data);

        	if (data.statCd != "0") {
        		gfn_alertMsgBox(data.msg);
        	} else {
        		gfn_alertMsgBoxSize(data.returnMap.msg, 350, 250);
        		$('.point-save').hide();
        	}

        	//닫기버튼 클릭
        	$('#btn_close_point').click();
        },
        error: function(xhr,status,error){
        	var err = JSON.parse(xhr.responseText);
        	//err.statCd 에 따라서 이전화면으로 리턴 가능토록
        	errBookingChk(err.msg);
        },
		beforeSend: function () {

		}
	});
}

//오류메시지 체크 : 999 로 시작되는 오류 메시지 처음페이지로 리턴
function errBookingChk(msg) {
	//알림메시지 노출
	if (msg != null && msg != "") {
		if (msg.indexOf("999:") == 0) {
			var almsg = msg.substring(4, msg.length);
			gfn_alertMsgBox({ msg: almsg });
		} else {
			if (msg.indexOf("9999:") == 0) {
				var almsg = msg.substring(5, msg.length);
				gfn_alertMsgBox({ msg: almsg });
			} else {
				gfn_alertMsgBox({ msg: msg });
			}
		}
	}
}

</script>

<input type="hidden" id="saveMethodname" value="oksave">
<input type="hidden" id="card_no_hid">
<div class="point-save">
	<a href="#cash_back" class="button btn-modal-open white" w-data="600" h-data="450" title="제휴포인트 추후 적립" style="width:160px;">제휴포인트 추후 적립 <!-- OK캐쉬백 적립 --></a>

	<!-- 레이어 : 추후적립 -->
	<section id="cash_back" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">제휴포인트 추후 적립 <!-- 제휴포인트 추후 적립 --></h3>
			</header>

			<div class="layer-con">
				<div class="pop-tit" style="color: #444;">OK캐쉬백 또는 L.POINT의 카드번호를 입력해주세요.</div>
				<div class="popup-gray mid-info-box mb10">
					<div class="pop-search-area line-wid">
						<div class="pop-search-area-line">
                            <p class="sh-txt reset"><label for="okcashbag_card_num" style="color: #444;">적립처</label></p>
							<input type="hidden" id="trans_no" title="거래번호 입력" class="input-text w250px x-small" value="13112208180094461660" maxlength="20">

							<div class="radio-group settx">
                                <span class="dinraido">
                                    <input type="radio" name="radio_payment" id="radio_001" value="oksave" checked="checked"> <label for="radio_001" class="icon_ok mr20">OK캐쉬백</label>
								</span>

                                <span class="dinraido">
									<input type="radio" name="radio_payment" id="radio_002" value="lpsave"> <label for="radio_002" class="icon_lpoint">L.POINT</label>
								</span>
							</div>
						</div>

						<div class="pop-search-area-line">
                            <p class="sh-txt reset"><label for="card_no" style="color: #444;">카드번호</label></p>

							<div class="sh-input">
								<input type="text" id="card_no" title="카드번호'-'없이 입력(16자리)" class="input-text w270px x-small" placeholder="카드번호'-'없이 입력(16자리)" maxlength="19">
							</div>

							<!-- <div class="sh-btn">
								<button type="button" class="button x-small gray">조회</button>
							</div> -->
						</div>

					</div>
				</div>

				<div class="box-border v1 use-guide mt10">
					<p class="tit">이용안내</p>

                   	<ul class="dot-list gray" style="line-height:1.5; color:#444;">
						<li>OK캐쉬백과 L.POINT중 하나의 제휴포인트만 적립 가능합니다.</li>
						<li>할인 및 결제수단에 따라 적립 가능한 포인트가 상이할 수 있습니다.</li>
						<li>제휴 포인트 적립은 상영 당일까지만 적립 가능하며, 상영일이 지난 후에는 적립이 불가합니다.</li>
					</ul>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button small close-layer" id="btn_close_point">닫기</button>
				<button type="button" class="button small purple" id="btn_save_point">적용</button>
			</div>

			<button type="button" class="btn-modal-close">레이어 닫기 <!-- 레이어 닫기 --></button>
		</div>
	</section>
	<!--// 레이어 : 추후적립 -->
</div>

										<!-- 레이어 : 추후 적립 -->
									
								</div>
							
							<!--// movie-info-bottom -->
						</div>
						<!--// movie-infomation-area -->
					</div>
					<!--// reserve-ininfomation-box -->
				</div>
				<!--// reserve-finish -->

				<div class="btn-group pt30">
					<a href="#" class="button large" w-data="600" h-data="600" id="btn_ticket_print" title="교환권출력">교환권출력 <!-- 교환권출력 --></a>

					
						
						
						
							<a href="#" class="button large" id="btn_bill_print" title="영수증출력">영수증출력 <!-- 영수증출력 --></a>
							<a href="/mypage/bookinglist?tab=01" class="button purple large" title="예매내역 페이지로 이동">예매내역 <!-- 예매내역 --></a>
						
					
				</div>

				
					<div class="box-border v1 mt10">
						<ul class="dot-list gray">
							
								<li>
									상영안내 <!-- 상영안내 -->
									<ul class="dash-list">
										
											<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
										
											<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>
										
											<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>
										
									</ul>
								</li>
							

							
								<li class="mt20">
									주차안내 <!-- 주차안내 -->
									<ul class="dash-list">
										
											<li>영화관 건물내(안산빌딩)지하1층 주차장 이용</li>
										
											<li>당일 관람 고객에 한해 3시간 무료 주차 가능 (입장시 주차 인증 필요) / 요금 정산 시 당일 영화티켓+주차권 제시</li>
										
									</ul>
								</li>
							
						</ul>
					</div>
				
			</div>
			<!--// quick-reserve -->
		</div>
		<!--// inner-wrap -->
	</div>
	<!--// contents -->
</div>
<c:import url="../footer.jsp" charEncoding="utf-8" />