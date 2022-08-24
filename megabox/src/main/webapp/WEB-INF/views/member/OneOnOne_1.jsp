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
<script>
function selectAddress(e){
	var seoul = ["강남","강남대로(씨티)","강동","군자","동대문","마곡","목동","상봉","상암월드컵경기장","성수","센트럴","송파파크하비오","신촌","이수","창동","코엑스","홍대","화곡","ARTNINE"];
	var gyeonggi = ["고양스타필드","광명AK플라자","광명소하","금정AK플라자","김포한강신도기","남양주","남양주(P)","남양주현대아울렛 스페이스원","동탄","미사강변","백석","별내","부천스타필드시티","분당","수원","수원남문","시흥배곧","안산중앙","안성스타필드","양주","영통","용인기흥","용인테크노밸리","의정부민락","일산","일산벨라시타","킨텍스","파주금촌","파주운정","파주출판도시","하남스타필드","호매실"];
	var incheon = ["검단","송도","인천논현","청라지젤"];
	var dae_chung_sae = ["공주","논산","대전","대전신세계 아트앤사이언스","대전유성","대전중앙로","대전현대아울렛","세종(조치원)","세종나성","세종청사","오창","제천","진천","천안","청주사창","충주","홍성내포"];
	var bu_dae_gyeong = ["경북도청","경산하양","구미강동","김천","남포항","대구신세계(동대구)","대구이시아","덕천","마산","문경","부산극장","부산대","북대구(칠곡)","사상","삼천포","양산","양산라피에스타","울산","정관","창원","창원내서","해운대(장산)"];
	var gwang_jeon = ["광주상무","광주하남","목포하당(포르모)","송천","순천","여수웅천","전대(광주)","전주혁신","첨단"];
	var gangwon = ["남춘천","속초","원주","원주센트럴","춘천석사"];
	var jeju = [""];
	var target = document.getElementById("secondAddress");
	
	if(e.value == "seoul") var d = seoul;
	else if(e.value == "gyeonggi") var d = gyeonggi;
	else if(e.value == "incheon") var d = incheon;
	else if(e.value == "dae_chung_sae") var d = dae_chung_sae;
	else if(e.value == "bu_dae_gyeong") var d = bu_dae_gyeong;
	else if(e.value == "gwang_jeon") var d = gwang_jeon;
	else if(e.value == "gangwon") var d = gangwon;
	else if(e.value == "jeju") var d = jeju;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}

</script>
<script>
$(document).ready(function(){
	$('#textarea').keyup(function (e) {
		let content = $(this).val();
	    
	    // 글자수 세기
	    if (content.length == 0 || content == '') {
	    	$('#textareaCnt').text('0');
	    } else {
	    	$('#textareaCnt').text(content.length);
	    }
	    
	    // 글자수 제한
	    if (content.length > 2000) {
	    	// 200자 부터는 타이핑 되지 않도록
	        $(this).val($(this).val().substring(0, 2000));
	    };
	});
});
</script>
<div class="container has-lnb">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="/support" title="고객센터 페이지로 이동">고객센터</a>
					<a href="/support/inquiry" title="1:1 문의 페이지로 이동">1:1 문의</a>
				</div>

			</div>
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
			
			
		<form action="OneOnOne_1" method="post">
			<div id="contents" class="">
				<h2 class="tit">1:1 문의</h2>
				<div class="mypage-infomation mb30">
					<ul class="dot-list">
						<li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다. </li>
					</ul>

					<div class="btn-group right">
						<a href="OneOnOne_1" class="button purple" id="myQnaBtn" title="나의 문의내역 페이지로 이동">나의 문의내역</a><!-- btn-layer-open -->
					</div>
				</div>

				<div class="agree-box">
					<dl>
						<dt>
							<span class="bg-chk mr10">
								<input type="checkbox" id="chk" name="agreebox" value="checked">
								<label for="chk"><strong>개인정보 수집에 대한 동의</strong></label>
							</span>

							<span class="font-orange">[필수]</span>
						</dt>
						<dd style="font-size:13px;">
							귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br><br>

							[개인정보의 수집 및 이용목적]<br>
							회사는 1:1 문의 내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br><br>

							[필수 수집하는 개인정보의 항목]<br>
							이름, 휴대전화, 이메일, 문의내용<br><br>

							[개인정보의 보유기간 및 이용기간]<br>
							<span class="ismsimp">문의 접수 ~ 처리 완료 후 6개월<br>
							(단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
							자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.</span>
						</dd>
					</dl>
				</div>

				<p class="reset mt10">* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실 수 없습니다</p>

				<p class="reset mt30 a-r font-orange">* 필수</p>
					
					<input type="hidden" name="u_num" value="${sessionScope.u_num }">
					
					<div class="table-wrap mt10">
						<table class="board-form va-m">
							<colgroup>
								<col style="width:150px;">
								<col>
								<col style="width:150px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">문의지점<em class="font-orange">*</em></th>
									<td colspan="3">
										<input type="radio" id="aq" name="inqMclCd" value="QD01M01" checked>
										<label for="aq1">지점문의</label>

										
										<select id="firstAddress" name="firstAddress" onchange="selectAddress(this)">
											<option value="">지역선택</option>
											<option value="seoul">서울</option>
											<option value="gyeonggi">경기</option>
											<option value="incheon">인천</option>
											<option value="dae_chung_sae">대전/충청/세종</option>
											<option value="bu_dae_gyeong">부산/대구/경상</option>
											<option value="gwang_jeon">광주/전라</option>
											<option value="gangwon">강원</option>
											<option value="jeju">제주</option>
											
										</select>
										<select id="secondAddress" name="secondAddress">
											<option>선택해주세요.</option>
										</select>

										<input type="radio" id="aq" name="inqMclCd" class="ml20" value="QD01M02">
										<label for="aq2">기타문의</label>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="ask-type">문의유형</label> <em class="font-orange">*</em></th>
									<td colspan="3">
										<div>
										<select name="i_type" id="ask-type" class="small" tabindex="-98">
											<option value="">문의유형 선택</option>
											<option value="일반문의">일반문의</option>
											<option value="칭찬">칭찬</option>
											<option value="불만">불만</option>
											<option value="제안">제안</option>
										</select>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="name">이름</label> <em class="font-orange">*</em></th>
									<td><input type="text" id="name" name="u_name" class="input-text w150px" value="${user.u_name }" maxlength="15"></td>
									<th scope="row"><label for="qnaRpstEmail">이메일</label> <em class="font-orange">*</em></th>
									<td><input type="text" name="u_email" id="qnaRpstEmail" class="input-text" value="${user.u_email }" maxlength="50"></td>
								</tr>
								<tr>
									<th scope="row"><label for="hpNum1">휴대전화</label> <em class="font-orange">*</em></th>
									<td colspan="3">
											
												<input type="text" name="u_tel" id="hpNum" class="input-text w180px numType" value="${user.u_tel}" maxlength="11">
												
									</td>
								
								<tr>
									<th scope="row"><label for="qnaCustInqTitle">제목</label> <em class="font-orange">*</em></th>
									<td colspan="3"><input type="text" name="i_title" id="i_title" class="input-text" maxlength="100"></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용</label> <em class="font-orange">*</em></th>
									<td colspan="3">
										<div class="textarea">
											<textarea id="textarea" name="i_content" rows="5" cols="30" title="내용입력" placeholder="※ 불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다. 
 ※ 문의 내용에 개인정보(이름, 연락처, 카드번호 등)가 포함되지 않도록 유의하시기 바랍니다." class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
									</td>
								</tr>
								<!-- 2019-02-14 사진첨부 마크업 수정 -->
								<tr>
									<th scope="row">사진첨부</th>
									<td colspan="3">
										<div class="upload-image-box">

											<div class="info-txt">
												<p>* JPEG, PNG 형식의 5M 이하의 파일만 첨부 가능합니다. (최대 5개)</p>

												<!-- to 개발 : 이미지 추가가 5개가 되면 버튼 숨김 -->
												<button type="button" id="uploadBtn" class="btn-image-add"><span>파일선택</span></button>
												<!--// to 개발 : 이미지 추가가 5개가 되면 버튼 숨김 -->
												<p>* 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
											</div>

											<div id="imgList"></div>

										</div>
									</td>
								</tr>
								<!--// 2019-02-14 사진첨부 마크업 수정 -->
							</tbody>
						</table>
					</div>

					<div class="btn-group pt40">
						<button type="submit" class="button purple large">등록</button>
					</div>
			</div>
			</form>
		</div>
	</div>
<c:import url="../footer.jsp" charEncoding="utf-8" />