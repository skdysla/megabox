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

<script language="JavaScript">
    var SetTime = 180;      // 최초 설정 시간(기본 : 초)
    function messageTimer() {   // 1초씩 카운트      
        m = Math.floor(SetTime / 60) + ": " + (SetTime % 60); // 남은 시간 계산         
        document.all.ViewTimer.innerHTML = m;     // div 영역에 보여줌                  
        SetTime--;                  // 1초씩 감소
        if (SetTime == 0) {          // 시간이 종료 되었으면..        
            alert("시간초과되었습니다. 다시 인증해주세요.");
            window.location.reload();

        }       
    }
    function TimerStart(){ tid=setInterval('messageTimer()',1000) };
</script>
<script>
$(document).ready(function(){
    $('#Authrequest').click(function(){
        let phoneNumber = $('#toNumber').val();
        alert('인증번호 발송 완료!')


        $.ajax({
            type: "GET",
            url: "messageRequest",
            data: {
                "phoneNumber" : phoneNumber
            },
            success: function(res){
                $('#checkAuth').click(function(){
                    if($.trim(res) ==$('#checkNumber').val()){
                    	alert(
                            '인증성공!',
                            '휴대폰 인증이 정상적으로 완료되었습니다.',
                            'success'
                        )
                        document.location.href="UserInfo?id=${sessionScope.id}";
                    }else{
                    	alert({
                            icon: 'error',
                            title: '인증오류',
                            text: '인증번호가 올바르지 않습니다!',
                        })
                    }
                })


            }
        })
    });
});
</script>
<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
			<span>Home</span>
			<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
			<a href="/mypage/myinfo?returnURL=info" title="회원정보 페이지로 이동">회원정보</a>
		</div></div>
            </div>

            <div class="inner-wrap">
                
	<div class="lnb-area">
		<nav id="lnb">
			<p class="tit"><a href="/mypage" title="나의 메가박스">나의 메가박스</a></p>

			<ul>
				<li class=""><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
                   <li>
                   	<a href="/mypage/movie-coupon" title="영화/스토어 관람권">영화/스토어 관람권</a>
					<ul class="depth3">
						<li><a href="/mypage/movie-coupon" title="영화관람권">영화관람권</a></li>
						<li><a href="/mypage/store-coupon" title="스토어 교환권">스토어 교환권</a></li>
					</ul>
				</li>
				<li><a id="discountCoupon" href="/mypage/discount-coupon" title="메가박스/제휴쿠폰">메가박스/제휴쿠폰</a></li>
				<li><a href="/mypage/moviestory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
				<li><a href="/mypage/mydiscount" title="자주쓰는 할인 카드">자주쓰는 카드 관리</a></li>
				<li>
					<a href="MyInfo" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li class="on"><a href="MyInfo" title="개인정보 수정">개인정보 수정</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>

<form id="certForm">
	<input type="hidden" name="certNo" value="">
	<input type="hidden" name="certType" value="">
	<input type="hidden" name="loginId" value="">
	<input type="hidden" name="redisKey" value="">
	<input type="hidden" name="mbCertRedisKey" value="">
	<input type="hidden" name="preUrl" value="">
</form>
<form id="mbSimpleCertForm">
	<input type="hidden" name="redisKey" value="">

	<input type="hidden" name="dormAcctAt" value="">
	<input type="hidden" name="certTyCd" value="">
	<input type="hidden" name="certType" value="">

	<input type="hidden" name="ipinRequestNumber" value="">
	<input type="hidden" name="mblpRequestNumber" value="">
	<input type="hidden" name="preUrl" value="">
</form>

<form id="searchIdForm">
	<input type="hidden" name="dormAcctAt" value="">
	<input type="hidden" name="certType" value="">
	<input type="hidden" name="redisKey" value="">
</form>
<form id="moveFrm" method="post">
	<div id="myLoactionInfo" style="display: none;">
		<div class="location">
			<span>Home</span>
			<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
			<a href="/mypage/myinfo?returnURL=info" title="회원정보 페이지로 이동">회원정보</a>
		</div>
	</div>
	<div id="contents">
		<h2 class="tit">회원정보</h2>

		<div class="member-wrap">
			<strong>회원님의 개인정보 보호를 위해 등록된 휴대폰 번호로 인증을 하셔야 합니다.</strong>
				<div class="table-wrap">
					<table class="board-form">
						<caption>아이디이름, 휴대폰 번호, 인증번호 항목을 가진 비밀번호 찾기 입력 표<!--아이디이름, 휴대폰 번호, 인증번호 항목을 가진 비밀번호 찾기 입력 표--></caption>
						<colgroup>
							<col style="width:130px;">
							<col>
						</colgroup>
						<tbody>
							<input id="ibxSchPwdLoginId" type="hidden" value="[아이디]"><!--아이디-->
							<input id="ibxSchPwdMbNm" type="hidden" value="[이름]"><!--이름-->
							<tr>
								<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호<!--휴대폰 번호--></label></th>
								<td>
									<input type="hidden" id="ibxSchPwdMblpTelno" value="${sessionScope.tel }">
									<input type="text" value="${sessionScope.tel }" id="toNumber" name="toNumber" class="input-text w230px" disabled>
									<button id="Authrequest" type="button" class="button gray w75px ml08" onclick="TimerStart()">인증요청<!--인증요청--></button>
								</td>
							</tr>
							<tr id="schPwdMblpCertRow">
								<th scope="row"><label for="ibxSchPwdMblpCharCertNo">인증번호<!--인증번호--></label></th>
								<td>
									<div class="chk-num">
										<div class="line">
											<input maxlength="6" type="text" id="checkNumber" name="checkNumber" class="input-text w180px" title="인증번호 입력"><!--인증번호 입력-->

											<div class="time-limit" id="ViewTimer"></div>
										</div>
									</div>

									<button id="checkAuth" type="button" class="button gray-line w75px ml08">인증확인<!--인증확인--></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
		</div>

		<div class="btn-group">
			<button class="button large" id="cancelBtn" title="취소">취소
			</button><button class="button large purple" id="ckBtn" data-url="/mypage/userinfo" title="확인" disabled="">확인
		</button></div>
		
			<div class="member-wrap" id="niceCert">
				<strong>휴대폰 번호로 인증이 안되시나요?</strong><br><br>

				<strong style="font-size: 14px;">
					휴대폰 번호로 인증이 안되는 경우 본인인증을 통하여 회원정보를 확인할 수 있습니다. <br>
					본인인증시 제공되는 정보는 해당 인증기관에서 직접 수집하며, 인증 이외의 용도로 이용 또는 저장되지 않습니다.
				</strong>

				<div class="btn-member-bottom">
					<button id="btnNiceMblpCert" type="button" class="button purple large">본인인증<!--본인인증--></button>
				</div>
			</div>
		
	</div>
</form>
            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />