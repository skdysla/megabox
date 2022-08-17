<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" charEncoding="utf-8" />
<!DOCTYPE html>
<script>
/* 	$('#ibxSchPwdMblpTelno').keyup(function (e) {
		let content = $(this).val();	
		$('#btnSchPwdMbCertNoSend').attr('disabled', 'disabled');
		if(content.length == 11){
			$('#btnSchPwdMbCertNoSend').removeClass('disabled');
			$('#btnSchPwdMbCertNoSend').removeAttr("disabled");
		}
		else {
			$().addClass('disabled');
			$('#btnSchPwdMbCertNoSend').attr('disabled', 'disabled');
		}
	}); */
	$(document).ready(function(){
		$('#toNumber').keyup(function (e) {
			let content = $(this).val();	
			$('#Authrequest').attr('disabled', 'disabled');
			if(content.length == 11){
				$('#Authrequest').removeAttr("disabled");
			}
			else {
				$('#Authrequest').attr('disabled', 'disabled');
			}
		});
		
		$('#checkNumber').keyup(function (e) {
			let content = $(this).val();	
			$('#checkAuth').attr('disabled', 'disabled');
			if(content.length == 6){
				$('#checkAuth').removeClass('disabled');
				$('#checkAuth').removeAttr("disabled");
			}
			else {
				$('#checkAuth').addClass('disabled');
				$('#checkAuth').attr('disabled', 'disabled');
			}
		});
	});
</script>
<script>
/* 일단 swal.fire 를 alert로 대체 */
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
                        document.location.href="Membermain"; /* 후에 메가박스 메인화면으로 변경하기 */
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
				<li><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li class="on"><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
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

<form id="moveFrm" method="post"></form>

<div id="contents" class="">
	<h2 class="tit">회원탈퇴</h2>

	<p class="reset">[주의] 메가박스 회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>

	<div class="user-out mt10">
		<ol>
			<li>
				<p class="txt">1. 30일간 회원 재가입이 불가능합니다.</p>

				<ul class="dot-list mt10">
					<li>회원 탈퇴 후, 30일 경과 후 재가입할 수 있습니다.</li>
				</ul>
			</li>
			<li>
				<p class="txt">2. 탈퇴 후 삭제 내역</p>
				<p>(회원 탈퇴하시면 회원정보와 개인 보유 포인트 등 정보가 삭제되며 데이터는 복구되지 않습니다.)</p>

				<ul class="dot-list mt10">
					<li>메가박스 멤버십 포인트 및 적립/차감 내역</li>
					<li>관람권 및 쿠폰</li>
					<li>영화 관람 내역</li>
					<li>간편 로그인 연동 정보</li>
				</ul>
			</li>
			<li>
				<p class="txt">3. 고객님께서 불편하셨던 점, 아쉬웠던 점을 알려주시면 앞으로 더 나은 모습으로 찾아 뵙겠습니다.</p>

				<ul class="reason">
					
						<li>
							<input type="radio" name="useroutcheck" id="userout01" value="서비스 장애가 잦아서">
							<label for="userout01">서비스 장애가 잦아서</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout02" value="이벤트 및 무료서비스 혜택이 적어서">
							<label for="userout02">이벤트 및 무료서비스 혜택이 적어서</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout03" value="불만 및 불편사항에 대한 고객응대가 나빠서">
							<label for="userout03">불만 및 불편사항에 대한 고객응대가 나빠서</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout04" value="영화관람시 시설 및 가격등의 불만 때문에">
							<label for="userout04">영화관람시 시설 및 가격등의 불만 때문에</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout05" value="이용빈도가 낮고 개인정보 유출이 우려되어">
							<label for="userout05">이용빈도가 낮고 개인정보 유출이 우려되어</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout06" value="탈퇴 후 재가입을 위해">
							<label for="userout06">탈퇴 후 재가입을 위해</label>
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout07" value="기타">
							<label for="userout07">기타</label>
								<input type="text" class="input-text w600px ml10" title="기타 입력" id="etcText">
						</li>
						<li>
							<input type="radio" name="useroutcheck" id="userout08" value="휴면계정 만료">
							<label for="userout08">휴면계정 만료</label>
						</li>
				</ul>
			</li>
			<li>
				<p class="txt">4. 회원님의 비밀번호를 입력하시고 [탈퇴] 버튼을 클릭해주세요.</p>

				<div class="table-wrap">
					<table class="board-form">
						<caption>비밀번호 입력 항목을 가진 회원 탈퇴시 비밀번호 확인 표</caption>
						<colgroup>
							<col style="width:180px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">
									<label for="pwd_chk">비밀번호</label>
								</th>
								<td>
									<input type="password" class="input-text w160px" id="pwd" name="pw">
								</td>
							</tr>
							<input id="ibxSchPwdLoginId" type="hidden" value="${sessionScope.id}"><!--아이디-->
							<tr>
								<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호<!--휴대폰 번호--></label></th>
								<td>
									<input type="text" name="toNumber" id="toNumber" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px"><!--'-' 없이 입력-->
									<button id="Authrequest" type="button" class="button gray w100px ml08" disabled>인증요청<!--인증요청--></button>
								</td>
							</tr>
							<tr id="schPwdMblpCertRow">
								<th scope="row"><label for="ibxSchPwdMblpCharCertNo">인증번호<!--인증번호--></label></th>
								<td> 
									<div class="chk-num">
										<div class="line">
											<input maxlength="4" type="text" name="checkNumber" id="checkNumber" class="input-text w180px" title="인증번호 입력" disabled><!--인증번호 입력-->

											<div class="time-limit" id="schPwdtimer">
												3:00
											</div>
										</div>
									</div>

									<button id="checkAuth" type="button" class="button gray-line w100px ml08 disabled" disabled>인증확인<!--인증확인--></button>
									<div id="schPwdMblpNo-error-text" class="alert"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
		</ol>
	</div>

	<div class="btn-group">
		<button class="button large" id="cancelBtn">취소</button>
		<button class="button purple large" id="submitBtn" disabled>탈퇴</button>
	</div>
</div>

            </div>
        </div>

<c:import url="../footer.jsp" charEncoding="utf-8" />