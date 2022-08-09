<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<link rel="stylesheet"
	href="http://www.megabox.co.kr/static/pc/dist/megabox.min.css"
	media="all" />
</head>
<body class="body-iframe">
    <input type="hidden" id="playSchdlNo" name="playSchdlNo"
		value="2208161372004">
    <input type="hidden" id="brchNo" name="brchNo" value="1372">
    <section id="layer_age_alert" class="modal-layer"
		style="z-index: 900">
		<a href="" class="focus">레이어로 포커스 이동 됨</a>
        <div class="wrap"
			style="width: 750px; height: 350px; margin-left: -375px; margin-top: 0px; top: 140px;">
            <header class="layer-header"> <h3 class="tit">알림</h3> </header>
            <div class="layer-con"> <div
					class="alert-age-layer age15"> <div class="age-box age-15"> <div
							class="left"> <p class="circle">15</p> </div> <div class="right"> <p
								class="tit">15세이상관람가</p> <p class="txt"><p>만 15 세 미만의 고객님은(영,유아 포함)<br>반드시 성인 보호자의 동반하에 관람이 가능합니다.<br>(확인 불가 시 입장제한)<br><br><strong><font
									color="red">※극장 이용시 항상 마스크 착용을 부탁드립니다※</font></strong>
							</p>
							</p> </div> </div> </div>
			</div>
            <div class="btn-group-fixed">
                <button type="button" class="button purple close-layer">확인</button>
            </div>
            <button type="button" class="btn-modal-close">레이어 닫기</button>
        </div>
    </section>
        <div class="inner-wrap" style="">
            <div class="quick-reserve">
                <h2 class="tit"></h2>
                <!-- cti 일때만 출력 -->
                






<script type="text/javascript">
	var requestPayAt = "N";

	$(function() {
		//RIA의 경우
		if (parent.sellChnlCd != "") {
			$('.inner-wrap').css('padding-bottom', '').css('padding-top', ''); //하단 상단 공백 제거
			//         $('#btnLangChg').hide();    //언어전환 버튼숨김

			//로그인 되었으면
			if (parent.riaLoginAt == "Y") {
				$('.cti-area input[name=riaName]').attr('value',
						parent.riaParamName); //고객명
				$('.cti-area input[name=riaMobileNo]').attr('value',
						parent.riaParamMobileNo); //고객전화번호
				$('.cti-area input[name=riaBirthday]').attr('value',
						parent.riaParamBirthday); //고객생년월일
				$('.cti-area input[name=riaMemberYn]').attr('value',
						parent.riaMemberYn == "Y" ? "회원" : "비회원"); //회원여부

				$('.cti-area input[name=riaName]').attr("readonly", true); //고객명
				$('.cti-area input[name=riaMobileNo]').attr("readonly", true); //고객전화번호
				$('.cti-area input[name=riaBirthday]').attr("readonly", true); //고객생년월일

				$('.cti-area input[name=riaMemberYn]').attr("readonly", true); //회원여부

				$('.cti-area button').attr('login-at', "Y");

				//결제화면이 아니면
				if ("N" == requestPayAt) {
					$('.cti-area button').html('재인증');
				}
			}
			//로그인 되지 않았으면
			else {
				$('.cti-area input[name=riaName]').attr('value',
						parent.riaParamName); //고객명
				$('.cti-area input[name=riaMobileNo]').attr('value',
						parent.riaParamMobileNo); //고객전화번호
				$('.cti-area input[name=riaBirthday]').attr('value',
						parent.riaParamBirthday); //고객생년월일
				$('.cti-area input[name=riaMemberYn]').attr('value', ''); //회원여부

				$('.cti-area input[name=riaName]').attr("readonly", false); //고객명
				$('.cti-area input[name=riaMobileNo]').attr("readonly", false); //고객전화번호
				$('.cti-area input[name=riaBirthday]').attr("readonly", false); //고객생년월일

				$('.cti-area input[name=riaMemberYn]').attr("readonly", true); //회원여부

				$('.cti-area button').attr('login-at', "N"); //회원여부
				//결제화면이 아니면
				if ("N" == requestPayAt) {
					$('.cti-area button').html('인증요청');
				}
			}

			//드림센터의 경우
			if (parent.sellChnlCd == "TELLER") {
				$('.cti-area').show(); //cti 로그인창 표시
			} else {
				$('.cti-area').hide(); //cti 로그인창 표시
			}

			//회원정보 확인을 위한 초기 파라메타 셋팅

			//파라메타 셋팅후
			//회원여부확인				부모창
			//나머지 화면 disable 처리	부모창

		} else {
			$('.quick-reserve-ad-area').show(); //광고영역 표시
			//         $('#btnLangChg').show();	//언어전환 버튼표시 사용안함 20200106 김민영
		}

		/* RIA 재인증 버튼 클릭 */
		$('.cti-area button')
				.on(
						"click",
						function() {

							//입력값 검증
							if ($('.cti-area button').attr('login-at') == "N") {

								// 			if($(".cti-area input[name=riaName]").val().length == 0){
								// 				gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	//{0} 필수 입력 항목 입니다.
								// 				return;
								// 			}

								if (!fn_validateDateYn($(
										".cti-area input[name=riaBirthday]")
										.val())) {
									gfn_alertMsgBoxSize('생년월일을 정확히 입력해주세요.',
											400, 250); //생년월일을 정확히 입력해주세요.
									return;
								}

								if ($(".cti-area input[name=riaMobileNo]")
										.val().length < 10) {
									gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',
											400, 250); //휴대폰번호를 정확히 입력해주세요.
									return;
								}

								if ($(".cti-area input[name=riaMobileNo]")
										.val().substr(0, 2) != "01") {
									gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',
											400, 250); //휴대폰번호를 정확히 입력해주세요.
									return;
								}
							}
							parent.fn_setRiaLoginToggle([
									$('.cti-area button').attr('login-at'),
									$(".cti-area input[name=riaName]").val(),
									$(".cti-area input[name=riaBirthday]")
											.val(),
									$(".cti-area input[name=riaMobileNo]")
											.val() ]);
						});

		/* 이름 숫자를 제외한 입력 여부판단 */
		$(".cti-area input[name=riaName]").on("keyup", function(e) {
			var partton = /[^ㄱ-힣a-zA-Z]/g;
			if (partton.test($(this).val())) {
				var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g, "");
				$(this).val(value);
			}
		});
		$(".cti-area input[name=riaName]").focusout(function() {
			var partton = /[^ㄱ-힣a-zA-Z]/g;
			if (partton.test($(this).val())) {
				var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g, "");
				$(this).val(value);
			}
		});

		/* 생년월일 숫자만 입력 여부판단 */
		$(".cti-area input[name=riaBirthday]").on("keyup", function(e) {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});
		$(".cti-area input[name=riaBirthday]").focusout(function() {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});

		/* 휴대폰번호 숫자만 입력 여부판단 */
		$(".cti-area input[name=riaMobileNo]").on("keyup", function(e) {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});
		$(".cti-area input[name=riaMobileNo]").focusout(function() {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});
	});

	/*날짜 형태 확인*/
	function fn_validateDateYn(param) {
		try {
			var yearFront = "";
			var year = "";
			var month = "";
			var day = "";

			param = param.replace(/-/g, '');

			// 자리수가 맞지않을때
			if (isNaN(param) || param.length < 6 || param.length == 7) {
				return false;
			}

			if (param.length == 6) {
				year = Number(param.substring(0, 2));
				month = Number(param.substring(2, 4));
				day = Number(param.substring(4, 6));
			} else if (param.length == 8) {
				var date = new Date();
				yearFront = Number(param.substring(0, 4));
				year = Number(param.substring(2, 4));
				month = Number(param.substring(4, 6));
				day = Number(param.substring(6, 8));

				if (yearFront > date.getFullYear()) {
					return false;
				}
			}
			var dd = day / 0;

			if (month<1 || month>12) {
				return false;
			}

			var maxDaysInMonth = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30,
					31 ];
			var maxDay = maxDaysInMonth[month - 1];

			// 윤년 체크
			if (month == 2
					&& (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {
				maxDay = 29;
			}

			if (day<=0 || day>maxDay) {
				return false;
			}
			return true;

		} catch (err) {
			return false;
		}
	}
</script>
<!-- cti 일때만 출력 -->
<div class="cti-area" style="display:none">
    <p>이름</p>
    <input maxlength="20" name="riaName" type="text" title="이름 출력"
					class="input-text a-c w120px" placeholder="이름" value="">

    <p>생년월일</p>
    <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력"
					class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">

    <p>휴대폰번호</p>
    <input maxlength="11" name="riaMobileNo" type="text"
					title="휴대폰번호 출력" class="input-text a-c w150px"
					placeholder="- 없이 입력" value="">

    <p>회원</p>
    <input name="riaMemberYn" type="text" title="회원여부 출력"
					class="input-text a-c w100px" value="" readyonly="readyonly"
					readonly="readonly">

	
		<button type="button" class="button gray ml10" login-at="N">인증요청</button>
	
</div>
			<div class="seat-select-section">
                    <div class="seat-section">
                        <div class="tit-util">
                            <h3 class="tit small"> 관람인원선택</h3>
                            <div class="right">
                                <button type="button"
								class="button gray-line small" id="seatMemberCntInit"> <i
									class="iconset ico-reset-small"></i>초기화</button>
                            </div>
                        </div>
                        <div class="seat-area">
                            <div class="seat-count"
							style="min-height: 52px">
							<div class="cell">
								<p class="txt">성인</p>
								<div class="count">
									<button type="button" class="down" title="성인 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" title="성인 현재 좌석 선택 수"
											ticketgrpcd="TKA">0</button>
										<ul class="num-choice">
											<li><button type="button" class="btn on">0</button></li>
										</ul>
									</div>
									<button type="button" class="up" title="성인 좌석 선택 증가">+</button>
								</div>
							</div>
							<div class="cell">
								<p class="txt">청소년</p>
								<div class="count">
									<button type="button" class="down" title="청소년 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" title="청소년 현재 좌석 선택 수"
											ticketgrpcd="TKY">0</button>
										<ul class="num-choice">
											<li><button type="button" class="btn on">0</button></li>
										</ul>
									</div>
									<button type="button" class="up" title="청소년 좌석 선택 증가">+</button>
								</div>
							</div>
							<div class="cell">
								<p class="txt">우대</p>
								<div class="count">
									<button type="button" class="down" title="우대 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" title="우대 현재 좌석 선택 수"
											ticketgrpcd="TKS">0</button>
										<ul class="num-choice">
											<li><button type="button" class="btn on">0</button></li>
										</ul>
									</div>
									<button type="button" class="up" title="우대 좌석 선택 증가">+</button>
								</div>
							</div>
						</div>
                            <div class="seat-layout">
                                <div class="alert"
								style="display: none;"></div>
                                <div class="seat-count-before off"
								style="top: 0px">관람인원을 선택하십시요</div>
                                <div
								class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
								<div id="mCSB_1"
									class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container"
										class="mCSB_container mCS_no_scrollbar_y"
										style="position: relative; top: 0px; left: 0px; height: 350px;"
										dir="ltr">
                                    <div id="seatLayout"
											style="width: 100%; height: 350px;">
                                        <img
												src="https://www.megabox.co.kr/static/pc/images/reserve/img-theater-screen.png"
												alt="screen"
												style="position: absolute; left: 62px; top: 10px;"
												class="mCS_img_loaded">
                                    <div class'row'="">  <button
													type="button" class="btn-seat-row" title="A 행"
													style="position:absolute; left:106px; top:52px;">A</button>
												<button type="button" title="A2 (스탠다드/장애인석)"
													class="jq-tooltip seat-condition standard disabled"
													style="position:absolute; left:171px; top:50px; width:20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100201" rownm="A" seatno="2"
													seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="3" seatchoigrpseq="1" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="A3 (스탠다드/장애인석)"
													class="jq-tooltip seat-condition standard disabled"
													style="position:absolute; left:191px; top:50px; width:20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100301" rownm="A" seatno="3"
													seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="3" seatchoigrpseq="2" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="A4 (스탠다드/장애인석)"
													class="jq-tooltip seat-condition standard disabled"
													style="position:absolute; left:211px; top:50px; width:20px;"
													seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100401" rownm="A" seatno="4"
													seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1"
													seatchoirowcnt="3" seatchoigrpseq="3" seattocnt="1"
													seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">장애인석</span>
												</button>
												<button type="button" title="A5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100501" rownm="A" seatno="5"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="2" seatchoigrpseq="1" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00100601" rownm="A" seatno="6"
													seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="A2"
													seatchoirowcnt="2" seatchoigrpseq="2" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101001" rownm="A" seatno="9"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101101" rownm="A" seatno="10"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101201" rownm="A" seatno="11"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101301" rownm="A" seatno="12"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101401" rownm="A" seatno="13"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101501" rownm="A" seatno="14"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101601" rownm="A" seatno="15"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101701" rownm="A" seatno="16"
													seatchoidircval="0" seatchoigrpno="3" seatchoigrpnm="A3"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00101901" rownm="A" seatno="17"
													seatchoidircval="0" seatchoigrpno="4" seatchoigrpnm="A4"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00102001" rownm="A" seatno="18"
													seatchoidircval="0" seatchoigrpno="4" seatchoigrpnm="A4"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00102101" rownm="A" seatno="19"
													seatchoidircval="0" seatchoigrpno="4" seatchoigrpnm="A4"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00102201" rownm="A" seatno="20"
													seatchoidircval="0" seatchoigrpno="4" seatchoigrpnm="A4"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="A21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:50px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00102301" rownm="A" seatno="21"
													seatchoidircval="0" seatchoigrpno="4" seatchoigrpnm="A4"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="B 행"
													style="position:absolute; left:106px; top:72px;">B</button>
												<button type="button" title="B1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200101" rownm="B" seatno="1"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200201" rownm="B" seatno="2"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200301" rownm="B" seatno="3"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200401" rownm="B" seatno="4"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200501" rownm="B" seatno="5"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00200601" rownm="B" seatno="6"
													seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="B5"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201001" rownm="B" seatno="9"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201101" rownm="B" seatno="10"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201201" rownm="B" seatno="11"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201301" rownm="B" seatno="12"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201401" rownm="B" seatno="13"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201501" rownm="B" seatno="14"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201601" rownm="B" seatno="15"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201701" rownm="B" seatno="16"
													seatchoidircval="0" seatchoigrpno="6" seatchoigrpnm="B6"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00201901" rownm="B" seatno="17"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00202001" rownm="B" seatno="18"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00202101" rownm="B" seatno="19"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00202201" rownm="B" seatno="20"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00202301" rownm="B" seatno="21"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="B22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:70px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00202401" rownm="B" seatno="22"
													seatchoidircval="0" seatchoigrpno="7" seatchoigrpnm="B7"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="C 행"
													style="position:absolute; left:106px; top:92px;">C</button>
												<button type="button" title="C1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300101" rownm="C" seatno="1"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300201" rownm="C" seatno="2"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300301" rownm="C" seatno="3"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300401" rownm="C" seatno="4"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300501" rownm="C" seatno="5"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00300601" rownm="C" seatno="6"
													seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="C8"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301001" rownm="C" seatno="9"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301101" rownm="C" seatno="10"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301201" rownm="C" seatno="11"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301301" rownm="C" seatno="12"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301401" rownm="C" seatno="13"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301501" rownm="C" seatno="14"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301601" rownm="C" seatno="15"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301701" rownm="C" seatno="16"
													seatchoidircval="0" seatchoigrpno="9" seatchoigrpnm="C9"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00301901" rownm="C" seatno="17"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00302001" rownm="C" seatno="18"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00302101" rownm="C" seatno="19"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00302201" rownm="C" seatno="20"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00302301" rownm="C" seatno="21"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="C22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:90px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00302401" rownm="C" seatno="22"
													seatchoidircval="0" seatchoigrpno="10" seatchoigrpnm="C10"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="D 행"
													style="position:absolute; left:106px; top:112px;">D</button>
												<button type="button" title="D1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400101" rownm="D" seatno="1"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400201" rownm="D" seatno="2"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400301" rownm="D" seatno="3"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400401" rownm="D" seatno="4"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400501" rownm="D" seatno="5"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00400601" rownm="D" seatno="6"
													seatchoidircval="1" seatchoigrpno="11" seatchoigrpnm="D11"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401001" rownm="D" seatno="9"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401101" rownm="D" seatno="10"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401201" rownm="D" seatno="11"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401301" rownm="D" seatno="12"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401401" rownm="D" seatno="13"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401501" rownm="D" seatno="14"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401601" rownm="D" seatno="15"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401701" rownm="D" seatno="16"
													seatchoidircval="0" seatchoigrpno="12" seatchoigrpnm="D12"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00401901" rownm="D" seatno="17"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00402001" rownm="D" seatno="18"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00402101" rownm="D" seatno="19"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00402201" rownm="D" seatno="20"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00402301" rownm="D" seatno="21"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="D22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:110px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00402401" rownm="D" seatno="22"
													seatchoidircval="0" seatchoigrpno="13" seatchoigrpnm="D13"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="E 행"
													style="position:absolute; left:106px; top:132px;">E</button>
												<button type="button" title="E1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500101" rownm="E" seatno="1"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500201" rownm="E" seatno="2"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500301" rownm="E" seatno="3"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500401" rownm="E" seatno="4"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500501" rownm="E" seatno="5"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00500601" rownm="E" seatno="6"
													seatchoidircval="1" seatchoigrpno="14" seatchoigrpnm="E14"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501001" rownm="E" seatno="9"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501101" rownm="E" seatno="10"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501201" rownm="E" seatno="11"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501301" rownm="E" seatno="12"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501401" rownm="E" seatno="13"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501501" rownm="E" seatno="14"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501601" rownm="E" seatno="15"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501701" rownm="E" seatno="16"
													seatchoidircval="0" seatchoigrpno="15" seatchoigrpnm="E15"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00501901" rownm="E" seatno="17"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00502001" rownm="E" seatno="18"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00502101" rownm="E" seatno="19"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00502201" rownm="E" seatno="20"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00502301" rownm="E" seatno="21"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="E22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:130px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00502401" rownm="E" seatno="22"
													seatchoidircval="0" seatchoigrpno="16" seatchoigrpnm="E16"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="F 행"
													style="position:absolute; left:106px; top:152px;">F</button>
												<button type="button" title="F1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600101" rownm="F" seatno="1"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600201" rownm="F" seatno="2"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600301" rownm="F" seatno="3"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600401" rownm="F" seatno="4"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600501" rownm="F" seatno="5"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00600601" rownm="F" seatno="6"
													seatchoidircval="1" seatchoigrpno="17" seatchoigrpnm="F17"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601001" rownm="F" seatno="9"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601101" rownm="F" seatno="10"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601201" rownm="F" seatno="11"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601301" rownm="F" seatno="12"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601401" rownm="F" seatno="13"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601501" rownm="F" seatno="14"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601601" rownm="F" seatno="15"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601701" rownm="F" seatno="16"
													seatchoidircval="0" seatchoigrpno="18" seatchoigrpnm="F18"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00601901" rownm="F" seatno="17"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00602001" rownm="F" seatno="18"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00602101" rownm="F" seatno="19"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00602201" rownm="F" seatno="20"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00602301" rownm="F" seatno="21"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="F22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:150px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00602401" rownm="F" seatno="22"
													seatchoidircval="0" seatchoigrpno="19" seatchoigrpnm="F19"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="G 행"
													style="position:absolute; left:106px; top:172px;">G</button>
												<button type="button" title="G1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700101" rownm="G" seatno="1"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700201" rownm="G" seatno="2"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700301" rownm="G" seatno="3"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700401" rownm="G" seatno="4"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700501" rownm="G" seatno="5"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00700601" rownm="G" seatno="6"
													seatchoidircval="1" seatchoigrpno="20" seatchoigrpnm="G20"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701001" rownm="G" seatno="9"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701101" rownm="G" seatno="10"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701201" rownm="G" seatno="11"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701301" rownm="G" seatno="12"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701401" rownm="G" seatno="13"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701501" rownm="G" seatno="14"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701601" rownm="G" seatno="15"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701701" rownm="G" seatno="16"
													seatchoidircval="0" seatchoigrpno="21" seatchoigrpnm="G21"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00701901" rownm="G" seatno="17"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00702001" rownm="G" seatno="18"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00702101" rownm="G" seatno="19"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00702201" rownm="G" seatno="20"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00702301" rownm="G" seatno="21"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="G22 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:611px; top:170px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00702401" rownm="G" seatno="22"
													seatchoidircval="0" seatchoigrpno="22" seatchoigrpnm="G22"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">22</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="H 행"
													style="position:absolute; left:106px; top:192px;">H</button>
												<button type="button" title="H1 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:151px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800101" rownm="H" seatno="1"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">1</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H2 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:171px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800201" rownm="H" seatno="2"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">2</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H3 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:191px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800301" rownm="H" seatno="3"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">3</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H4 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:211px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800401" rownm="H" seatno="4"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">4</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H5 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:231px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800501" rownm="H" seatno="5"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">5</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H6 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:251px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00800601" rownm="H" seatno="6"
													seatchoidircval="1" seatchoigrpno="23" seatchoigrpnm="H23"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">6</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801001" rownm="H" seatno="9"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="1" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801101" rownm="H" seatno="10"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="2" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801201" rownm="H" seatno="11"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="3" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801301" rownm="H" seatno="12"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="4" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801401" rownm="H" seatno="13"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="5" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801501" rownm="H" seatno="14"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="6" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801601" rownm="H" seatno="15"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="7" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801701" rownm="H" seatno="16"
													seatchoidircval="0" seatchoigrpno="24" seatchoigrpnm="H24"
													seatchoirowcnt="8" seatchoigrpseq="8" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00801901" rownm="H" seatno="17"
													seatchoidircval="0" seatchoigrpno="25" seatchoigrpnm="H25"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00802001" rownm="H" seatno="18"
													seatchoidircval="0" seatchoigrpno="25" seatchoigrpnm="H25"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00802101" rownm="H" seatno="19"
													seatchoidircval="0" seatchoigrpno="25" seatchoigrpnm="H25"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00802201" rownm="H" seatno="20"
													seatchoidircval="0" seatchoigrpno="25" seatchoigrpnm="H25"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="H21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:190px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00802301" rownm="H" seatno="21"
													seatchoidircval="0" seatchoigrpno="25" seatchoigrpnm="H25"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="I 행"
													style="position:absolute; left:106px; top:212px;">I</button>
												<button type="button" title="I17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:210px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00901901" rownm="I" seatno="17"
													seatchoidircval="1" seatchoigrpno="26" seatchoigrpnm="I26"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="I18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:210px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00902001" rownm="I" seatno="18"
													seatchoidircval="1" seatchoigrpno="26" seatchoigrpnm="I26"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="I19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:210px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00902101" rownm="I" seatno="19"
													seatchoidircval="1" seatchoigrpno="26" seatchoigrpnm="I26"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="I20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:210px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00902201" rownm="I" seatno="20"
													seatchoidircval="1" seatchoigrpno="26" seatchoigrpnm="I26"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="I21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:210px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="00902301" rownm="I" seatno="21"
													seatchoidircval="1" seatchoigrpno="26" seatchoigrpnm="I26"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="J 행"
													style="position:absolute; left:106px; top:232px;">J</button>
												<button type="button" title="J7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:291px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01000801" rownm="J" seatno="7"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:311px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01000901" rownm="J" seatno="8"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001001" rownm="J" seatno="9"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001101" rownm="J" seatno="10"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001201" rownm="J" seatno="11"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001301" rownm="J" seatno="12"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001401" rownm="J" seatno="13"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001501" rownm="J" seatno="14"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="8" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001601" rownm="J" seatno="15"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="9" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001701" rownm="J" seatno="16"
													seatchoidircval="1" seatchoigrpno="27" seatchoigrpnm="J27"
													seatchoirowcnt="10" seatchoigrpseq="10" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01001901" rownm="J" seatno="17"
													seatchoidircval="0" seatchoigrpno="28" seatchoigrpnm="J28"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01002001" rownm="J" seatno="18"
													seatchoidircval="0" seatchoigrpno="28" seatchoigrpnm="J28"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01002101" rownm="J" seatno="19"
													seatchoidircval="0" seatchoigrpno="28" seatchoigrpnm="J28"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01002201" rownm="J" seatno="20"
													seatchoidircval="0" seatchoigrpno="28" seatchoigrpnm="J28"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="J21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:230px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01002301" rownm="J" seatno="21"
													seatchoidircval="0" seatchoigrpno="28" seatchoigrpnm="J28"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="K 행"
													style="position:absolute; left:106px; top:252px;">K</button>
												<button type="button" title="K7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:291px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01100801" rownm="K" seatno="7"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:311px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01100901" rownm="K" seatno="8"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101001" rownm="K" seatno="9"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101101" rownm="K" seatno="10"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101201" rownm="K" seatno="11"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101301" rownm="K" seatno="12"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101401" rownm="K" seatno="13"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101501" rownm="K" seatno="14"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="8" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101601" rownm="K" seatno="15"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="9" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101701" rownm="K" seatno="16"
													seatchoidircval="1" seatchoigrpno="29" seatchoigrpnm="K29"
													seatchoirowcnt="10" seatchoigrpseq="10" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01101901" rownm="K" seatno="17"
													seatchoidircval="0" seatchoigrpno="30" seatchoigrpnm="K30"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01102001" rownm="K" seatno="18"
													seatchoidircval="0" seatchoigrpno="30" seatchoigrpnm="K30"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01102101" rownm="K" seatno="19"
													seatchoidircval="0" seatchoigrpno="30" seatchoigrpnm="K30"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01102201" rownm="K" seatno="20"
													seatchoidircval="0" seatchoigrpno="30" seatchoigrpnm="K30"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="K21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:250px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01102301" rownm="K" seatno="21"
													seatchoidircval="0" seatchoigrpno="30" seatchoigrpnm="K30"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="L 행"
													style="position:absolute; left:106px; top:272px;">L</button>
												<button type="button" title="L7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:291px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01200801" rownm="L" seatno="7"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:311px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01200901" rownm="L" seatno="8"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201001" rownm="L" seatno="9"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201101" rownm="L" seatno="10"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201201" rownm="L" seatno="11"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201301" rownm="L" seatno="12"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201401" rownm="L" seatno="13"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201501" rownm="L" seatno="14"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="8" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201601" rownm="L" seatno="15"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="9" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201701" rownm="L" seatno="16"
													seatchoidircval="1" seatchoigrpno="31" seatchoigrpnm="L31"
													seatchoirowcnt="10" seatchoigrpseq="10" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01201901" rownm="L" seatno="17"
													seatchoidircval="0" seatchoigrpno="32" seatchoigrpnm="L32"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01202001" rownm="L" seatno="18"
													seatchoidircval="0" seatchoigrpno="32" seatchoigrpnm="L32"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01202101" rownm="L" seatno="19"
													seatchoidircval="0" seatchoigrpno="32" seatchoigrpnm="L32"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01202201" rownm="L" seatno="20"
													seatchoidircval="0" seatchoigrpno="32" seatchoigrpnm="L32"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="L21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:270px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01202301" rownm="L" seatno="21"
													seatchoidircval="0" seatchoigrpno="32" seatchoigrpnm="L32"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="M 행"
													style="position:absolute; left:106px; top:292px;">M</button>
												<button type="button" title="M7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:291px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01300801" rownm="M" seatno="7"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:311px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01300901" rownm="M" seatno="8"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301001" rownm="M" seatno="9"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301101" rownm="M" seatno="10"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M11 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:371px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301201" rownm="M" seatno="11"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="5" seattocnt="1">
													<span class="num">11</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M12 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:391px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301301" rownm="M" seatno="12"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="6" seattocnt="1">
													<span class="num">12</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M13 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:411px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301401" rownm="M" seatno="13"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="7" seattocnt="1">
													<span class="num">13</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M14 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:431px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301501" rownm="M" seatno="14"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="8" seattocnt="1">
													<span class="num">14</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301601" rownm="M" seatno="15"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="9" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301701" rownm="M" seatno="16"
													seatchoidircval="1" seatchoigrpno="33" seatchoigrpnm="M33"
													seatchoirowcnt="10" seatchoigrpseq="10" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01301901" rownm="M" seatno="17"
													seatchoidircval="0" seatchoigrpno="34" seatchoigrpnm="M34"
													seatchoirowcnt="5" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01302001" rownm="M" seatno="18"
													seatchoidircval="0" seatchoigrpno="34" seatchoigrpnm="M34"
													seatchoirowcnt="5" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01302101" rownm="M" seatno="19"
													seatchoidircval="0" seatchoigrpno="34" seatchoigrpnm="M34"
													seatchoirowcnt="5" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01302201" rownm="M" seatno="20"
													seatchoidircval="0" seatchoigrpno="34" seatchoigrpnm="M34"
													seatchoirowcnt="5" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="M21 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:591px; top:290px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01302301" rownm="M" seatno="21"
													seatchoidircval="0" seatchoigrpno="34" seatchoigrpnm="M34"
													seatchoirowcnt="5" seatchoigrpseq="5" seattocnt="1">
													<span class="num">21</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>  <button type="button" class="btn-seat-row" title="N 행"
													style="position:absolute; left:106px; top:312px;">N</button>
												<button type="button" title="N7 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:291px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01400801" rownm="N" seatno="7"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="1" seattocnt="1">
													<span class="num">7</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N8 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:311px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01400901" rownm="N" seatno="8"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="2" seattocnt="1">
													<span class="num">8</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N9 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:331px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01401001" rownm="N" seatno="9"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="3" seattocnt="1">
													<span class="num">9</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N10 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:351px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01401101" rownm="N" seatno="10"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="4" seattocnt="1">
													<span class="num">10</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N15 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:451px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01401601" rownm="N" seatno="15"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="5" seattocnt="1">
													<span class="num">15</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N16 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:471px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01401701" rownm="N" seatno="16"
													seatchoidircval="1" seatchoigrpno="35" seatchoigrpnm="N35"
													seatchoirowcnt="6" seatchoigrpseq="6" seattocnt="1">
													<span class="num">16</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N17 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:511px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01401901" rownm="N" seatno="17"
													seatchoidircval="0" seatchoigrpno="36" seatchoigrpnm="N36"
													seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
													<span class="num">17</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N18 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:531px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01402001" rownm="N" seatno="18"
													seatchoidircval="0" seatchoigrpno="36" seatchoigrpnm="N36"
													seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
													<span class="num">18</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N19 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:551px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01402101" rownm="N" seatno="19"
													seatchoidircval="0" seatchoigrpno="36" seatchoigrpnm="N36"
													seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
													<span class="num">19</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
												<button type="button" title="N20 (스탠다드/일반)"
													class="jq-tooltip seat-condition standard common"
													style="position:absolute; left:571px; top:310px; width:20px;"
													seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE"
													seatuniqno="01402201" rownm="N" seatno="20"
													seatchoidircval="0" seatchoigrpno="36" seatchoigrpnm="N36"
													seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
													<span class="num">20</span><span class="kind">스탠다드</span><span
														class="condition">판매가능</span><span class="rank">일반</span>
												</button>
											</div> <img
												src="https://www.megabox.co.kr/static/pc/images/reserve/img-door-left.png"
												alt="좌측 출입구"
												style="position:absolute; left:131px; top:30px; width:16px; height: 16px;"
												class="mCS_img_loaded"> <img
												src="https://www.megabox.co.kr/static/pc/images/reserve/img-door-top.png"
												alt="상단측좌측 출입구"
												style="position:absolute; left:191px; top:330px; width:16px; height: 16px;"
												class="mCS_img_loaded">
										</div>
                                </div>
									<div id="mCSB_1_scrollbar_vertical"
										class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
										<div class="mCSB_draggerContainer">
											<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
												style="position: absolute; min-height: 30px; display: none; height: 439px; top: 0px; max-height: 382px;">
												<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
											</div>
											<div class="mCSB_draggerRail"></div>
										</div>
									</div>
								</div>
							</div>
                            </div>
                            <div class="zone-legend"
							style="display: none"></div>
                        </div>
                    </div>
                    <div class="seat-result">
                        <div class="wrap">
                            <div class="tit-area">
                                <span
								class="movie-grade small age-all age-15">15세이상관람가</span>
                                <p class="tit">헌트</p>
                                <p class="cate">2D</p>
                            </div>
                            <div class="info-area">
                                <p class="theater">강남</p>
                                <p class="special">1관</p>
                                <p class="date">
								<span>2022.08.16</span><em>(화)</em>
							</p>
                                <div class="other-time">
                                    <button type="button" class="now">17:45~20:00<i
										class="arr"></i>
								</button>
                                    <ul class="other">
									<li><button type="button" choicnt="96"
											playschdlno="2208161372071" class="btn ">09:15~11:30</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372001" class="btn ">10:00~12:15</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372055" class="btn ">10:55~13:10</button></li>
									<li><button type="button" choicnt="96"
											playschdlno="2208161372072" class="btn ">11:45~14:00</button></li>
									<li><button type="button" choicnt="231"
											playschdlno="2208161372002" class="btn ">12:35~14:50</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372054" class="btn ">13:30~15:45</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372003" class="btn ">15:10~17:25</button></li>
									<li><button type="button" choicnt="230"
											playschdlno="2208161372053" class="btn ">16:05~18:20</button></li>
									<li><button type="button" choicnt="96"
											playschdlno="2208161372075" class="btn ">17:00~19:15</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372004" class="btn on ">17:45~20:00</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372052" class="btn ">18:35~20:50</button></li>
									<li><button type="button" choicnt="96"
											playschdlno="2208161372076" class="btn ">19:30~21:45</button></li>
									<li><button type="button" choicnt="222"
											playschdlno="2208161372005" class="btn ">20:20~22:35</button></li>
									<li><button type="button" choicnt="232"
											playschdlno="2208161372051" class="btn ">21:10~23:25</button></li>
									<li><button type="button" choicnt="96"
											playschdlno="2208161372077" class="btn ">22:00~24:15</button></li>
								</ul>
                                </div>
                                <p class="poster">
                                    <img
									src="https://www.megabox.co.kr/SharedImg/2022/08/05/QDUC0cjm2bnWDCCQPYpQvelnoFe1CCfH_150.jpg"
									onerror="noImg(this);" alt="헌트">
                                </p>
                            </div>
                            <div class="choice-seat-area">
                                <div class="legend">
                                    <ul class="list"> <li><div
											class="seat-condition choice" title="선택한 좌석"></div> <em>선택</em></li> <li><div
											class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em></li> <li><div
											class="seat-condition impossible" title="선택 불가"></div> <em>선택불가</em></li> <li><div
											class="seat-condition common" title="일반"></div> <em> 일반</em></li>  <li><div
											class="seat-condition disabled" title="장애인석"></div> <em> 장애인석</em></li>
								</ul>
                                </div>
                                <div class="seat-num">
                                    <p class="tit">선택좌석</p>
                                    <div class="my-seat">
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                        <div class="seat all"
										title="구매가능 좌석">-</div>
                                    </div>
                                </div>
                            </div>
                            <div class="pay-area">
                                <p class="count"></p>
                                <div class="pay">
                                    <p class="tit">최종결제금액</p>
                                    <div class="money">
                                        <em>0</em> <span>원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group">
                                <a href="javaScript:void(0)"
								class="button" id="pagePrevious" title="이전">이전</a>
                                <a href="javaScript:void(0)"
								class="button disabled" id="pageNext" title="다음">다음</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<div class="normalStyle"
		style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle"
		style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
</body>
</body>


							</html>