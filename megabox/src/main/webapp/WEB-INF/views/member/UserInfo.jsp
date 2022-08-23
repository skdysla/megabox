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
    $('#sendNumberBtn').click(function(){
        let phoneNumber = $('#chPhone').val();
        console.log(phoneNumber);
        alert('인증번호 발송 완료!')
		$('.position').removeAttr('style');

        $.ajax({
            type: "GET",
            url: "messageRequest",
            data: {
                "phoneNumber" : phoneNumber
            },
            success: function(res){
                $('#chgBtn').click(function(){
                    if($.trim(res) ==$('#chkNum').val()){
                    	alert(
                            '인증성공!',
                            '휴대폰 인증이 정상적으로 완료되었습니다.',
                            'success'
                        )
                        clearInterval(tid);
                    	<% session.setAttribute("chgTel","success");%>
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
<script>
$(document).ready(function(){
	$("input:radio[name=u_agree]").attr('disabled', 'disabled');
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=personInfoUtilAgreeAt]").click(function(){
        if($("input[name=personInfoUtilAgreeAt]:checked").val() == "Y"){
            $("input:radio[name=u_agree]").removeAttr("disabled");
        }else if($("input[name=personInfoUtilAgreeAt]:checked").val() == "N"){
            $("input:radio[name=u_agree]").attr('disabled', 'disabled');
        }
    });
});
</script>
<!DOCTYPE html> 
<div class="container has-lnb">
            <div class="page-util fixed">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
        <span>Home</span>
        <a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
        <a href="/mypage/myinfo?returnURL=info" title="회원정보 페이지로 이동">회원정보</a>
        <a class="no-link">개인정보 수정</a>
    </div></div>
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

<form id="moveFrm" method="post"></form>

<div id="myLoactionInfo" style="display: none;">
    <div class="location">
        <span>Home</span>
        <a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
        <a href="/mypage/myinfo?returnURL=info" title="회원정보 페이지로 이동">회원정보</a>
        <a class="no-link">개인정보 수정</a>
    </div>
</div>

<div id="contents" class="location-fixed">
          <h2 class="tit">개인정보 수정</h2>

          <ul class="dot-list mb10">
              <li>회원님의 정보를 정확히 입력해주세요.</li>
          </ul>

          <div class="table-wrap">
              <table class="board-form">
                  <caption>프로필사진, 아이디 항목을 가진 표</caption>
                  <colgroup>
                      <col style="width:180px;">
                      <col>
                  </colgroup>
                  <tbody>
                      <tr>
                          <th scope="row">프로필 사진</th>
                          <td>
                              <div class="profile-photo">
                                  <form name="fileForm">
                                      <input type="file" id="profileTarget" name="file" style="display: none;">
                                      
                                  </form>

                                  
                                      
                                      
                                          <div class="profile-img">
                                          	<%-- <c:if test="${ }"> --%>
                                              <img src="${path }/resources/images/bg-profile.png" alt="프로필 사진 샘플">
                                             <%-- </c:if> --%>
                                          </div>

                                          <button type="button" class="button small gray-line" id="addProfileImgBtn">이미지 등록</button>
                                      
                                  

                                  <a href="goodbye_mega" class="button small member-out" title="회원탈퇴">회원탈퇴</a>
                              </div>
                              <p style="font-size:0.8em; color:#999; margin-top:10px; padding:0; text-align:left; position:absolute; top:22px; left:194px;">
                                  ※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
                          </td>
                      </tr>
                      <tr>
                          <th scope="row">아이디</th>
                          <td>${user.u_id }</td>
                      </tr>
                  </tbody>
              </table>
          </div>

          <div class="tit-util mt40 mb10">
              <h3 class="tit">기본정보</h3>

              <div class="right">
                  <p class="reset"><em class="font-orange">*</em> 필수</p>
              </div>
          </div>

          <form name="UserInfo" method="post">
              <div class="table-wrap mb40">
                  <table class="board-form">
                      <caption>이름, 생년월일, 휴대폰, 이메일, 비밀번호, 주소 항목을 가진 기본정보 표</caption>
                      <colgroup>
                          <col style="width:180px;">
                          <col>
                      </colgroup>
                      <tbody>
                          <tr>
                              <th scope="row">
                                  이름 <em class="font-orange">*</em>
                              </th>
                              <td>
                                  <span class="mbNmClass">${user.u_name }</span>
                                  <!-- <a href="#layer_name" class="button small gray-line ml10 mr10 btn-modal-open" w-data="600" h-data="350" title="이름변경">이름변경</a>
                                  ※ 개명으로 이름이 변경된 경우, 회원정보의 이름을 변경하실 수 있습니다.

                                  <section id="layer_name" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
                                      <div class="wrap">
                                          <header class="layer-header">
                                              <h3 class="tit">본인확인 수단 선택</h3>
                                          </header>

                                          <div class="layer-con">
                                              <p class="reset">
                                                  이름을 변경하기 위한 본인 확인 수단을 선택해 주세요.<br>
                                                  (단, 개명된 이름으로 가입된 본인명의의 휴대전화 또는 아이핀으로만 가능함)
                                              </p>

                                              <div class="box-gray v1 mt20 a-c">
                                                  <a href="#" target="_blank" class="button" id="ipinBtn" title="I-PIN 인증">I-PIN 인증</a>
                                                  <a href="#" target="_blank" class="button ml10" id="phoneBtn" title="휴대폰 인증">휴대폰 인증</a>
                                              </div>

                                              <ul class="dash-list mt20">
                                                  <li>신용평가기관에 개명된 이름이 먼저 등록되어 있어야 합니다.</li>
                                                  <li>본인인증을 위해 입력하신 정보는 해당 인증기관에서 직접 수집하며 인증 이외의 용도로 이용 또는 저장되지 않습니다.</li>
                                              </ul>
                                          </div>

                                          <button type="button" class="btn-modal-close">레이어 닫기</button>
                                      </div>
                                  </section> -->
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  생년월일 <em class="font-orange">*</em>
                              </th>
                              <td id="birth">
                                  <!-- ****년
                                  **월
                                  **일 -->
                                  ${user.u_birth }
                              </td>
                              
                              <script>
								// 생년월일
								var str = document.getElementById("birth");
								let birth = '${user.u_birth}';
								let [y, m, d] = birth.split('.');
								fullBirth = y + "년 " + m + "월 " + d + "일";
								str.innerHTML = fullBirth;
							  </script>
                              
                          </tr>
                          <tr>
                              <th scope="row">
                                  <label for="num">휴대폰</label> <em class="font-orange">*</em>
                              </th>
                              <td>
                                  <div class="clearfix">
                                      <p class="reset float-l w170px lh32 changeVal" id="tels">
                                          	${user.u_tel}
                                      </p>
                                      <input type="hidden" name="u_tel" value="${user.u_tel }">
                                      <script>
											//전화번호
											var str = document.getElementById("tels")
											let tel = '${user.u_tel}'; //01012345678
											let a = tel.substr(0,3);
											let b = tel.substr(3,4);
											let c = tel.substr(7);
											fullTel = a + "-" + b + "-" + c;
											str.innerHTML = fullTel;
										</script>
                                      
                                      <div class="float-l">
                                          <button type="button" class="button small gray-line change-phone-num" id="phoneChgBtn" title="휴대폰번호 변경">휴대폰번호 변경</button>
                                      </div>
                                  </div>

                                  <div class="change-phone-num-area">
                                      <div class="position">
                                          <label for="chPhone" class="label">변경할 휴대폰</label>
                                          <input type="text" id="chPhone" name="chPhone" class="input-text w160px numType" placeholder="'-'없이 입력해 주세요" title="변경할 휴대폰 번호 입력" maxlength="11">
                                          <button type="button" class="button small gray-line" id="sendNumberBtn" onclick="TimerStart()">인증번호 전송</button>
                                      </div>

                                      <div class="position" style="display: none;">
                                          <label for="chkNum" class="label">인증번호 입력</label>

                                          <div class="chk-num small">
                                              <div class="line">
                                                  <input type="text" id="chkNum" name="chkNum" class="input-text w180px" title="인증번호 입력" placeholder="인증번호를 입력해 주세요" maxlength="6">

                                                  <div class="time-limit" id="ViewTimer"></div>
                                              </div>
                                          </div>
                                          <button type="button" class="button small gray-line" id="chgBtn">변경완료</button>
                                      </div>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  <label for="email">이메일</label> <em class="font-orange">*</em>
                              </th>
                              <td>
                                  <input type="text" id="email" name="u_email" class="input-text w500px" value="${user.u_email }">
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">비밀번호 <em class="font-orange">*</em></th>
                              <td>
                                  <a href="ChangePw?id=${user.u_id}" class="button small gray-line" title="비밀번호 변경">비밀번호 변경</a>

                                  <!-- 마지막 비밀번호 변경: 372일전에 함 (2021-07-27 18:41:38) -->
                              </td>
                          </tr>
<!--                           <tr>
                              <th scope="row">주소</th>
                              <td>
                                  <span></span>
                                  <a href="#none" id="addrBtn" class="button small gray-line ml10" title="우편번호 검색">우편번호 검색</a>
                                  <p class="reset mt10"></p>
                              </td>
                          </tr> -->
                      </tbody>
                  </table>
              </div>
          

          <h3 class="tit">간편로그인 계정연동</h3>

          <div class="table-wrap mb40">
              <table class="board-list">
                  <caption>구분, 연동정보, 연결 항목을 가진 간편 로그인 계정연동 표</caption>
                  <colgroup>
                      <col style="width:130px;">
                      <col>
                      <col style="width:110px;">
                  </colgroup>
                  <thead>
                      <tr>
                          <th scope="col">구분</th>
                          <th scope="col">연동정보</th>
                          <th scope="col">연결</th>
                      </tr>
                  </thead>
                  <tbody id="lnkgInfoTbody">
                      <tr>
                          <th scope="row" class="a-c">페이스북</th>
                          
                              
                              
                                  <td class="a-l">연결된 계정정보가 없습니다.</td>
                                  <td><button type="button" class="button small gray" lnkgty="FACEBOOK" connty="conn">연동</button></td>
                              
                          
                      </tr>
                      <tr>
                          <th scope="row" class="a-c">네이버</th>
                          
                              
                              
                                  <td class="a-l">연결된 계정정보가 없습니다.</td>
                                  <td><button type="button" class="button small gray" lnkgty="NAVER" connty="conn">연동</button></td>
                              
                          
                      </tr>
                      <tr>
                          <th scope="row" class="a-c">카카오</th>
                          
                              
                              
                                  <td class="a-l">연결된 계정정보가 없습니다.</td>
                                  <td><button type="button" class="button small gray" lnkgty="KAKAO" connty="conn">연동</button></td>
                              
                          
                      </tr>
                      <tr>
                          <th scope="row" class="a-c">페이코</th>
                          
                              
                              
                                  <td class="a-l">연결된 계정정보가 없습니다.</td>
                                  <td><button type="button" class="button small gray" lnkgty="PAYCO" connty="conn">연동</button></td>
                              
                          
                      </tr>
                  </tbody>
              </table>
          </div>
          
          <div class="box-radius ">
		<div class="box-top">
			<strong>마케팅 활용을 위한 개인정보 수집 이용 안내</strong>
			<div class="righten">
				<input type="radio" name="personInfoUtilAgreeAt" id="personInfoUtilAgreeAt" value="N" checked><label for="personInfoUtilAgreeAt">미동의</label>
				<input type="radio" name="personInfoUtilAgreeAt" id="personInfoUtilAgreeAt" value="Y"><label for="personInfoUtilAgreeAt">동의</label>
			</div>
		</div>
		<div class="box-bot">
			<p>
				[수집 목적]<br>
				고객 맞춤형 상품 및 서비스 추천. 당사 신규 상품/서비스 안내 및 권유. 사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유
			</p>
			<p>
				[수집 항목]<br>
				이메일, 휴대폰번호, 주소, 생년월일, 선호극장, 문자/이메일/앱푸쉬 정보 수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그
			</p>
			<p>
				[보유 및 이용 기간]<br>
				회원 탈퇴 시 혹은 이용 목적 달성 시까지
			</p>
		</div>
	</div>
	
	<div class="box-radius mb00 ">
		<div class="box-top">
			<strong>마케팅정보 수신동의</strong>
		</div>

		<div class="box-bot">
			<p>
				거래정보와 관련된 내용(예매완료/취소)과 소멸포인트 안내는 수신동의 여부와 관계없이 SMS, PUSH 알림 또는 이메일로 발송됩니다.<br>
				이 외 타 정보는 수신동의를 하셔야만 받으실 있습니다. (2014.05.16 기준)
			</p>

			<div class="mt05 mb05 font-gblue">
				<i class="iconset ico-exclamation-gblue"></i> 수신동의 여부를 선택해 주세요.
			</div>

<!-- 			<div class="chk-box">
				<strong class="label w80px">이메일</strong>
				<input type="radio" name="marketEmailRcvAgreeAt" id="chk3" value="Y">
				<label for="chk3" class="w80px">수신동의</label>

				<input type="radio" name="marketEmailRcvAgreeAt" id="chk4" value="N" checked>
				<label for="chk4" class="w80px">수신거부</label>

				
			</div> -->

			<div class="chk-box mt05">
				<strong class="label w80px">SMS</strong>
				<input type="radio" name="u_agree" id="u_agree" value="agree">
				<label for="u_agree" class="w80px">수신동의</label>

				<input type="radio" name="u_agree" id="u_agree" value="disagree" checked>
				<label for="u_agree" class="w80px">수신거부</label>
			</div>

		</div>
	</div>

          <div class="btn-group mt40">
              <button class="button large" id="cancelBtn">취소</button>
              <button class="button purple large" id="updateBtn">등록</button>
          </div>
          </form>
      </div>
<!--// container -->
            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />