<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" charEncoding="utf-8" />
<!DOCTYPE html>
<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/bookinglist?tab=01" title="예매/구매내역 페이지로 이동">예매/구매내역</a>
	<a href="/mypage/bookinglist?tab=01" title="예매내역 페이지로 이동">예매내역</a></div></div>
            </div>

            <div class="inner-wrap">

	<div class="lnb-area">
		<nav id="lnb">
			<p class="tit"><a href="Membermain" title="나의 메가박스">나의 메가박스</a></p>

			<ul>
				<li class="on"><a href="BookingList" title="예매/구매내역">예매/구매내역</a></li>
                   <li>
                   	<a href="/mypage/movie-coupon" title="영화/스토어 관람권">영화/스토어 관람권</a>
					<ul class="depth3">
						<li><a href="/mypage/movie-coupon" title="영화관람권">영화관람권</a></li>
						<li><a href="/mypage/store-coupon" title="스토어 교환권">스토어 교환권</a></li>
					</ul>
				</li>
				<li><a id="discountCoupon" href="/mypage/discount-coupon" title="메가박스/제휴쿠폰">메가박스/제휴쿠폰</a></li>
				<!-- <li><a href="/on/oh/ohh/Mvtckt/GiftCardL.do">메가박스 기프트카드</a></li> -->
<!-- 				<li>
					<a href="/mypage/point-list" title="멤버십 포인트">멤버십 포인트</a>
					<ul class="depth3">
						<li><a href="/mypage/point-list" title="포인트 이용내역">포인트 이용내역</a></li>
						<li><a href="/mypage/card-list" title="멤버십 카드관리">멤버십 카드관리</a></li>
						<li><a href="/mypage/milk-service" title="MiL.k 제휴서비스">MiL.k 포인트</a></li>
					</ul>
				</li> -->
				<li><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li>
				<li>
					<a href="/mypage/myinfo?returnURL=info" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="MyInfo" title="개인정보 수정">개인정보 수정</a></li>
						<li><a href="/mypage/additionalinfo" title="선택정보 수정">선택정보 수정</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	
<style type="text/css">
	/* LAYER POPUP STYLE START */
	.fdLayer {display:none; position: absolute; left: 50%; height:auto;  background-color:#fff; border: 5px solid rgb(0, 66, 101); z-index: 10;}
	.fdLayer .fdContainer {padding: 3px;}
	.fdLayer .fdBtn {width: 100%; margin:10px 0 0; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}
	a.closeBtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:rgb(0, 32, 61); font-size:13px; color:#fff; line-height:25px;}
	a.closeBtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}
	#mask { position:absolute; left:0; top:0; z-index:9; background-color:#000; display:none;}
	/* LAYER POPUP STYLE END */
</style>

<!-- 레이어 팝업 처리 시 화면 영역 시작 -->
<div id="mask"></div>
<div id="fdpayWin" class="fdLayer">
	<div class="fdContainer">
		<div class="pop-conts">
			<iframe id="FD_PAY_FRAME" name="FD_PAY_FRAME" title="결제팝업창" frameborder="1" width="560" height="600" style="background-color:#FFFFFF;"></iframe>
			<div class="fdBtn">
				<a href="#" class="closeBtn" title="Close">Close</a>
			</div>
		</div>
	</div>
</div>
<!-- 레이어 팝업 처리 시 화면 영역 끝 -->

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/bookinglist?tab=01" title="예매/구매내역 페이지로 이동">예매/구매내역</a>
	</div>
</div>

