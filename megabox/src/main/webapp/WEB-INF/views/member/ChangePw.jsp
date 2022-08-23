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
                 <div class="inner-wrap" id="myLoaction"></div>
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
				<li><a href="MovieStory" title="나의 무비스토리">나의 무비스토리</a></li>
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


<form action="ChangePw" method="post">
<div id="contents" class="">
	<h2 class="tit">비밀번호 변경</h2>

	<ul class="dot-list mb10">
		<li>현재 비밀번호를 입력한 후 새로 사용할 비밀번호를 입력하세요.</li>
	</ul>

	<div class="table-wrap mb20">
		<table class="board-form">
			<caption>현재 비밀번호, 새 비밀번호, 새 비밀번호 확인 항목을 가진 표</caption>
			<colgroup>
				<col style="width:180px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><label for="pwnow">현재 비밀번호</label></th>
					<td>
						<input type="password" id="pwnow" name="pw" class="input-text w150px">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="pwnew">새 비밀번호</label></th>
					<td>
						<input type="password" id="pwnew" name="pwnew" class="input-text w150px">
						<span class="tooltiptext">비밀번호 설정 시 사용가능한 특수문자는 ~ ! @ # $ % ^ &amp; * + = - ? _  입니다.</span>
						<span class="ml10 font-size-14">※ 영문, 숫자, 특수문자 2가지 이상 조합하여 10자리 이상으로 입력 해 주세요.</span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="repwnew">새 비밀번호 재입력</label></th>
					<td>
						<input type="password" id="repwnew" name="checkpwnew" class="input-text w150px">
						<span class="tooltiptext">비밀번호 설정 시 사용가능한 특수문자는 ~ ! @ # $ % ^ &amp; * + = - ? _  입니다.</span>
						<span class="ml10 font-size-14">※ 비밀번호 확인을 위해 한 번 더 입력해 주시기 바랍니다.</span>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<ul class="dot-list">
		<li>생년월일, 전화번호 등 개인 정보와 관련된 숫자, 연속된 숫자와 같이 쉬운 비밀번호는 다른 사람이 쉽게 알아낼 수 있으니 사용을 자제해 주세요.</li>
		<li>비밀번호는 3-6개월마다 꼭 바꿔 주세요.</li>
		<li>비밀번호 변경시 모바일 기기와 홈페이지에서 모두 로그아웃됩니다. 변경한 비밀번호로 다시 로그인해주세요.</li>
		<li>비밀번호 설정 시 사용가능한 특수문자는 ~ ! @ # $ % ^ &amp; * + = - ? _  입니다.</li>
	</ul>

	<div class="btn-group pt40">
		<a href="UserInfo"><button class="button large">취소</button></a>
		<button class="button purple large" type="submit">수정</button>
	</div>
	
</div>
</form>
            </div>
        </div>
        
<c:import url="../footer.jsp" charEncoding="utf-8" />