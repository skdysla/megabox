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
				<li class="on"><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
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

<form id="phoneFrm" method="post">
    <input type="hidden" name="m" value="checkplusSerivce">
    <input type="hidden" name="EncodeData" value="AgAFRzI0ODn3uQf0ZQSRTdE8jLhOMK+5b5PzAKTT+MbqyPeW4Z55lUqVQtPP1JsYDQ8UsQvjPaSH4YaG69rVfZ9lLHhGRIN4MYPZntctTHDGVS6wUNuZwmAoGJeztEqQ5LMB6HfgmFFOpuhvQgxrYNHrW8NXIBnG3/cip2FzXFqRYIshRx3OSA3VFGt8Qddtdg80gpX2cVC71s710woKmWMqXK7YfTx6glp8GtCM/+So0I9kv3gH1lizZ/YNv6m5BNok7oPthkmDn/aylIlLVRTo+TTZxcI26I6ul4GwT408s1OHdEHQfed2Au3gPAmUaSgT/MjLCJq/kRLMuVa203o+IkW9imQesMsGlsmJbG/T+aLCG2Aqb1iIyzZA1ttrPsPKo+yX5+0biSjJLpmJUOKug/6DwRnRxFF4qKU4Nn5OcF5erwnnFGitibzFf1/xHOEWNTLcj1FHf8nr+VIG1s97Fsd+O23O+Rfsld46m5MuuFBba8SnbKlCecmjK0vfwOFm/PdQlwTUEWZnEhE3kLcCtnRkZ/bxMLEbJ/+H9DEt5Cpkhti/Ww==">
    <input type="hidden" name="mblpRequestNumber" value="G2489_2022080321044492062">
    <input type="hidden" name="certTyCd" value="CERT09">
    <input type="hidden" name="certType" value="SCRC01">
    <input type="hidden" name="param_r1" value="">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="loginUserId" value="dun05066">
</form>
<form id="ipinFrm" method="post">
    <input type="hidden" name="m" value="pubmain">
    <input type="hidden" name="enc_data" value="AgEERDQ0MVPNB2o62mLZGv8PEQ9limkSh54mcgZldshMWx0ZF4CCJU8WBj7cFjfYcjXYoky1ih+aYM0fxnEL4st/xFoB+7CkpTPIyzPGr2H8gAW0d4QsM18ROLPWNqsDdQyhO7w9VpzYZ2NQ6He0LA/+UWFz/LI6OiRX0c2CWbC+LGD6ZQAuer2KqS/d5olq8mZFXwv24z3TlwXIQWYh5ffZodJ5o7imNCZ2zx6jm9J97jHabCrA6KD+KU/R/oGSNmpCsEXNAujbrQngYmHHfhDkw9kwa4riDDxESR9vajULpdoxCaY69UjVF/jph2tzoV7JDSS2dw==">
    <input type="hidden" name="ipinRequestNumber" value="IPIN_D441202208032104449197">
    <input type="hidden" name="certTyCd" value="CERT07">
    <input type="hidden" name="certType" value="SCRC01">
    <input type="hidden" name="param_r1" value="">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="loginUserId" value="dun05066">
</form>
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
                                      
                                  

                                  <a href="/mypage/goodbye-megabox" class="button small member-out" title="회원탈퇴">회원탈퇴</a>
                              </div>
                              <p style="font-size:0.8em; color:#999; margin-top:10px; padding:0; text-align:left; position:absolute; top:22px; left:194px;">
                                  ※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
                          </td>
                      </tr>
                      <tr>
                          <th scope="row">아이디</th>
                          <td>${user.id }</td>
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

          <form name="mbInfoForm">
              <input type="hidden" name="mbNo" value="10857053">
              
              <input type="hidden" name="phoneNo" value="${user.u_tel }">
              <input type="hidden" name="zipcd" value="">
              <input type="hidden" name="mbAddr" value="">
              <input type="hidden" name="mbProfilFileNo" value="">
              <input type="hidden" id="mbByymmdd" value="${user.u_birth }">

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
                                  <a href="#layer_name" class="button small gray-line ml10 mr10 btn-modal-open" w-data="600" h-data="350" title="이름변경">이름변경</a>
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
                                  </section>
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  생년월일 <em class="font-orange">*</em>
                              </th>
                              <td>
                                  <!-- ****년
                                  **월
                                  **일 -->
                                  ${user.u_birth }
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  <label for="num">휴대폰</label> <em class="font-orange">*</em>
                              </th>
                              <td>
                                  <div class="clearfix">
                                      <p class="reset float-l w170px lh32 changeVal" data-name="phoneNo">
                                          ${user.u_tel }
                                      </p>
                                      <div class="float-l">
                                          <button type="button" class="button small gray-line change-phone-num" id="phoneChgBtn" title="휴대폰번호 변경">휴대폰번호 변경</button>
                                      </div>
                                  </div>

                                  <div class="change-phone-num-area">
                                      <div class="position">
                                          <label for="chPhone" class="label">변경할 휴대폰</label>
                                          <input type="text" id="chPhone" class="input-text w160px numType" placeholder="'-'없이 입력해 주세요" title="변경할 휴대폰 번호 입력" maxlength="11">
                                          <button type="button" class="button small gray-line" id="sendNumberBtn">인증번호 전송</button>
                                      </div>

                                      <div class="position" style="display: none;">
                                          <label for="chkNum" class="label">인증번호 입력</label>

                                          <div class="chk-num small">
                                              <div class="line">
                                                  <input type="text" id="chkNum" class="input-text w180px" title="인증번호 입력" placeholder="인증번호를 입력해 주세요" maxlength="4">

                                                  <div class="time-limit" id="timeLimit">3:00</div>
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
                                  <input type="text" id="email" name="mbEmail" class="input-text w500px" value="[이메일]">
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">비밀번호 <em class="font-orange">*</em></th>
                              <td>
                                  <a href="/on/oh/ohh/Mypage/userPwdChangePage.do" class="button small gray-line" title="비밀번호 변경">비밀번호 변경</a>

                                  <!-- 마지막 비밀번호 변경: 372일전에 함 (2021-07-27 18:41:38) -->
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">주소</th>
                              <td>
                                  <span></span>
                                  <a href="#none" id="addrBtn" class="button small gray-line ml10" title="우편번호 검색">우편번호 검색</a>
                                  <p class="reset mt10"></p>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </form>

<%--           <h3 class="tit">포인트 비밀번호 설정<a href="#" id="pwSetBtn" style="font-size:14px;" class="button small gray-line ml20" title="포인트 비밀번호 설정">포인트 비밀번호 설정</a></h3>

          <div class="table-wrap mb40">
              <table class="board-form">
                  <caption>포인트 비밀번호 설정</caption>
                  <colgroup>
                      <col style="width:180px;">
                      <col>
                  </colgroup>
                  <tbody>
                      <tr>
                          <th scope="row" class="a-l">멤버십 포인트 사용시<br>비밀번호 설정</th>
                          <td class="a-l">
                              <input type="radio" name="usePointPwAt" id="usePointPwAtOn" value="Y">
                              <label for="usePointPwAtOn" class="mr10">사용</label>

                              <input type="radio" name="usePointPwAt" id="usePointPwAtOff" checked="" value="N">
                              <label for="usePointPwAtOff">사용안함</label>

                              <span class="ml20">※ 안전한 서비스 이용을 위해 포인트 사용시 비밀번호를 사용해주세요</span>
                          </td>
                      </tr>
                  </tbody>
              </table>
          </div> --%>

<%--           <h3 class="tit">생년월일 로그인 설정</h3>

          <div class="table-wrap mb40">
              <table class="board-form">
                  <caption>무인발권기(KIOSK) 기능설정 순서로 보여줍니다.</caption>
                  <colgroup>
                      <col style="width:180px;">
                      <col>
                  </colgroup>
                  <tbody>
                      <tr>
                          <th scope="row" class="a-l">무인발권기(KIOSK)<br>기능설정</th>
                          <td class="a-l">
                              <input type="radio" name="kioskset" id="kioskon" checked="" value="Y">
                              <label for="kioskon" class="mr10">사용</label>

                              <input type="radio" name="kioskset" id="kioskoff" value="N">
                              <label for="kioskoff">사용안함</label>

                              <span class="ml20">※ ‘생년월일+휴대폰번호’ 티켓 출력 및 회원 찾기 기능</span>
                          </td>
                      </tr>
                  </tbody>
              </table>
          </div> --%>

          <h3 class="tit">간편로그인 계정연동</h3>

          <div class="table-wrap mb40">
              <table class="board-list">
                  <caption>구분, 연동정보, 연결 항목응ㄹ 가진 간편 로그인 계정연동 표</caption>
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
				<input type="radio" name="personInfoUtilAgreeAt" id="chk1" value="N" checked=""><label for="chk1">미동의</label>
				<input type="radio" name="personInfoUtilAgreeAt" id="chk2" value="Y"><label for="chk2">동의</label>
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

			<div class="chk-box">
				<strong class="label w80px">이메일</strong>
				<input type="radio" name="marketEmailRcvAgreeAt" id="chk3" value="Y" disabled="disabled">
				<label for="chk3" class="w80px">수신동의</label>

				<input type="radio" name="marketEmailRcvAgreeAt" id="chk4" value="N" checked="" disabled="disabled">
				<label for="chk4" class="w80px">수신거부</label>

				
			</div>

			<div class="chk-box mt05">
				<strong class="label w80px">SMS</strong>
				<input type="radio" name="marketSmsRcvAgreeAt" id="chk5" value="Y" disabled="disabled">
				<label for="chk5" class="w80px">수신동의</label>

				<input type="radio" name="marketSmsRcvAgreeAt" id="chk6" value="N" checked="" disabled="disabled">
				<label for="chk6" class="w80px">수신거부</label>

				
			</div>

			<!--
			<div class="chk-box mt05">
				<strong class="label w80px">PUSH</strong>
				<input type="radio" name="marketPushRcvAgreeAt" id="chk7" value="Y" 
				disabled>
				<label for="chk7" class="w80px">수신동의</label>

				<input type="radio" name="marketPushRcvAgreeAt" id="chk8" value="N" checked
				disabled>
				<label for="chk8" class="w80px">수신거부</label>

				
			</div>
			-->
		</div>
	</div>

          <div class="btn-group mt40">
              <button class="button large" id="cancelBtn">취소</button>
              <button class="button purple large" id="updateBtn">등록</button>
          </div>
      </div>
<!--// container -->
            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />