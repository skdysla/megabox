<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="pPath" value="/" />
<c:import url="../header.jsp" charEncoding="utf-8" />

<!DOCTYPE html>
<script src="${pPath }resources/js/user.datepicker.js"></script>

<!-- <script>
	$(document).on("click","#CalDate",function(){
		$(this).addClass('on').siblings().removeClass('on');
	})
</script> -->
<script>
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=radBokd]").click(function(){
 
        if($("input[name=radBokd]:checked").val() == "E"){
            $("#selYM").removeAttr("disabled");
 			$("button[name=search]").removeClass("disabled");
        }else if($("input[name=radBokd]:checked").val() == "B"){
              $("#selYM").attr('disabled', 'disabled');
        }
    });
});
var req;
function cancelCheck(){
	var result = confirm('예매를 취소하시겠습니까?');
	if(result){
		var b_num = document.getElementById('b_num').value;
		$.ajax({
            type: "GET",
            url: "cancelBooking",
            data: {
                "b_num" : b_num
            }
            });
		location.replace(location.href);
	}else{
		
	}
}

</script>
<script>
function optionSearch(){
	var radPurc = $('input[name=radPurc]:checked').val();
	var startDate= document.getElementById('startDate').value;
	var endDate = document.getElementById('endDate').value;
	$.ajax({
		type: "post",
		url: "optionBuylist",
		data: {
			"radPurc" : radPurc,
			"startDate" : startDate,
			"endDate" : endDate
		},
		success: function(data){
			console.log(data);
		}
	});
}
</script>
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
				<li><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li>
				<li>
					<a href="MyInfo" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="MyInfo" title="개인정보 수정">개인정보 수정</a></li>
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
								<input type="radio" id="radBokd" name="radBokd" value="B" checked >
								<label>예매내역 </label>
								<input type="radio" id="radBokd" name="radBokd" value="E">
								<label >지난내역 </label>

								
									<select name="selYM" id="selYM" disabled>
										
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
									
								

								<button type="button" class="button gray-line small" name="search">
									<i class="iconset ico-search-gray"></i> 조회 
								</button>
							</td>
						</tr> 
					</tbody>
				</table>
			</div>
			<!-- 예매 조회 조건 End -->
			
			<!-- 예매 영화 목록     if 예매 내역이 존재하지 않으면 이 div를 띄워준다.-->
			<%int count = 1; %>
			<c:choose>
			<c:when test="${ymList == null}">
				<div id="bokdList"><div class="no-history-reservation mt20">	예매 내역이 없습니다. </div></div>
			</c:when>
			<c:otherwise>
			<c:forEach var="uYM" items="${ymList }">
			<div id="bokdList">
				<div class="board-list-util">	
					<p class="result-count pt00"><strong>총<b class="font-gblue"><%=count %></b>건</strong>	</p>
				</div>
				<div class="history-reservation">	
					<ul>
						<li>	
							<div class="round">		
								<a href="#" class="img" title="${uYM.m_name }">
									<img src="${uYM.m_poster }" alt="${uYM.m_name }" onerror="noImg(this)" width="135" height="194">
								</a>
								<table class="table">			
									<colgroup>				
										<col style="width:75px;">				
										<col style="width:230px;">				
										<col style="width:80px;">				
										<col>			
									</colgroup>			
									<tbody>
										<tr>	
											<th scope="row" class="a-r">예매번호</th>	
											<td colspan="3">		
											<em class="num">${uYM.b_num }</em>	
											<input type="hidden" id="b_num" value="${uYM.b_num }">
											</td>
										</tr>
										<tr>	
											<th scope="row" class="a-r">영화명</th>	
											<td colspan="3">		
												<p class="tit-movie">			
													<span>${uYM.m_name }</span>			
													<!-- <span>2D(자막)</span>	 -->	
												</p>	
											</td>
										</tr>
										<tr>	
											<th scope="row" class="a-r">극장/상영관</th>	
											<td>${uYM.c_name} ${uYM.s_name}</td>	
											<th scope="row">관람인원</th>	
											<td>성인 ${uYM.b_s_cnt }명</td>
										</tr>
										<tr>
											<th scope="row" class="a-r">관람일시</th>	
											<td>${uYM.r_date } ${uYM.b_start } </td>	
											<th scope="row">관람좌석</th>	
											<td>${uYM.b_seat }</td>
										</tr>
									</tbody>		
								</table>		
								<div class="bg-round">			
									<table class="table">				
										<colgroup>					
											<col style="width:75px;">					
											<col style="width:230px;">					
											<col style="width:100px;">					
											<col>				
										</colgroup>				
										<tbody>
											<tr>	
												<th scope="row" class="a-r">결제일시</th>	
												<td>${uYM.b_date }		<a href="#" class="button gray-line x-small" title="결제정보">결제정보</a>	</td>	
												<!-- <th scope="row">적립예정 포인트</th>	
												<td>600 P</td> -->
											</tr>
										</tbody>			
									</table>		
								</div>		
								<div class="btn-group">
								<a href="" title="" class="button purple">교환권출력</a>			
								<a href="#" class="button gray" title="예매취소" onclick="cancelCheck()">예매취소</a>		
								</div>	
							</div>
						</li>
					</ul>
				</div>
			</div>
			<%count++; %>
			</c:forEach>
			</c:otherwise>
			</c:choose>
			
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
					
					<!-- 취소내역 -->
					<c:choose>
						<c:when test="${cList == null }">
							<tbody><tr><td colspan="5" class="a-c">취소내역이 없습니다.</td></tr></tbody>
						</c:when>
						<c:otherwise>
							<c:forEach var="list" items="${cList }">
								<tbody>
									<tr>	
										<td>${list.cb_canceldate }</td>	
										<th scope="row">${list.m_name }</th>	
										<td>${list.c_name }</td>	
										<td>${list.r_date } ${list.b_start }</td>	
										<td class="a-r">		
										<span class="font-red">${list.b_fee }원</span>	
										</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					
				</table>
			</div>
			<!-- 내역 있을때 -->
			<nav class="pagination" id="navBokd"><strong class="active">1</strong> </nav>
			<!-- 내역 없을때 -->
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
									<input type="radio" name="radPurc" id="radPurc" value="A" checked>
									<label for="radPurc01">전체</label>
									<input type="radio" name="radPurc" id="radPurc" value="P">
									<label for="radPurc02">구매내역</label>
									<input type="radio" name="radPurc" id="radPurc" value="C">
									<label for="radPurc03">취소내역</label>
								</td>
							</tr>
							<tr>
								<th scope="row">조회기간</th>
								<td>
									<div class="btn-period">
										<button type="button" class="btn" id="CalDate" value="D7">1주일</button>
										<button type="button" class="btn on" id="CalDate" value="M1">1개월</button>
										<button type="button" class="btn" id="CalDate" value="M3">3개월</button>
										<button type="button" class="btn" id="CalDate" value="M6">6개월</button>
									</div>
									<div class="date">
										<input type="text" title="조회기간 시작 날짜 입력" placeholder="yyyy.mm.dd" class="date-calendar v2" id="startDate" name="startDate">
										<span>~</span>
										<input type="text" title="조회기간 마지막 날짜 입력" placeholder="yyyy.mm.dd" class="date-calendar v2" id="endDate" name="endDate">
										<button type="button" class="button gray-line" name="search" onclick="optionSearch()">
											<i class="iconset ico-search-gray"></i> 조회
										</button>
									</div>
								</td>
							</tr>
						</tbody>
						<!-- 결과에 따라 리스트 뿌려ㅕ주기 취소내역 구매내역 등등 -->
						
				</table>
			</div>
			<!-- 구매 조회 조건 End -->

			<!-- 구매 목록  -->
			<%int gmcount = 0; %>
			<div class="board-list-util mb10">
				<p class="result-count pt00">
					<strong>전체 <b class="font-gblue"><%=gmcount %></b>건</strong>
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
							<th scope="col">결제 및 취소일</th>
							<th scope="col">구분</th>
							<th scope="col">상품명</th>
							<th scope="col">결제금액</th>
							<th scope="col">상태</th>
							
						</tr>
					</thead>
					
