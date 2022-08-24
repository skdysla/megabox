<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:if test="${empty sessionScope.id }">
	<script>
		location.href='login'
	</script>
</c:if>
<c:import url="../header.jsp" charEncoding="utf-8" />
<!DOCTYPE html>
<div class="container has-lnb">
	<div class="page-util fixed">
		<div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
</div>
	</div>
		</div>

            <div class="inner-wrap">

	<div class="lnb-area location-fixed">
		<nav id="lnb">
			<p class="tit on"><a href="Membermain" title="나의 메가박스">나의 메가박스</a></p>

			<ul>
				<li class=""><a href="BookingList" title="예매/구매내역">예매/구매내역</a></li>
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
<!-- 				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li> -->
				<li>
					<a href="MyInfo?id=${sessionScope.id}" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="MyInfo?id=${sessionScope.id}" title="개인정보 수정">개인정보 수정</a></li>
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

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
	</div>
</div>

<div id="contents" class="location-fixed">

	<!-- my-megabox-main -->
	<div class="my-megabox-main">

		<div class="my-magabox-info ">
			<!-- top -->
			<div class="top">
				<div class="photo" id="myPhoto">
					<div class="wrap">
						<form name="fileForm" style="display: none;">
							<input type="file" name="file">
							<input type="hidden" name="fileMbNo" value="10857053">
						</form>
						
						<c:choose>
							<c:when test="${userImage == null} ">
								<i class="iconset ico-add-photo"></i>
								<a href="MyInfo?id=${sessionScope.id}">
								<button type="button" class="img">
									<!-- 만약 이미지를 설정해주지 않았다면 기본이미지 보여주기 -->
									<img src="${path}/resources/images/bg-photo.png" onerror="noImg(this, 'human')">
								</button>
								</a>
							</c:when>
							<c:otherwise>
								<i class="iconset ico-add-photo"></i>
								<a href="MyInfo?id=${sessionScope.id}">
								<button type="button" class="img">
									<!-- 만약 이미지를 설정해주지 않았다면 기본이미지 보여주기 -->
									<img src="${userImage }">
								</button>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

				<div class="grade">
					<p class="name">${sessionScope.name}님 <br>안녕하세요.</p>

					<div class="link">
						<a href="MyInfo?id=${sessionScope.id}" title="개인정보수정 페이지로 이동">개인정보수정 <i class="iconset ico-arr-right-reverse"></i></a>
						<a href="BookingList" id="bfrClassSearch" class="btn-modal-open" w-data="400" h-data="400">
							나의 예매 내역 <i class="iconset ico-arr-right-reverse"></i>
						</a>
					</div>
				</div>
			</div>
			<!--// top -->

		</div>
		<!--// my-magabox-info -->

		<!-- column -->
		<div class="column mt70">
			<!-- left -->
			<div class="col left" id="myStory">
				<div class="tit-util">
					<h2 class="tit small">나의 무비스토리</h2>

					<div class="right">
						<a href="#saw_movie_regi" class="button gray-line small btn-modal-open" w-data="600" h-data="470" title="본 영화 등록">본 영화 등록</a>
					</div>
				</div>

				<div class="box-border link-movie-story">
					<a href="/mypage/moviestory?cd=sm" title="본 영화 탭으로 이동">
						<em>0</em>
						<span>본 영화</span>
					</a>

					<a href="/mypage/moviestory?cd=one" title="관람평 탭으로 이동">
						<em>0</em>
						<span>관람평</span>
					</a>

					<a href="/mypage/moviestory?cd=lm" title="보고싶어 탭으로 이동">
						<em>0</em>
						<span>보고싶어</span>
					</a>

					<a href="/mypage/moviestory?cd=mp" title="무비포스트 탭으로 이동">
						<em>0</em>
						<span>무비포스트</span>
					</a>
				</div>
			</div>
			<!--// left -->

		</div>
		<!--// column -->

		<div id="myBokd">
			<div class="tit-util mt70">
				<h2 class="tit small">나의 예매내역</h2>

				<a href="BookingList" class="more" title="나의 예매내역 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
			</div>

			<!-- my-reserve-history -->
			<div class="my-reserve-history">
				<ul>
					<c:choose>
						<c:when test="">
							<li class="no-result">
								<div class="no-history-reservation">
									예매 내역이 없습니다.
								</div>
							</li>
						</c:when>
						<c:otherwise>
							<c:forEach var="uYM" items="${ymList }">
							<div id="bokdList">
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
							</c:forEach>
						</c:otherwise>
					</c:choose>
					
				</ul>
			</div>
			<!--// my-reserve-history -->
		</div>

		<div id="myPurc">
			<div class="tit-util mt70">
				<h2 class="tit small">나의 구매내역</h2>

				<a href="BookingList" class="more" title="나의 구매내역 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
			</div>

			<div class="table-wrap">
				<table class="board-list line" summary="나의 구매내역 요약 표">
					<caption>나의 구매내역 요약 표</caption>
					<colgroup>
						<col style="width:160px;">
						<col style="width:140px;">
						<col>
						<col style="width:120px;">
						<col style="width:80px;">
					</colgroup>
					<tbody><tr><td colspan="6" class="a-c">구매내역이 없습니다.</td></tr></tbody>
				</table>
			</div>
		</div>

		<!-- column -->
		<div class="column mt70">
			<!-- left -->
			<!-- <div class="col left" id="mySbsc">
				<div class="tit-util">
					<h2 class="tit small">참여이벤트</h2>
					<a href="/mypage/myevent" class="more" title="참여이벤트 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
				</div>

				<div class="brd-list">
					<ul><li>	<a href="#" data-no="11610" data-netfunnel="N" class="eventBtn link" title="돌친자들 모여라!! 돌비 시네마 2주년 파티 2gether 🎉 상세보기">		<p class="cate">			<em>메가Pick</em>		</p>		<p class="tit">돌친자들 모여라!! 돌비 시네마 2주년 파티 2gether 🎉</p>	</a></li></ul>
				</div>
			</div> -->
			<!--// left -->

			<!-- right -->
			<div class="myPurc">
				<div class="tit-util">
					<h2 class="tit small">문의내역</h2>

					<a href="MyInquiry" class="more" title="문의내역 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
				</div>

				<div class="brd-list">
					<ul>
						<li class="no-result">
							문의내역이 없습니다.
						</li>
					</ul>
				</div>
			</div>
			<!--// right -->
		</div>
		<!--// column -->
	</div>
	<!--// my-megabox-main -->
</div>

            </div>
        </div>
        
<c:import url="../footer.jsp" charEncoding="utf-8" />