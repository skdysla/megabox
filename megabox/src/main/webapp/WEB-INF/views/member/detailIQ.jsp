<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.id }">
	<script>
		location.href='login'
	</script>
</c:if>
<c:import url="../header.jsp" charEncoding="utf-8" />

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
				<li><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li class="on"><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li>
				<li>
					<a href="MyInfo?id=${sessionScope.id}" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="MyInfo?id=${sessionScope.id}" title="개인정보 수정">개인정보 수정</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>

<form name="movieForm" method="post">
	<input type="hidden" name="custInqStatCd" value="">
	<input type="hidden" name="currentPage" value="1">
	<input type="hidden" name="custInqSn" value="507912">
	<input type="hidden" name="searchTxt" value="">
	<input type="hidden" name="cd" value="INQD01">
	<input type="hidden" name="qnaDtlsYn" value="Y">
</form>

<div id="contents">
	<h2 class="tit">나의 문의내역</h2>

	<div class="tab-block mb20">
		<ul>
			<li class="on"><a href="#" class="btn" data-cd="INQD01" title="1:1 문의내역 탭으로 이동">1:1 문의내역</a></li>
			<li><a href="#" class="btn" data-cd="INQD03" title="단체관람/대관 문의내역 탭으로 이동">단체관람/대관 문의내역</a></li>
			<li><a href="#" class="btn" data-cd="INQD02" title="분실물 문의내역 탭으로 이동">분실물 문의내역</a></li>
		</ul>
	</div>

	<ul class="dot-list">
		<li id="tabDesc">고객센터를 통해 남기신 1:1 문의내역을 확인하실 수 있습니다.</li>
		<!-- <li>문의하시기 전 <a href="/support/faq" class="a-link"><strong>자주묻는질문</strong></a>을 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다</li> -->
	</ul>

	<div class="table-wrap mt20">
		<div class="board-view">
			<div class="tit-area">
				<p class="tit">123</p>
			</div>

			<div class="info">
				
				<p>
					<span class="tit">문의지점</span>
					<span class="txt">서울 - 강남</span>
				</p>
				

				<p>
					<span class="tit">문의유형</span>
					<span class="txt">일반문의</span>
				</p>

				<p>
					<span class="tit">답변상태</span>
					<span class="txt">
						
							
								<strong class="txt">답변완료(메일+SMS)</strong>
							
							
						
					</span>
				</p>
				<div class="mt10">




					<p><span class="txt">2022.08.10 17:40:01</span></p>
				</div>
			</div>

			

			<div class="cont">
				<textarea rows="5" cols="30" readonly="" class="input-textarea view" style="border:none;" id="inqCn">123</textarea>
			</div>
			
				<div class="cont review" id="inqReplyCn"><br>
안녕하세요.<br>
메가박스 강남지점입니다.<br>
<br>
고객님께서 보내주신 글 잘 받아보았습니다.<br>
먼저 저희 메가박스를 이용해주셔서 감사드립니다.<br>
<br>
남겨주신 정보로는 문의하시고자 하는 내용을 파악하기에 다소 어려움이 있습니다.&nbsp;<br>
<br>
문의 내용 확인 후 추가적으로 질문을 해주신다면 확인하여 답변드리도록 노력하겠습니다. 번거로우시겠지만, 문의하시고자 하는 내용을 확인하시어 재문의 부탁드립니다.<br>
<br>
문의주신 내용에 적절한 답변이 되었길 바라며,<br>
추후 문의사항은 홈페이지 &amp; 어플 내 1:1문의<br>
또는 문자서비스 1666-9570(운영시간 10:30~18:30)을 통해<br>
문의주시면 안내 도와드리겠습니다.<br>
<br>
감사합니다.<br>
메가박스 강남지점 드림.</div>
			
		</div>
	</div>

	<div class="btn-group pt40">
		<a href="#" class="button large listBtn" title="목록">목록</a>
	</div>
</div>

            </div>

<c:import url="../footer.jsp" charEncoding="utf-8" />