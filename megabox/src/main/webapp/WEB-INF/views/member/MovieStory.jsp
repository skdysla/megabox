<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<c:import url="../header.jsp" charEncoding="utf-8" />
<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/moviestory" title="나의 무비스토리 페이지로 이동">나의 무비스토리</a>
	<a href="/mypage/moviestory?cd=tl" title="무비타임라인 페이지로 이동">무비타임라인</a></div></div>
            </div>

            <div class="inner-wrap">
                
	<div class="lnb-area">
		<nav id="lnb">
			<p class="tit"><a href="Membermain" title="나의 메가박스">나의 메가박스</a></p>

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
				<li class="on"><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
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

<script src="/js/megabox-movieStory.js"></script>
<script src="/static/pc/js/swiper.min.js"></script>

<form id="movieForm" method="post">
	<input type="hidden" id="currentPage" value="1">
	<input type="hidden" id="recordCountPerPage" value="10">
</form>

<!-- contents -->

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/moviestory" title="나의 무비스토리 페이지로 이동">나의 무비스토리</a>
	</div>
</div>

<div id="contents" class="">
	<h2 class="tit">나의 무비스토리</h2>

	

	<div class="tab-block mb30">
		<ul>
			<li data-url="/mypage/moviestory?cd=tl" class="on"><a id="movieTimeLineTab" href="#" class="btn" data-type="tl" title="무비타임라인 탭으로 이동">무비타임라인</a></li>
			<li data-url="/mypage/moviestory?cd=mp"><a href="#" class="btn" data-type="mp" title="무비포스트 탭으로 이동">무비포스트</a></li>
			<li data-url="/mypage/moviestory?cd=one"><a href="#" class="btn" data-type="one" title="관람평 탭으로 이동">관람평</a></li>
			<li data-url="/mypage/moviestory?cd=sm"><a href="#" class="btn" data-type="sm" title="본영화 탭으로 이동">본영화</a></li>
			<li data-url="/mypage/moviestory?cd=lm"><a href="#" class="btn" data-type="lm" title="보고싶어 탭으로 이동">보고싶어</a></li>
		</ul>
	</div>

	<!-- 나의 무비타임라인 -->
	<div class="my-timeline myTimeline myMovieStory" style="display: block;">
		
			
			

			<button type="button" class="btn-year year-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 년도 선택</button>

			<div class="time-year swiper-container-initialized swiper-container-horizontal">
				<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
					
						<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
						<div class="cell swiper-slide swiper-slide-active" style="width: 86.2222px;">
							<button type="button" class="btn on" data-no="2021">2021</button>
						</div>
					
						<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
						<div class="cell swiper-slide swiper-slide-next" style="width: 86.2222px;">
							<button type="button" class="btn" data-no="2022">2022</button>
						</div>
					
				</div>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

			<button type="button" class="btn-year year-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 년도 선택</button>
		
	</div>

	<!-- my-timeline-list -->
	<div class="my-timeline-list myTimeline myMovieStory" style="display: block;">
		<ol>
		<!-- for문으로 날짜별 받아오기 -->
			<li>    
				<div class="date"><p>2021.07.29</p></div>    
				<ul class="movie">
					<li>
					<a href="javaScript:void(0)" title="영화제목" class="img posterImg btn-modal-open2" w-data="850" h-data="auto" data-no="86609766" data-cd="ADMIS" data-mno="21042000">
						<img src="#" onerror="noImg(this)" alt="[영화제목]"> <!-- 영화 포스터 -->
					</a>    
					<div class="cont">        
						<p class="label">본영화</p> <!-- 보고싶어, 본영화... -->
						<p class="tit"><a href="javaScript:void(0)" title="[영화제목] 상세보기">영화 제목</a></p>
						<div class="theater"><p>상봉</p><p>8층 5관</p><p>2021.07.29(목) 08:30 (1회차)</p></div>
					</div>
					</li>    
				</ul>
			</li>
		</ol>
	</div>
	<!--// my-timeline-list -->

	<div class="btn-more v1 pt00 myTimeline myMovieStory" style="display: none;">
		<button type="button" class="btn" id="addList">더보기 <i class="iconset ico-btn-more-arr"></i></button>
	</div>
	<!--// 나의 무비타임라인 -->

	<!-- 나의 무비포스트 -->
	<div class="my-movie-post myMoviePost myMovieStory" style="display: none;">
		<div class="tab-sorting mb20">
			<button type="button" class="on" data-type="my">나의 포스트</button>
			<button type="button" data-type="mySubscribe">구독중인 포스트</button>
		</div>

		<!-- movie-list-util -->
		<div class="movie-list-util">
			<p class="result-count  line32">
				<strong>총 <b class="font-gblue" id="myMoviePostCnt">0</b> 건</strong>
			</p>

			<div class="float-r">
				<div class="movie-sorting">
					<span><button type="button" class="btn on" data-type="date">최신순</button></span>
					<span><button type="button" class="btn" data-type="like">공감순</button></span>
				</div>

				<div class="movie-search">
					<input type="text" title="제목, 장르, 감독, 주연배우를 입력하세요" placeholder="제목, 장르, 감독, 주연배우" class="input-text" name="ibxMovieNmSearch">
					<button type="button" class="btn-search-input">검색</button>
				</div>
			</div>
		</div>
		<!--// movie-list-util -->

		<div class="movie-post-list" id="moviePostList"></div>

		<div class="more-movie-list">
			<button type="button" class="button btn-more-movie-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
		</div>
	</div>
	<!--// 나의 무비포스트 -->

	<div class="board-list-util myOne myMovieStory" style="display: none;">
		<p class="result-count">
			<strong>총 <b class="font-gblue" id="myOneCnt">0</b> 건</strong>
		</p>
	</div>

	<!-- 나의 한줄평 -->
	<div class="my-appraisal myOne myMovieStory" style="display: none;">
		<ul id="myAppraisal"></ul>
	</div>

	<nav class="pagination myOne myMovieStory" style="display: none;"></nav>
	<!--// 나의 한줄평 -->

	<!-- 나의 본영화 -->
	<div class="mypage-infomation mt20 mySeenMovie myMovieStory" style="display: none;">
		<ul class="dot-list mb20">
			<!-- <li>본 영화 리스트는 실제 관람한 이력으로 보여지며, 상영일 익일에 자동 노출됩니다.</li> 20190819 -->
			<li>극장에서 발권하신 티켓 바코드 하단의 거래번호를 통해 본 영화 등록을 하실 수 있습니다.</li>
			<!-- <li>유료 관람 영화 편수는 ‘나의 메가박스’에서 확인 하실 수 있습니다.</li> -->
			<li>본영화는 관람한 인원수에 한해 등록이 가능합니다.</li>
		</ul>

		<div class="btn-group right mySeenMovie myMovieStory" style="display: none;">
			<a href="#saw_movie_regi" class="button btn-modal-open" w-data="600" h-data="470" title="본 영화 등록">본 영화 등록</a>
		</div>
	</div>

	<div class="board-list-util mySeenMovie myMovieStory" style="display: none;">
		<p class="result-count">
			<strong>총 <b class="font-gblue" id="mySeenMovieCnt">0</b> 건</strong>
		</p>
	</div>

	<!-- my-saw-movie -->
	<div class="my-saw-movie mt10 mySeenMovie myMovieStory" style="display: none;">
		<ul id="mySawMovie"></ul>
	</div>
	<!--// my-saw-movie -->

	<nav class="pagination mySeenMovie myMovieStory" style="display: none;"></nav>
	<!--// 나의 본영화 -->

	<!--// 나의 보고싶어 -->
	<!-- my-movie-list -->
	<div class="my-movie-list myLikeMovie myMovieStory" style="display: none;">
		<div class="board-list-util">
			<p class="result-count">
				<strong>총 <b class="font-gblue" id="totalCnt">0</b>건</strong>
			</p>
		</div>

		<div class="movie-list myLikeMovie myMovieStory" style="display: none;">
			<ol class="list" id="movieList"></ol>
		</div>

		<div class="more-movie-list pt30 myLikeMovie myMovieStory" style="display: none;">
			<button type="button" class="button btn-more-like-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
		</div>

	</div>
	<!--// my-movie-list -->

	<!-- 보고싶어 영화 없을 때 -->
	<div class="no-my-movie-list myLikeMovie myMovieStory" id="noDataDiv" style="display: none;">
		<i class="iconset ico-movie-see"></i>
		<p>보고싶은 영화를 담아주세요.</p>
	</div>
	<!--// 나의 보고싶어 -->
