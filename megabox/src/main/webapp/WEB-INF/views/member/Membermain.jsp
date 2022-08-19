<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
<!-- 				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li> -->
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

						<i class="iconset ico-add-photo"></i>

						<button type="button" class="img">
							<!-- 만약 이미지를 설정해주지 않았다면 기본이미지 보여주기 -->
							<img src="${path}/resources/images/bg-photo.png" onerror="noImg(this, 'human')">
						</button>
					</div>
				</div>

				<div class="grade">
					<p class="name">${sessionScope.name}님은<br>일반등급입니다.</p>

					<div class="link">
						<a href="/mypage/myinfo?returnURL=info" title="개인정보수정 페이지로 이동">개인정보수정 <i class="iconset ico-arr-right-reverse"></i></a>
						<a href="#layer_before_grade" id="bfrClassSearch" class="btn-modal-open" w-data="400" h-data="400" title="지난등급 상세보기">
							지난등급조회 <i class="iconset ico-arr-right-reverse"></i>
						</a>
					</div>
				</div>

				<div class="txt-vip-coupon" style="display: none;">
					<i class="iconset ico-exclamation-white"></i> 아직 VIP쿠폰북을 발급하지 않으셨네요! <a href="/vipcoupon/guide" title="VIP쿠폰북 발급 페이지로 가기">VIP쿠폰북 발급하기</a>
				</div>

				<div class="special-membership" id="myMembership">
					<p class="tit">Special Membership</p>

					<!-- 스폐셜 가입 안했을 때 -->
					<div class="no-join">
						<p class="txt">가입된 스페셜멤버십이<br>없습니다.</p>

						<a href="/curation/specialcontent" title="스페셜멤버십 가입 페이지로 이동">스페셜멤버십 <i class="iconset ico-arr-right-reverse"></i></a>
					</div>
				</div>
			</div>
			<!--// top -->

			<!-- bottom -->
			<div class="bottom">
				

				<!-- theater -->
<!-- 				<div class="theater" id="myFaverBrch">
					<div class="tit-area">
						<p class="tit">선호극장</p>
						<a href="" class="right" title="선호극장 변경">변경 <i class="iconset ico-arr-right-reverse"></i></a>
					</div>

					<div class="list">
						<div class="no-list" style="display: none;">
							<span>선호극장</span>을  설정하세요.
						</div>
						<ol><li>	<em>1</em>	<span>상봉</span></li></ol>
					</div>
				</div> -->
				<!--// theater -->

				<!-- coupon -->
<!-- 				<div class="coupon" id="myCoupon">
					<div class="tit-area">
						<p class="tit">관람권/쿠폰</p>

						<a href="/mypage/movie-coupon" class="more"><i class="iconset ico-arr-right-gray" title="영화관람권 페이지로 이동">더보기</i></a>
					</div>

					<div class="list">
						<ul>
							<li>
								<span>영화관람권</span>
								<em>0 매</em>
							</li>
							<li>
								<span>스토어교환권</span>
								<em>0 매</em>
							</li>
							<li>
								<span>할인/제휴쿠폰</span>
								<em>1 매</em>
							</li>
						</ul>
					</div>
				</div> -->
				<!--// coupon -->
			</div>
			<!--// bottom -->
		</div>
		<!--// my-magabox-info -->

		<!-- 레이어 : 지난등급조회 -->
		<section id="layer_before_grade" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">지난등급조회</h3>
				</header>

				<div class="layer-con">

					<!-- layer-before-grade -->
					<div class="layer-before-grade">
						<p class="name">임예빈님은<br>일반등급입니다.</p>

						<div class="table-wrap mt10">
							<table class="data-table a-c" summary="지난등급조회 목록 표">
								<caption>지난등급조회 목록 표</caption>
								<colgroup>
									<col style="width:50%;">
									<col style="width:50%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">승급 년도</th>
										<th scope="col">등급</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>

						<ul class="dash-list mt10">
							<li>지난 5년 간의 회원 등급을 확인하실 수 있습니다.</li>
						</ul>
					</div>
					<!--// layer-before-grade -->
				</div>

				<button type="button" class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>
		<!--// 레이어 : 지난등급조회 -->

		<!-- vip 일때만 출력 : my-stamp-mission -->
		
		<!--// vip 일때만 출력 : my-stamp-mission -->

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

			<!-- right -->
			<div class="col right" id="myFaverInfo">
				<div class="tit-util">
					<h2 class="tit small">선호관람정보</h2>

					<div class="right">
						<a href="" class="button gray-line small" title="설정">설정</a>
					</div>
				</div>

				<div class="box-border favor-see">
					<ul class="dot-list gray">
						<li><span class="font-gblue mr10">내 선호장르</span></li>
						<li><span class="font-gblue mr10">내 선호시간</span></li>
					</ul>
				</div>
			</div>
			<!--// right -->
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
					<li class="no-result">
						<div class="no-history-reservation">
							예매 내역이 없습니다.
						</div>
					</li>
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