<!-- container -->
<div id="contents" class="">
	<h2 class="tit">예매/구매 내역</h2>

	<div class="tab-block tab-layer">
		<ul>
			<li data-url="/mypage/bookinglist?tab=01" data-tit="예매내역" title="예매내역 탭으로 이동" class="on"><a href="#myBokdArea" class="btn">예매 </a></li>
			<li data-url="/mypage/bookinglist?tab=02" data-tit="구매내역" title="구매내역 탭으로 이동"><a href="#myPurcArea" class="btn">구매 </a></li>
		</ul>
	</div>
	<div class="tab-cont-wrap">

		<!-- 예매내역 -->
		<div id="myBokdArea" class="tab-cont on"><a href="" class="ir">예매  탭 화면 입니다.</a>

			<!-- 예매 조회 조건 -->
			<div class="board-list-search mt20">
				<table summary="예매 조회 조건">
					<colgroup>
						<col style="width:75px;">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">구분 </th>
							<td>
								<input type="radio" id="radBokd01" name="radBokd" value="B" checked="checked">
								<label for="radBokd01">예매내역 </label>
								<input type="radio" id="radBokd02" name="radBokd" value="E">
								<label for="radBokd02">지난내역 </label>

								<div class="dropdown bootstrap-select small bs3 disabled">
									<select name="selYM" class="selectpicker small" tabindex="-98" disabled="">
										
											<option value="202208">2022년 8월</option>
										
											<option value="202207">2022년 7월</option>
										
											<option value="202206">2022년 6월</option>
										
											<option value="202205">2022년 5월</option>
										
											<option value="202204">2022년 4월</option>
										
											<option value="202203">2022년 3월</option>
										
											<option value="202202">2022년 2월</option>
										
											<option value="202201">2022년 1월</option>
										
											<option value="202112">2021년 12월</option>
										
											<option value="202111">2021년 11월</option>
										
											<option value="202110">2021년 10월</option>
										
											<option value="202109">2021년 9월</option>
										
									</select>
									<div class="dropdown-menu open" role="combobox" style="max-height: 302px; overflow: hidden; min-width: 111px;">
										<div class="inner open" role="listbox" aria-expanded="false" tabindex="-1" style="max-height: 300px; overflow-y: auto;">
										<ul class="dropdown-menu inner ">
											<li class="selected active">
												<a role="option" aria-disabled="false" tabindex="0" class="selected active" aria-selected="true">
													<span class="text">2022년 8월</span>
												</a>
											</li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 7월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 6월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 5월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 4월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 3월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 2월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2022년 1월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2021년 12월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2021년 11월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2021년 10월</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="text">2021년 9월</span></a></li>
										</ul>
										</div>
									</div>
								</div>

								<button type="button" class="button gray-line small ml05" name="search">
									<i class="iconset ico-search-gray"></i> 조회 
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 예매 조회 조건 End -->

			<!-- 예매 영화 목록 -->
			<div id="bokdList"><div class="no-history-reservation mt20">	예매 내역이 없습니다. </div></div>

			<h3 class="tit mt70">예매취소내역</h3>

			<ul class="dot-list">
				<li>상영일 기준 7일간 취소내역을 확인하실 수 있습니다.</li>
			</ul>

			<!-- 취소한 예매 영화 목록 -->
			<div class="table-wrap mt10">
				<table class="board-list" summary="취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표">
					<caption>취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표</caption>
					<colgroup>
						<col style="width:160px;">
						<col>
						<col style="width:130px;">
						<col style="width:188px;">
						<col style="width:105px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">취소일시</th>
							<th scope="col">영화명</th>
							<th scope="col">극장</th>
							<th scope="col">상영일시</th>
							<th scope="col">취소금액</th>
						</tr>
					</thead>
					<tbody><tr><td colspan="5" class="a-c">취소내역이 없습니다.</td></tr></tbody>
				</table>
			</div>

			<nav class="pagination" id="navBokd"></nav>

			<!-- 예매 안내상황  -->
			<div class="box-pulldown mt30">
				<div class="tit">
					<button type="button" class="btn-toggle">이용안내<i class="iconset ico-arr-toggle-down"></i></button>
				</div>
				<div class="cont">
					<strong>[예매 안내]</strong>
					<ul class="dot-list mb30">
						<li>만 4세(48개월) 이상부터는 영화티켓을 반드시 구매하셔야 입장 가능합니다.</li>
						<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
						<li>메가박스 모바일앱을 이용할 경우 티켓출력없이 모바일티켓을 통해 바로 입장하실 수 있습니다.</li>
					</ul>

					<strong>[티켓교환 안내]</strong>
					<ul class="dot-list mb30">
						<li>극장의 무인발권기(KIOSK)를 통해 예매번호 또는 고객확인번호(생년월일+휴대폰번호)를 입력하여 편리하게 티켓을 발권하실 수 있습니다.</li>
						<li>무인발권기 이용이 어려우신경우, 티켓교환권을 출력하여 매표소에 방문하시면 티켓을 발권하실 수 있습니다.</li>
						<li>(티켓교환권 출력이 어려운경우 예매번호와 신분증을 지참하여 매표소에 방문하시면 티켓을 발권하실 수 있습니다)</li>
					</ul>

					<strong>[예매취소 안내]</strong>
					<ul class="dot-list">
						<li>온라인(홈페이지/모바일) 예매 취소는 상영시간 20분전까지 입니다.</li>
						<li>위탁 예매 사이트 이용 시 취소 및 환불 규정은 해당 사이트 규정을 따릅니다.</li>
						<li>LIVE 공연 콘텐트는 취소 기준은 아래와 같습니다.
							<ul class="dash-list">
								<li>관람 4일전 : 취소 가능</li>
								<li>관람 3일 ~ 1일전 : 취소 수수료 부담 후 취소 가능</li>
								<li>관람 당일 : 취소 및 환불 불가</li>
							</ul>
						</li>
						<li>공연 관람시 시작 시간 이후에는 입장이 제한 됩니다.</li>
						<li>발권된 티켓은 상영시간 전까지 현장 방문 시에만 취소가 가능합니다.</li>
					</ul>
				</div>
			</div>
			<!-- 예매 안내상황 End -->
		</div>

		<!-- 구매내역 영역 -->
		<div id="myPurcArea" class="tab-cont"><a href="" class="ir"></a>

			<!-- 구매 조회 조건 -->
			<div class="board-list-search mt20">
				<table summary="구매 조회 조건">
					<colgroup>
						<col style="width:75px;">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">구분</th>
							<td>
								<div class="dropdown bootstrap-select mr10 small bs3"><select class="selectpicker mr10 small" name="selPurc" tabindex="-98">
									<option value="">전체</option>
									<option value="SPD54">스토어</option>
									<option value="SPD52">모바일오더</option>
								</select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" title="전체"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">전체</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>

								<input type="radio" name="radPurc" id="radPurc01" value="" checked="checked">
								<label for="radPurc01">전체</label>
								<input type="radio" name="radPurc" id="radPurc02" value="P">
								<label for="radPurc02">구매내역</label>
								<input type="radio" name="radPurc" id="radPurc03" value="C">
								<label for="radPurc03">취소내역</label>
							</td>
						</tr>
						<tr>
							<th scope="row">조회기간</th>
							<td>
								<div class="btn-period">
									<button type="button" class="btn" value="D7">1주일</button>
									<button type="button" class="btn on" value="M1">1개월</button>
									<button type="button" class="btn" value="M3">3개월</button>
									<button type="button" class="btn" value="M6">6개월</button>
								</div>
								<div class="date">
									<input type="text" title="조회기간 시작 날짜 입력" placeholder="yyyy.mm.dd" class="date-calendar v2 hasDatepicker" id="dp1659517546428"><button type="button" class="ui-datepicker-trigger">날짜 선택</button>
									<span>~</span>
									<input type="text" title="조회기간 마지막 날짜 입력" placeholder="yyyy.mm.dd" class="date-calendar v2 hasDatepicker" id="dp1659517546429"><button type="button" class="ui-datepicker-trigger">날짜 선택</button>
									<button type="button" class="button gray-line" name="search">
										<i class="iconset ico-search-gray"></i> 조회
									</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 구매 조회 조건 End -->

			<!-- 구매 목록  -->
			<div class="board-list-util mb10">
				<p class="result-count pt00">
					<strong>전체 <b class="font-gblue">0</b>건</strong>
				</p>
			</div>

			<div class="table-wrap">
				<table class="board-list" summary="결제일시, 구분, 상품명, 결제금액, 상태 항목을 가진 결제내역 목록 표">
					<caption>결제일시, 구분, 상품명, 결제금액, 상태 항목을 가진 결제내역 목록 표</caption>
					<colgroup>
						<col style="width:160px;">
						<col style="width:150px;">
						<col>
						<col style="width:120px;">
						<col style="width:120px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">결제일시</th>
							<th scope="col">구분</th>
							<th scope="col">상품명</th>
							<th scope="col">결제금액</th>
							<th scope="col">상태</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>

			<nav class="pagination" id="navPurc"></nav>

			<!-- 구매 안내상황  -->
			<div class="box-pulldown mt30">
				<div class="tit">
					<button type="button" class="btn-toggle">이용안내<i class="iconset ico-arr-toggle-down"></i></button>
				</div>
				<div class="cont">
					<strong>[스토어 구매/취소 안내]</strong>
					<ul class="dot-list mb30">
						<li>스토어 상품은 구매 후 취소가능기간 내 100% 환불이 가능하며, 부분환불은 불가 합니다. </li>
						<li>(ex. 3개의 쿠폰을 한 번에 구매하신 경우, 3개 모두 취소만 가능하며 그 중 사용하신 쿠폰이 있는 경우 환불이 불가합니다)</li>
						<li>스토어 교환권은 MMS로 최대 1회 재전송 하실 수 있습니다.</li>
					</ul>

					<strong>[모바일오더 구매/취소 안내]</strong>
					<ul class="dot-list mb30">
						<li class="font-red">ⓘ 모바일오더는 모바일앱을 통해 이용하실 수 있습니다.</li>
						<li>모바일오더는 구매 후 즉시 조리되는 상품으로 취소가 불가 합니다.</li>
						<li>극장 매점에서 주문번호가 호출되면 상품을 수령하실 수 있습니다.</li>
						<li>극장 상황에 따라 상품준비시간이 다소 길어질 수 있습니다.</li>
					</ul>
				</div>
			</div>
			<!-- 구매 안내상황  End -->

		</div>
	</div>
</div>
</div>
            </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />