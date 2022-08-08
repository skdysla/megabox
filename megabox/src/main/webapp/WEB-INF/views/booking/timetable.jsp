<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<head>
<link rel="shortcut icon" href="/static/pc/images/favicon.ico">

<title>영화별 상영시간표 &lt; 상영시간표 | MEET PLAY SHARE, 메가박스</title>

<link rel="stylesheet"
	href="https://www.megabox.co.kr/static/pc/dist/megabox.min.css"
	media="all">

<c:url var="root" value="/" />

<!-- datePicker -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"
	integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	function click_date(element) {
		var dates = document.getElementsByName('actual_date');
		for (i = 0; i < dates.length; i++) {
			if (dates[i].className = 'on') //하나의 버튼만
				dates[i].className = 'default';
		}
		console.log(element.value);
		element.className = 'on';
	}

	function send_movie_name(element) {
		alert('영화 이름 전달 함수 호출됨!!!!!!');

		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				console.log('데이터 받기');
				console.log(xhttp.responseText);
			}
		};
		xhttp.open("GET", "/sendMovieName", true);
		xhttp.send();
	}

	function send_crtn_name() {
		alert('큐레이션 이름 전달 함수 호출됨!!!!!!');
	}

	function send_theater_name() {
		alert('극장 이름 전달 함수 호출됨!!!!!!');
	}

	function send_state_name() {
		alert('지역 이름 전달 함수 호출됨!!!!!!');
	}

	function print_calendar() {
		$('#datepicker').datepicker().datepicker("show");
	}

	$(function() {
	    $("#datepicker").datepicker({ 
	        onSelect: function() { 
	            var date = $.datepicker.formatDate("yy.mm.dd",$("#datepicker").datepicker("getDate")); 
	            console.log(date);
	        }
	    });                    
	});
</script>
</head>

<body>
	<div class="skip" title="스킵 네비게이션">
		<a href="#contents" title="본문 바로가기">본문 바로가기</a> <a href="#footer"
			title="푸터 바로가기">푸터 바로가기</a>
	</div>
	<div class="body-wrap">

		<form id="loginForm">
			<input type="hidden" name="redisKey" value=""> <input
				type="hidden" name="menuId" value=""> <input type="hidden"
				name="mappingId" value=""> <input type="hidden"
				name="rtnParam" value=""> <input type="hidden"
				name="certType" value=""> <input type="hidden" name="preUrl"
				value="">

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type="hidden" name="bokdLoginAt" value=""> <input
				type="hidden" name="bokdLoginParam" value=""> <input
				type="hidden" name="nonMbCertRedisKey" value=""> <input
				type="hidden" name="nonMbCertedMblpNo" value=""> <input
				type="hidden" name="reloadYn" value=""> <input type="hidden"
				name="validDataRevisnYn" value="N">

		</form>

		<!--  ko_KR -->

		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag" href="#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;">
			<a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus"
				title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
			<div class="wrap"
				style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
				<header class="layer-header">
					<h3 class="tit">로그인</h3>
				</header>

				<div class="layer-con" style="height: 511px;">

					<div class="tab-list tab-layer">
						<ul>
							<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원
									로그인<!--회원 로그인-->
							</a></li>
							<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
						</ul>
					</div>

					<!-- tab-cont-wrap -->
					<div class="tab-cont-wrap">
						<!-- tab 회원 로그인 -->
						<div id="login_tab_01" class="tab-cont on">
							<a href="" class="ir"></a><a href="" class="ir" title="로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">
										<div class="login-input-area">
											<input autocomplete="off" id="ibxLoginId" maxlength="20"
												type="text" placeholder="아이디" title="아이디를 입력하세요"
												class="input-text strTrim">
											<!--아이디-->
											<!--아이디를 입력하세요-->
											<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
												type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
												class="input-text mt15">
											<!--비밀번호-->
											<!--비밀번호를 입력하세요-->
											<div class="alert"></div>

											<!-- chk-util -->
											<div class="chk-util">
												<div class="left">
													<input id="chkIdSave" type="checkbox"> <label
														for="chkIdSave">아이디 저장<!--아이디 저장--></label>
												</div>

												<div class="right">
													<div class="hp-ad">
														<a
															href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
															title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰
																간편로그인<!--휴대폰 간편로그인-->
														</span> <em>광고<!--광고--></em></a>
													</div>
												</div>
											</div>
											<!--// chk-util -->

											<button id="btnLogin" type="button"
												class="button purple large btn-login" disabled="disabled">
												로그인
												<!--로그인-->
											</button>

											<div class="link">
												<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a> <a
													href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="javaScript:void(0)" lnkgty="FACEBOOK"
													title="페이스북으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-facebook.png"
													alt="페이스북"> <!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="NAVER"
													title="네이버로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-naver.png"
													alt="네이버"> <!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="KAKAO"
													title="카카오톡으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-kakao.png"
													alt="카카오톡"> <!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="PAYCO"
													title="페이코로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-payco.png"
													alt="페이코"> <!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
											</div>
										</div>
									</div>

									<div class="col right">
										<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
									</div>
								</div>
								<!--// col-wrap -->
							</div>
						</div>
						<!--// tab 회원 로그인 -->

						<!-- tab 비회원 로그인 -->
						<div id="login_tab_02" class="tab-cont">
							<a href="" class="ir"></a><a href="" class="ir" title="비회원 로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">

										<div class="no-member-login-table">
											<table
												summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
												<caption>
													이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
													<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
												</caption>
												<colgroup>
													<col style="width: 110px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
														</th>
														<td><input maxlength="20" id="ibxNonMbNm" type="text"
															placeholder="이름" class="input-text"> <!--이름--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
														</th>
														<td><input maxlength="6" id="ibxNonMbByymmdd"
															type="text" placeholder="생년월일 앞6자리" class="input-text">
															<!--주민번호 앞 6자리--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
														</th>
														<td>
															<div class="hp-input">
																<input maxlength="11" id="ibxNonMbTelno" type="text"
																	placeholder="- 없이 입력" class="input-text">
																<!--- 없이 입력-->
																<button id="nonMbCertNoSend" type="button"
																	class="button gray" disabled="disabled">
																	인증요청
																	<!--인증요청-->
																</button>
															</div>
															<div id="mblpInput-error-text" class="alert"></div>
														</td>
													</tr>
													<tr id="nonMbCertRow">
														<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
														</th>
														<td>
															<div class="chk-num">
																<div class="line">
																	<input maxlength="4" id="mblpCharCertNo" type="text"
																		class="input-text">

																	<div class="time-limit" id="timer">3:00</div>
																</div>

																<button id="btnMblpCharCert" type="button"
																	class="button purple" disabled="disabled">
																	확인
																	<!--확인-->
																</button>
															</div>
															<div id="nonMbCert-error-text" class="alert"></div>
														</td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
															<!--비밀번호--></th>
														<td><input maxlength="4" id="ibxNonMbPwd"
															type="password" placeholder="비밀번호(숫자 4자리)"
															class="input-text"> <!--비밀번호(숫자 4자리)--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
														</th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm"
															type="password" placeholder="비밀번호(숫자 4자리) 확인"
															class="input-text"> <!--비밀번호(숫자 4자리) 확인-->
															<div id="nonMbPwdErrText" class="alert"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="col right">

										<div class="no-member-privacy-rule">
											<p class="tit">
												비회원예매 개인정보 처리방침
												<!--비회원예매 개인정보 처리방침-->
											</p>

											<div class="cont">
												<dl>
													<dt>수집목적</dt>
													<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
													<dt>수집항목</dt>
													<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
													<dt>보유기간</dt>
													<dd class="ismsimp">관람 또는 취소 후 7일 이내</dd>
													<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
												</dl>

												<div class="btn-agree">
													<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
														name="chkNonMbBokdPersonInfoProc"> <label
														for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
														type="radio" id="chkNonMbBokdPersonInfoProcFalse"
														name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
														for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
												</div>

												<ul class="dot-list gblue mt20">
													<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
														비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--// col-wrap -->

								<div class="btn-group">
									<button id="btnChkNonMbLogin" type="button"
										class="button purple" disabled="disabled">확인</button>
									<a id="aNonMbLogin" href="#layer_no_member_chk"
										class="button purple btn-modal-open" w-data="600" h-data="320"
										style="display: none;"></a>
								</div>
							</div>
						</div>
						<!--// tab 비회원 로그인 -->
					</div>
					<!--// tab-cont-wrap -->
				</div>

				<button type="button" class="btn-modal-close">
					레이어 닫기
					<!--레이어 닫기-->
				</button>
			</div>
		</section>

		<section id="layer_no_member_chk" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a>
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">알림</h3>
				</header>

				<div class="layer-con">
					<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

					<div class="table-wrap v1">
						<table class="data-table"
							summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
							<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
							<colgroup>
								<col style="width: 80px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="a-l">이름</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">생년월일</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">휴대폰번호</th>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button close-layer small">취소</button>
					<button id="btnNonMbLogin" type="button"
						class="button purple small" disabled="disabled">확인</button>
				</div>

				<button id="btnNonMbModalClose" type="button"
					class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>
		<!--  ko_KR -->


		<script type="text/javascript">
			$(function() {

				$('#header .right-link .before').show();
				$('#header .right-link .after').hide();
				//session 관련 처리를 위한 부분
				$.ajaxMegaBox({
					url : '/sessionChk.do',
					success : function(data) {
						var loginYn = data.loginYn;
						if (loginYn == 'Y') {
							$('.right-link .before').hide();
							$('.right-link .after').show();
						} else {
							$('.right-link .before').show();
							$('.right-link .after').hide();
						}
					}
				});

				// 웹에서만 실행 -> facebook을 로드하지 않는 템플릿에서 반복적인 오류 발생으로 hreader로 이전
				if (!MegaboxUtil.Common.isMobile()
						&& !MegaboxUtil.Common.isApp())
					MegaboxUtil.Share.init();
			});

			//로그인 버튼
			$(document).on('click', '#moveLogin', function() {

				fn_viewLoginPopup('default', 'pc');

			});

			var sysCd = 'ON';

			//넷퍼넬 스킨 타입 지정
			NetfunnelChk.setting(sysCd, MegaboxUtil.Common.isApp());
		</script>

		<!-- 베네피아 배너 접근 시 노출 -->


		<!-- 메인에만 광고영역 노출 -->

		<!-- 메인 영화에만 광고영역 노출 -->


		<c:import url="../header.jsp" charEncoding="utf-8" />

		<form id="bokdMForm">
			<input type="hidden" name="returnURL" value="info">
		</form>
		<!-- container -->
		<div id="bokdContainer" class="container"
			style="padding-bottom: 200px; display: none">
			<input type="hidden" id="playDe" name="playDe" value="">
			<div class="page-util fixed">
				<div class="inner-wrap">
					<div class="location"></div>

				</div>
			</div>

			<div id="bokdMSeat"
				style="overflow: hidden; display: none; height: 736px;">
				<iframe id="frameBokdMSeat"
					src="/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?megaboxLanguage=kr"
					title="관람인원선택 프레임" scrolling="no" frameborder="0"
					class="reserve-iframe" style="width: 100%; height: 736px;"></iframe>
			</div>

			<div id="bokdMPayBooking"
				style="overflow: hidden; display: none; height: 736px;">
				<iframe id="framePayBooking"
					src="/on/oh/ohz/PayBooking/completeSeat.do?megaboxLanguage=kr"
					title="예매 결제" scrolling="no" frameborder="0" class="reserve-iframe"
					style="width: 100%; height: 736px;"></iframe>
			</div>

		</div>
		<!--// container -->
		<!-- <script src="https://www.megabox.co.kr/js/megabox-brch.js"></script>
		<script src="https://www.megabox.co.kr/js/megabox-simpleBokd.js"></script> -->
		<!-- <script
			src="https://www.megabox.co.kr/static/pc/js/jquery.mCustomScrollbar.concat.min.js"></script> -->

		<script type="text/javascript">
			var arrList = new Array();
			var tmpData = {
				tabIndx : 0
			};
			var tabChangeAt = 'N'; //상영일 초기화 여부

			$(function() {

				$(document).ready(function() {
					areaList();
				});

				// 영화명, 극장명 클릭
				$('#contents')
						.on(
								'click',
								'.list-section button',
								function() {
									var leftIdx = $(
											'#contents .tab-left-area li.on')
											.index();
									if (leftIdx > 0 && leftIdx < 3)
										tabChangeAt = "Y"; //상영일 초기화 여부

									var $this = $(this);
									var paramData = {};
									var option = {
										movieObj : $('#contents h3:last'),
										list : arrList,
										movieData : paramData,
										tabChangeAt : tabChangeAt
									};

									// 상영 시간표명 변경
									$('#contents .font-green').html(
											$this.text());

									// 영화별 - 영화 포스터 설정
									if (tmpData.tabIndx == 0) {
										var imgAttr = {
											src : $this.data('imgPath'),
											alt : $this.data('movieNm')
										};
										var lnkAttr = {
											href : '/movie-detail?rpstMovieNo='
													+ $this.data('movieNo'),
											title : $.parseHTML(String($this
													.data('movieNm')))[0].textContent
													+ ' 상세보기'
										};

										$('div.poster-section div.td').html(
												$('<a>').attr(lnkAttr));
										$('div.poster-section div.td a')
												.html(
														$(
																'<img class="poster" onerror="noImg(this, \'del\')"/>')
																.attr(imgAttr));
									}

									// 값 설정
									switch (tmpData.tabIndx) {
									case 0: //영화별
										paramData.masterType = 'movie';
										paramData.movieNo = $this
												.data('movieNo');
										break;

									case 1: //극장별
										paramData.masterType = 'brch';
										paramData.detailType = 'area';
										paramData.brchNo = $this.data('brchNo');
										break;

									case 2: //특별관
										paramData.masterType = 'brch';
										paramData.detailType = 'spcl';
										paramData.theabKindCd = $this
												.data('areaCd');
										paramData.brchNo = $this.data('brchNo');
										break;
									}
									MegaboxUtil.Brch.init(option);
									tabChangeAt = "N";
								});
			});

			// 극장정보 갱신
			function fn_brchListUpt(list, type) {

				var $div, $li, areaCd;

				var areaList = [];
				var brchList = [];

				var html = '<div class="theater-section">';
				html += '	<div class="table">';
				html += '		<div class="td">';
				html += '			<a href="#1" title="#2 특별관 페이지로 이동">';
				html += '				<p><strong>#2</strong>#3</p>';
				html += '				<i class="iconset ico-arrow-half"></i>';
				html += '				<img src="#4" alt="#2 특별관 페이지로 이동" class="poster">';
				html += '			</a>';
				html += '		</div>';
				html += '	</div>';
				html += '</div>';

				$
						.each(
								list,
								function(i, param) {

									if (areaCd != param.areaCd) {

										areaCd = param.areaCd;

										var titleTxt = "";
										if (type == 'spcl') {
											titleTxt = "특별관 선택";
										} else {
											titleTxt = "지점 선택";
										}

										// 객채 설정
										$li = $('<li><a href="#tab'+areaCd+'" title="'+param.areaCdNm+titleTxt+'" data-area-cd="'+ areaCd +'">'
												+ param.areaCdNm + '</a></li>');
										$div = $('<div id="tab'+ areaCd +'" class="tab-layer-cont"><div class="scroll m-scroll"><ul class="list"></ul><div></div>');

										// 첫번째 객체
										if (i == 0) {
											$div.addClass('on');
											$li.find('a').addClass('on');
										}

										// 특별관여부
										if (type == 'spcl') {

											switch (areaCd) {

											case 'MX':
												param.curAreaCdNm = "MX";
												param.welComeHtml = "진정한 영화 사운드를 통한<br />최고의 영화! <br />메가박스의 차세대 <br />표준 상영관";
												param.splcBrchLink = "/specialtheater/mx";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-mx.png';
												break;
											case 'CFT':
												param.curAreaCdNm = "COMFORT";
												param.welComeHtml = "더욱 편안한 영화 관람을<br />위한 다양한 여유 공간";
												param.splcBrchLink = "/specialtheater/comfort";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-comfort.png';
												break;
											case 'TBQ':
												param.curAreaCdNm = "THE BOUTIQUE";
												param.welComeHtml = "영화를 본다는 것,<br />그 놀라운 경험을 위하여";
												param.splcBrchLink = "/specialtheater/boutique";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-boutique.png';
												break;
											case 'MKB':
												param.curAreaCdNm = "MEGA KIDS";
												param.welComeHtml = "아이와 가족이 함께 머물며<br />삶의 소중한 가치를 배우는<br />더 행복한 놀이공간";
												param.splcBrchLink = "/specialtheater/megakids";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-kids.png';
												break;
											case 'BCY':
												param.curAreaCdNm = "BALCONY";
												param.welComeHtml = "CINEMA IN CINEMA,<br />영화관 속<br />나만의 개인 영화관";
												param.imgFileNm = "balcony";
												param.splcBrchLink = "/specialtheater/balcony";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-balcony.png';
												break;
											case 'TFC':
												param.curAreaCdNm = "THE FIRST CLUB";
												param.welComeHtml = "특별한 날,<br />특별한 당신을 위한<br />단 하나의<br />THE FIRST CLUB";
												param.splcBrchLink = "/specialtheater/firstclub";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-firstclub.png';
												break;
											case 'DBC':
												param.curAreaCdNm = "DOLBY";
												param.welComeHtml = "국내 최초로 메가박스가 <br />선보이는 세계 최고 <br />기술력의 몰입 시네마";
												param.splcBrchLink = "/specialtheater/dolby";
												param.imgUrl = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-dolby.png';
												break;
											}

											// 특별관 이미지등록
											$div
													.append(html
															.replace(
																	'#1',
																	param.splcBrchLink)
															.replaceAll(
																	'#2',
																	param.curAreaCdNm)
															.replace(
																	'#3',
																	param.welComeHtml)
															.replace(
																	'#4',
																	param.imgUrl));

										} else {
											arrList.push({
												areaCd : areaCd,
												areaNm : param.areaCdNm
											});
										}

										areaList.push($li);
										brchList.push($div);
									}

									// 극장추가
									$div
											.find('ul')
											.append(
													'<li><button type="button" class="btn" data-area-cd="'+ areaCd +'" data-brch-no="'+ param.brchNo +'">'
															+ param.brchNm
															+ '</button></li>');

									// 극장상태 추가
									if (param.brchOnlineExpoAt == 'Y') {
										switch (param.brchOnlineExpoStatCd) {
										case 'OES01':
											$div
													.find('button:last')
													.append(
															'&nbsp;<i class="iconset ico-theater-new"></i>');
											break;
										case 'OES02':
											$div
													.find('button:last')
													.append(
															'&nbsp;<i class="iconset ico-theater-renewal"></i>');
											break;
										case 'OES03':
											$div
													.find('button:last')
													.append(
															'&nbsp;<i class="iconset ico-theater-open"></i>');
											break;
										case 'OES04':
											$div
													.find('button:last')
													.append(
															'&nbsp;<i class="iconset ico-theater-open"></i>');
											break;
										}
									}
								});

			}
		</script>

		<div id="schdlContainer" class="container">
			<input type="hidden" id="playDe" name="playDe" value="">
			<div class="page-util fixed">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="/booking" title="예매 페이지로 이동">예매</a> <a
							href="/booking/timetable" title="상영시간표 페이지로 이동">상영시간표</a>
					</div>

				</div>
			</div>

			<div id="contents" class="location-fixed">
				<div class="inner-wrap">
					<div class="time-table-page">
						<div class="movie-choice-area">
							<div class="tab-left-area">
								<ul>
									<li class="on"><a href="#masterMovie" title="영화별 선택"
										class="btn"><i class="iconset ico-tab-movie"></i> 영화별</a></li>
									<li><a href="#masterBrch" title="극장별 선택" class="btn"><i
											class="iconset ico-tab-theater"></i> 극장별</a></li>
									<li><a href="#masterSpclBrch" title="특별관 선택" class="btn"><i
											class="iconset ico-tab-special"></i> 특별관</a></li>
								</ul>
							</div>

							<div class="ltab-layer-wrap">
								<div id="masterMovie" class="ltab-layer-cont has-img on">
									<a href="" class="ir"></a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#masterMovie_AllMovie" title="전체영화 선택"
													class="btn on">전체영화</a></li>
												<li><a href="#masterMovie_CrtnMovie" title="큐레이션 선택"
													class="btn">큐레이션</a></li>
											</ul>
										</div>
										<div class="list-section">
											<div id="masterMovie_AllMovie" class="tab-layer-cont on">
												<a href="" class="ir"></a>
												<div class="scroll m-scroll mCustomScrollbar _mCS_2">
													<div id="mCSB_2"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_2_container" class="mCSB_container"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li>
																	<button type="button" class="btn disabled on"
																		onclick="send_movie_name()" data-movie-nm="비상선언"
																		data-movie-no="21084100"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/18/QrXStxq2NTGaeHPaAK5xxOXsarNj2aJd_316.jpg">비상선언</button>
																</li>
															</ul>
														</div>
														<div id="mCSB_2_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: block;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; display: block; height: 87px; max-height: 190px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="masterMovie_CrtnMovie" class="tab-layer-cont">
												<a href="" class="ir"></a>
												<div
													class="scroll m-scroll mCustomScrollbar _mCS_3 mCS_no_scrollbar">
													<div id="mCSB_3"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: 200px;" tabindex="0">
														<div id="mCSB_3_container"
															class="mCSB_container mCS_no_scrollbar_y"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn disabled"
																		onclick="send_crtn_name()"
																		data-movie-nm="[2022 시네도슨트] 오르세 미술관 "
																		data-movie-no="22035700"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/21/atGgAYynEtbhEFYGr1rlHN1kNsVtt4Od_316.jpg">[2022
																		시네도슨트] 오르세 미술관</button></li>
															</ul>
														</div>
														<div id="mCSB_3_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_3_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; display: none; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="poster-section">
										<div class="table">
											<div class="td">
												<a href="/movie-detail?rpstMovieNo=21084100"
													title="비상선언 상세보기"><img class="poster"
													onerror="noImg(this, 'del')"
													src="https://img.megabox.co.kr/SharedImg/2022/07/18/QrXStxq2NTGaeHPaAK5xxOXsarNj2aJd_316.jpg"
													alt="비상선언"></a>
											</div>
										</div>
									</div>
								</div>

								<div id="masterBrch" class="ltab-layer-cont">
									<a href="" class="ir"></a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#tab10" title="서울지점 선택" data-area-cd="10"
													class="on">서울(19)</a></li>
												<li><a href="#tab30" title="경기지점 선택" data-area-cd="30">경기(31)</a></li>
												<li><a href="#tab35" title="인천지점 선택" data-area-cd="35">인천(5)</a></li>
												<li><a href="#tab45" title="대전/충청/세종지점 선택"
													data-area-cd="45">대전/충청/세종(17)</a></li>
												<li><a href="#tab55" title="부산/대구/경상지점 선택"
													data-area-cd="55">부산/대구/경상(22)</a></li>
												<li><a href="#tab65" title="광주/전라지점 선택"
													data-area-cd="65">광주/전라(9)</a></li>
												<li><a href="#tab70" title="강원지점 선택" data-area-cd="70">강원(5)</a></li>
											</ul>
										</div>
										<div class="list-section">
											<div id="tab10" class="tab-layer-cont on">
												<div
													class="scroll m-scroll mCustomScrollbar _mCS_4 mCS_no_scrollbar">
													<div id="mCSB_4"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_4_container"
															class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn"
																		onclick="send_theater_name()" data-area-cd="10"
																		data-brch-no="1372">강남</button></li>
															</ul>
															<div></div>
														</div>
														<div id="mCSB_4_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="tab30" class="tab-layer-cont">
												<div
													class="scroll m-scroll mCustomScrollbar _mCS_5 mCS_no_scrollbar">
													<div id="mCSB_5"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: 200px;" tabindex="0">
														<div id="mCSB_5_container"
															class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn"
																		onclick="send_theater_name()" data-area-cd="30"
																		data-brch-no="4121">고양스타필드</button></li>
															</ul>
															<div></div>
														</div>
														<div id="mCSB_5_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_5_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div id="masterSpclBrch" class="ltab-layer-cont has-img">
									<a href="" class="ir"></a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#tabDBC" title="DOLBY CINEMA특별관 선택"
													data-area-cd="DBC" class="on">DOLBY CINEMA(5)</a></li>
												<li><a href="#tabTBQ" title="THE BOUTIQUE특별관 선택"
													data-area-cd="TBQ">THE BOUTIQUE(8)</a></li>
												<li><a href="#tabMX" title="MX특별관 선택" data-area-cd="MX">MX(8)</a></li>
												<li><a href="#tabCFT" title="COMFORT특별관 선택"
													data-area-cd="CFT">COMFORT(40)</a></li>
												<li><a href="#tabPTC" title="PUPPY CINEMA특별관 선택"
													data-area-cd="PTC">PUPPY CINEMA(1)</a></li>
												<li><a href="#tabMKB" title="MEGABOX KIDS특별관 선택"
													data-area-cd="MKB">MEGABOX KIDS(3)</a></li>
											</ul>
										</div>
										<div class="list-section">
											<div id="tabDBC" class="tab-layer-cont on">
												<div
													class="scroll m-scroll mCustomScrollbar _mCS_11 mCS_no_scrollbar">
													<div id="mCSB_11"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_11_container"
															class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn"
																		data-area-cd="DBC" data-brch-no="0019">남양주현대아울렛
																		스페이스원</button></li>
															</ul>
															<div></div>
														</div>
														<div id="mCSB_11_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_11_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="theater-section">
													<div class="table">
														<div class="td">
															<a href="/specialtheater/dolby" title="DOLBY 특별관 페이지로 이동">
																<p>
																	<strong>DOLBY</strong>국내 최초로 메가박스가 <br>선보이는 세계 최고
																	<br>기술력의 몰입 시네마
																</p> <i class="iconset ico-arrow-half"></i> <img
																src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-dolby.png"
																alt="DOLBY 특별관 페이지로 이동" class="poster">
															</a>
														</div>
													</div>
												</div>
											</div>
											<div id="tabTBQ" class="tab-layer-cont">
												<div
													class="scroll m-scroll mCustomScrollbar _mCS_12 mCS_no_scrollbar">
													<div id="mCSB_12"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
														style="max-height: 200px;" tabindex="0">
														<div id="mCSB_12_container"
															class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
															style="position: relative; top: 0; left: 0;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn"
																		data-area-cd="TBQ" data-brch-no="0028">대전신세계
																		아트앤사이언스</button></li>
															</ul>
															<div></div>
														</div>
														<div id="mCSB_12_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_12_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_12_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 30px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="theater-section">
													<div class="table">
														<div class="td">
															<a href="/specialtheater/boutique"
																title="THE BOUTIQUE 특별관 페이지로 이동">
																<p>
																	<strong>THE BOUTIQUE</strong>영화를 본다는 것,<br>그 놀라운
																	경험을 위하여
																</p> <i class="iconset ico-arrow-half"></i> <img
																src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-boutique.png"
																alt="THE BOUTIQUE 특별관 페이지로 이동" class="poster">
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="box-alert mt40" style="display: none">
							<i class="iconset ico-bell"></i> <strong></strong> <span></span>
						</div>

						<h3 class="tit mt60" style="">
							<span class="font-green">비상선언</span> 무대인사
						</h3>
						<div class="reserve movie-greeting" style="">
							<ul>
								<li><p class="greeting-date">2022.08.06</p>
									<div class="greeting-infomation" brch-no="1212"
										play-schdl-no="2208061212031" rpst-movie-no="21084100"
										theab-no="02" play-de="20220806" play-seq="3">
										<p class="greeting-location">홍대 MewSuppasit관 (9층 2관)</p>
										<p class="greeting-time">14:55~17:25</p>
										<p class="greeting-moment">상영후</p>
										<p class="greeting-person">송강호, 이병헌, 임시완, 김소진 배우</p>
										<p class="btn">
											<span class="button gray">매진</span>
										</p>
									</div></li>
							</ul>
							<ul></ul>
							<div class="btn-more" style="display: none;">
								<button type="button" class="btn">
									<span>닫기</span> <i class="iconset ico-btn-more-arr"></i>
								</button>
							</div>
						</div>

						<h3 class="tit mt60">
							<span class="font-green">비상선언</span> 상영시간표
						</h3>
						<div class="time-schedule mb30">
							<div class="wrap">
								<button type="button" title="이전 날짜 보기" class="btn-pre"
									disabled="true">
									<i class="iconset ico-cld-pre"></i> <em>이전</em>
								</button>
								<div class="date-list">
									<div class="year-area">
										<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2022.08</div>
										<div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
									</div>
									<div class="date-area">
										<div class="wrap"
											style="position: relative; width: 2100px; border: none; left: -70px;">
											<button onclick="click_date(this);" name="actual_date"
												class="disabled" type="button" value="2022.08.01" month="7"
												tabindex="-1">
												<span class="ir">2022년 8월</span><em
													style="pointer-events: none;">1<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button onclick="click_date(this);" name="actual_date"
												class="disabled" type="button" value="2022.08.02" month="7">
												<span class="ir">2022년 8월</span><em
													style="pointer-events: none;">2<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">오늘</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button onclick="click_date(this);" name="actual_date"
												class="on" type="button" value="2022.08.03" month="7">
												<span class="ir">2022년 8월</span><em
													style="pointer-events: none;">3<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">내일</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button onclick="click_date(this);" name="actual_date"
												class="" type="button" value="2022.08.04" month="7">
												<span class="ir">2022년 8월</span><em
													style="pointer-events: none;">4<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
										</div>
									</div>
								</div>
								<!-- <input type="text" id="datepicker"> -->

								<button type="button" title="다음 날짜 보기" class="btn-next"
									disabled="true">
									<i class="iconset ico-cld-next"></i> <em>다음</em>
								</button>
								<div class="bg-line">
									<input type="hidden" id="datepicker">
									<button type="button" class="btn-calendar-large" title="달력보기"
										onclick="print_calendar()">달력보기</button>
								</div>
							</div>
						</div>
						<div class="movie-option mb20">
							<div class="option">
								<ul>
									<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
									<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
									<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
									<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
									<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
									<li><i class="iconset ico-gv" title="GV"></i>GV</li>
									<li><i class="iconset ico-sun" title="조조"></i>조조</li>
									<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
									<li><i class="iconset ico-moon" title="심야"></i>심야</li>
								</ul>
							</div>
							<div class="rateing-lavel">
								<a href="" class="" title="관람등급안내">관람등급안내</a>
							</div>
						</div>
						<div class="reserve theater-list-box">
							<div class="tab-block tab-layer mb30">
								<ul>
									<li class="on"><a href="" class="btn" data-area-cd="10"
										onclick="send_state_name(this)" title="서울 선택">서울</a></li>
									<li><a href="" class="btn" data-area-cd="30" title="경기 선택">경기</a></li>
									<li><a href="" class="btn" data-area-cd="35" title="인천 선택">인천</a></li>
									<li><a href="" class="btn" data-area-cd="45"
										title="대전/충청/세종 선택">대전/충청/세종</a></li>
									<li><a href="" class="btn" data-area-cd="55"
										title="부산/대구/경상 선택">부산/대구/경상</a></li>
									<li><a href="" class="btn" data-area-cd="65"
										title="광주/전라 선택">광주/전라</a></li>
									<li><a href="" class="btn" data-area-cd="70" title="강원 선택">강원</a></li>
								</ul>
							</div>
							<div class="theater-list">
								<div class="theater-area-click">
									<a href="/theater?brchNo=1372" title="강남 상세보기">강남</a>
								</div>
								<div class="theater-type-box">
									<div class="theater-type">
										<p class="theater-name">1관</p>
										<p class="chair">총 232석</p>
									</div>
									<div class="theater-time">
										<div class="theater-type-area">2D</div>
										<div class="theater-time-box">
											<table class="time-list-table">
												<caption>상영시간을 보여주는 표 입니다.</caption>
												<colgroup>
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
													<col style="width: 99px;">
												</colgroup>
												<tbody>
													<tr>
														<td class="" brch-no="1372" play-schdl-no="2208031372006"
															rpst-movie-no="21084100" theab-no="01" play-de="20220803"
															play-seq="1">
															<div class="td-ab">
																<div class="txt-center">
																	<a href="" title="영화예매하기">
																		<div class="ico-box">
																			<i class="iconset ico-sun"></i>
																		</div>
																		<p class="time">09:30</p>
																		<p class="chair">206석</p>
																		<div class="play-time">
																			<p>09:30~12:01</p>
																			<p>1회차</p>
																		</div>
																	</a>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-border v1 mt30" style="display: none;">
							<ul class="dot-list gray"></ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 		</div> -->

		<section id="saw_movie_regi" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a> <input type="hidden"
				id="isLogin">
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">본 영화 등록</h3>
				</header>

				<div class="layer-con">
					<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

					<div class="pop-gray mt10 mb30">
						<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
							type="text" id="movie_regi" class="input-text w280px numType"
							maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
						<button class="button gray ml05" id="regBtn">등록</button>
					</div>

					<div class="box-border v1 mt30">
						<p class="tit-box">이용안내</p>

						<ul class="dot-list">
							<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
							<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를
								입력해주세요.(Yes24, 네이버, 인터파크, SKT, KT, 다음)
							</li>
							<li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
							<li>상영시간 종료 이후 등록 가능합니다.</li>
							<li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
						</ul>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button purple close-layer">닫기</button>
				</div>

				<button type="button" class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>

		<div class="quick-area" style="display: block;">
			<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
		</div>

		<c:import url="../footer.jsp" charEncoding="utf-8" />

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>
	<form id="mainForm"></form>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
</body>
</html>