<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.id }">
	<script>
		location.href='login'
	</script>
</c:if>
<c:import url="../header.jsp" charEncoding="utf-8" />
<!DOCTYPE html>
<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
	<a href="/mypage/myinquiry?cd=INQD01" title="1:1 문의내역 페이지로 이동">1:1 문의내역</a></div></div>
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

<input type="hidden" name="currentPage" value="1">

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
	</div>
</div>

<div id="contents">
	<h2 class="tit">나의 문의내역</h2>

<!-- 	<div class="tab-block">
		<ul>
			<li data-url="/mypage/myinquiry?cd=INQD01" class="on"><a href="#" class="btn" data-cd="INQD01" title="1:1 문의내역 탭으로 이동">1:1 문의내역</a></li>
		</ul>
	</div> -->

	<div class="mypage-infomation mt20">
		<ul class="dot-list mb20">
			<li id="tabDesc">고객센터를 통해 남기신 1:1 문의내역을 확인하실 수 있습니다.</li>
			<!-- <li>문의하시기 전 <a href="/support/faq" class="a-link"><strong>자주묻는질문</strong></a>을 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다</li> -->
		</ul>

		<div class="btn-group right">
			<a href="OneOnOne" class="button" title="1:1 문의하기">1:1 문의하기</a>
		</div>
	</div>

	<div class="board-list-util mb10">
		<p class="result-count">
		<%int count = 1; %>
			<!-- to 개발 : 검색을 안한 경우 -->
			<strong>전체 (<b id="totalCnt"><%=count %></b>건)</strong>
		</p>

		<div class="dropdown bootstrap-select bs3"><select id="custInqStatCd" onchange="javascript:$('#searchBtn').click();" class="" tabindex="-98">
			<option value="">전체</option>
			
				
					<option value="INQST1">미답변</option>
			
					<option value="INQST2">답변완료</option>
	
		</select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="custInqStatCd" title="전체"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">전체</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>

		<div class="board-search ml07">
			<input type="text" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" id="searchTxt" value="">
			<button type="button" class="btn-search-input" id="searchBtn">검색</button>
		</div>
	</div>

	<div class="table-wrap">
		<table class="board-list a-c">
			<caption>번호, 극장, 유형, 제목, 답변상태, 등록일 순서로 보여주는 1:1 문의 내역 표입니다</caption>
			<colgroup>
				<col style="width:80px">
				<col style="width:140px;">
				<col style="width:120px;">
				<col>
				<col style="width:160px;">
				<col style="width:100px;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">극장</th>
					<th scope="col">유형</th>
					<th scope="col">제목</th>
					<th scope="col">답변상태</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>
			
			<c:choose>
				<c:when test="${iqList == null }">
					<tr><td colspan="6">목록이 없습니다.</td></tr>
				</c:when>
				<c:otherwise>
				<c:forEach var="list" items="${iqList }">
					<tr>
						<td><%=count %></td> <!-- 내림차순으로.. -->
						<td>${list.i_cinema }</td>
						<td>${list.i_type }</td>
						<td class="a-l"><a href="detailIQ?i_num=${list.i_num }" class="moveBtn"title="문의내역 상세보기">${list.i_title }</a></td>
						<td>미답변</td><td>${list.i_date }</td>
					</tr>
					<%count++; %>
				</c:forEach>
				</c:otherwise>
			</c:choose>
			
			
			
			</tbody>
		</table>
	</div>

	<!-- pagination -->
	<nav class="pagination"></nav>
	<!--// pagination -->
</div>

            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />