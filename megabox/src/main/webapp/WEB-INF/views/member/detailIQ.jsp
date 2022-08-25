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

<<div class="container has-lnb">
            <div class="page-util fixed">
                 <div class="inner-wrap" id="myLoaction"></div>
            </div>

            <div class="inner-wrap">

	<div class="lnb-area location-fixed">
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
	<input type="hidden" name="custInqSn" value="507913">
	<input type="hidden" name="searchTxt" value="">
	<input type="hidden" name="cd" value="INQD01">
	<input type="hidden" name="qnaDtlsYn" value="Y">
</form>

<div id="contents" class="location-fixed">
	<h2 class="tit">나의 문의내역</h2>



	<ul class="dot-list">
		<li id="tabDesc">고객센터를 통해 남기신 1:1 문의내역을 확인하실 수 있습니다.</li>
	</ul>
	<c:forEach var="list" items="${detailIQ }">
	<div class="table-wrap mt20">
		<div class="board-view">
			<div class="tit-area">
				<p class="tit">${list.i_title }</p>
			</div>

			<div class="info">
				
				<p>
					<span class="tit">문의지점</span>
					<span class="txt">${list.i_cinema }</span>
				</p>
				

				<p>
					<span class="tit">문의유형</span>
					<span class="txt">${list.i_type }</span>
				</p>

				<p>
					<span class="tit">답변상태</span>
					<span class="txt">
						
							
								<strong class="txt">미답변</strong>
							
							
						
					</span>
				</p>
				<div class="mt10">




					<p><span class="txt">${list.i_date }</span></p>
				</div>
			</div>

			

			<div class="cont">
				<textarea rows="5" cols="30" readonly="" class="input-textarea view" style="border:none;" id="inqCn">${list.i_content }</textarea>
			</div>
			
		</div>
	</div>
	</c:forEach>
	<div class="btn-group pt40">
		<a href="#" class="button large listBtn" title="목록">목록</a>
	</div>
</div>

            </div>
        </div>

<c:import url="../footer.jsp" charEncoding="utf-8" />