<!-- 					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>4</td>
						</tr>
					</tbody> -->
					
 					<c:choose>
						<c:when test="${GMList == null && CCList == null}">
							<tbody><tr><td colspan="5" class="a-c">조회된 내역이 없습니다.</td></tr></tbody>
						</c:when>
						<c:when test="${GMList == null && CCList != null }">
							<c:forEach var="CCList" items="${CCList }">
								<tbody>
									<tr>	
										<td>${CCList.cb_canceldate }</td>	
										<th scope="row"><span>취소</span></th>	
										<td>${CCList.c_name }</td>	
										<td class="a-r">		
										<span class="font-red">${CCList.b_fee }원</span>	
										</td>
										<td></td>
									</tr>
								</tbody>
								<%gmcount++; %>
							</c:forEach>
						</c:when>
						<c:when test="${GMList != null && CCList == null }">
							<c:forEach var="GMlist" items="${GMList }">
								<tbody>
									<tr>	
										<td>${GMList.b_date }</td>	
										<th scope="row"><span>구매</span></th>	
										<td>${GMList.c_name }</td>	
										<td class="a-r">		
										<span class="font-red">${GMList.b_fee }원</span>	
										</td>
										<td></td>	
									</tr>
								</tbody>
								<%gmcount++; %>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach var="GMlist" items="${GMList }">
								<tbody>
									<tr>	
										<td>${GMList.b_date }</td>	 
										<th scope="row"><span>구매</span></th>	
										<td>${GMList.c_name }</td>	
										<td class="a-r">		
										<span class="font-red">${GMList.b_fee }원</span>	
										</td>
										<td></td>	
									</tr>
								</tbody>
								<%gmcount++; %>
							</c:forEach> 
							<c:forEach var="CCList" items="${CCList }">
								<tbody>
									<tr>	
										<td>${CCList.cb_canceldate }</td>	
										<th scope="row"><span>취소</span></th>	
										<td>${CCList.c_name }</td>	
										<td class="a-r">		
										<span class="font-red">${CCList.b_fee }원</span>	
										</td>
										<td></td>
									</tr>
								</tbody>
								<%gmcount++; %>
							</c:forEach>
						</c:otherwise>
						</c:choose> 
						
						
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