</div>
<!--// contents -->

<!--################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
	<section id="layer_post_detail" class="modal-layer2"><a href="" class="focus">레이어로 포커스 이동 됨</a>
				<div class="wrap">
					<header class="layer-header">
						<h3 class="tit">무비포스트 상세</h3>
					</header>

					<div class="layer-con">

						<div class="post-detail">
							<div class="tit-area mb30">
								<p class="tit">
								</p>

								<div class="direct-link">
									<a id="bokdLinkBtn" data-no="" href="" style="display: none;" title="">예매하기</a>
								</div>
							</div>

							
							<div class="user-post-box mb40">
								<div class="user-post-case">
									<!-- post-top-area -->
									<div class="post-top-area">
										
										<div class="user-info">
											<p class="photo">
												<img src="../../../static/pc/images/movie/img-P-MO-PO0101-user-img01.png" alt="userid80**님의 무비포스트">
											</p>

											<p class="user-id">
												<a href="" title="ID"></a>
											</p>

											<p class="user-write-time"></p>
										</div>
										

										<div class="btn-util">
											<!-- 구독하기 전 -->
											<button type="button" class="button x-small gray-line" id="subscribe"></button>
										</div>

										<!-- post-funtion -->
										<div class="post-funtion">
											<div class="wrapper">
												<button type="button" class="btn-alert mp">옵션보기</button>
												<!--
												유저 일때
												<div class="balloon-space user">

												작성자 일때
												<div class="balloon-space writer">
												-->
												<div class="balloon-space mpost">
													<div class="balloon-cont">

													</div>
												</div>
												<!--// 말풍선 -->
											</div>
										</div>
										<!--// post-funtion -->
									</div>
									<!--// post-top-area -->

									<div class="post-cont-area">
										<!-- post 내용  -->
										<div class="section-area">
										</div>
										<!--// post 내용 -->
									</div>

									<!-- comment count -->
									<div class="count">
										<button type="button" class="btn" arti-no="">
											<i title="좋아요 설정 안함" class="iconset ico-like"></i>
										</button>

									<!-- 코멘트 등록 영역으로 이동 -->

									</div>
									<!--// comment count -->



								</div>
							</div>
							

<!-- 							share
							<div class="btn-post-share">
								<button type="button" title="카카오톡 공유하기" class="btn kakao">카카오톡</button>
								<button type="button" title="페이스북 공유하기" class="btn face">페이스북</button>
								<button type="button" title="밴드 공유하기" class="btn band">밴드</button>
								<button type="button" title="트위터 공유하기" class="btn twitter">트위터</button>
								<button type="button" title="링크 공유하기" class="btn link">링크공유</button>
							</div>
							// share

						comment input
				<div class="comment-write mb40" id="rly">
					<div class="comment-util mb20">
						<p><span id="rlyCnt">댓글 </span></p>
						<input type="hidden" id="rlyCntTop" value="">
						<input type="hidden" id="hdnMoviePostNo" value="">
					</div>

					<div class="comment" id="input-comment">
						<textarea class="input-textarea" cols="5" rows="5" id="postRlyCn" title="댓글 입력" name="postRlyCn" maxlength="100"></textarea>

						<div class="comment-function">
							<p class="reset"><span class="text-count">0</span> / 100</p>
							<div class="btn">
								<button type="button" id="btnPostRly">등록</button>
							</div>
						</div>
					</div>
				</div>
				// comment input

				comment list
				<div class="comment-list" id="commentList">

				</div>
				// comment list -->

				<div class="mb50"></div>

						</div>
					</div>
					<button type="button" class="btn-modal-close2">레이어 닫기</button>
				</div>
			</section>
			<!-- // ################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
<!-- //무비포스트 상세 레이어팝업 -->


            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />