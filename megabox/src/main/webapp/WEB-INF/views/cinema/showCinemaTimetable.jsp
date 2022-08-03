<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<!--<![endif]-->
<head>
<link rel="shortcut icon" href="/static/pc/images/favicon.ico">
 
<title>(강남)상영시간표 &gt; 전체극장 , 메가박스</title>
<link rel="stylesheet" href="/static/pc/dist/megabox.min.css"
	media="all">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="/static/pc/dist/megabox.api.min.js"></script>
<script src="/static/mb/js/lozad.min.js"></script>
<script src="/js/common/dist/megabox.common.min.js"></script>
<script src="/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
<script src="//cast.imp.joins.com/persona.js" async=""></script>

<script type="text/javascript">

  		
  		var reset = ''

  		if( reset == 'Y' || location.pathname == '/booking' ){
  			history.replaceState('','',location.href);
  		}

        var _init = {
            cache	: Date.now(),
            path	: '/static/pc/js/'
        };

        document.write(
            '<script src="'+_init.path+'ui.common.js?v='+_init.cache+'"><\/script>'+
            '<script src="'+_init.path+'front.js?v='+_init.cache+'"><\/script>'
        );

        //RedirectException 발생시 메시지 처리
        

        //링크 구분에 따라 url 이동을 한다.
        function fn_goMoveLink(link_gbn, link_url) {
            alert("준비중 입니다");
            return;
        }
    </script>
<script src="/static/pc/js/ui.common.js?v=1659502853005"></script>
<script
	src="//cast.imp.joins.com/head/Y2e-o2Iq2tQOcSufIC0X_75Yb7tnP0NHifRh81cPxESEAM4qWzAZAbZkRmtWcXYtV1NZeWRhdWhxWVBtWXJBAstB2LiS06SLlQPLQdi4ktOki5U.js?url=https%3A%2F%2Fwww.megabox.co.kr%2Ftheater%3FbrchNo%3D1372&amp;ref="></script>
<script src="/static/pc/js/front.js?v=1659502853005"></script>
</head>

<body>

	<div class="skip" title="스킵 네비게이션">
		<a href="#contents" title="본문 바로가기">본문 바로가기</a> <a href="#footer"
			title="푸터 바로가기">푸터 바로가기</a>
	</div>

	<div class="body-wrap">

		<script src="/static/mb/js/hmac-sha256.js"></script>
		<script src="/static/mb/js/enc-base64-min.js"></script>
		<script type="text/javascript">
/*전역변수
아이디
패스워드  입력 완료 체크 변수 필요
*/
var sValidateLoginIdAt  = 'N';	//로그인ID  입력 검증 여부
var sValidateLoginPwdAt = 'N';	//로그인PWD 입력 검증 여부
var submitIng = false;
var sCookieVal = "";	//쿠키값

$(function(){
	/*로그인 버튼 비활성*/
	$("#btnLogin").attr("disabled", true);

	/*쿠키조회 pc 아이디값 입력 및 자동로그인 체크*/
	sCookieVal = fn_getCookie('loginId');
	if (!(sCookieVal == null || sCookieVal == "")){
		$("#ibxLoginId").val(sCookieVal);
		$("input:checkbox[id='chkIdSave']").prop("checked",true);
		fn_validateInputVal("loginId",sCookieVal);
	}

	/*이벤트*/
	/*로그인*/
	$("#btnLogin").click(function(){
		var sLoginId   = $("#ibxLoginId").val();
		var sLloginPwd = $("#ibxLoginPwd").val();
		$('#error-text').text('');

		//아이디 저장 버튼 체크시 쿠키 설정
		if($("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_setCookie('loginId',$("#ibxLoginId").val(),730);
		}
		//아이디 저장 체크 안했을때 쿠키 삭제
		else if(!$("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_deleteCookie('loginId');
		}

		fn_selectMbLogin(sLoginId, sLloginPwd);	//로그인
	});

	/*아이디 입력시 체크 */
	$("#ibxLoginId").on("keyup", function(e){
		if(fn_validateInputVal("loginId", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		} else {
			if(e.keyCode == 13){$("#ibxLoginPwd").focus();}
		}

		return;
	});

	/*비밀번호 입력체크 */
	$("#ibxLoginPwd").on("keyup", function(e){
		if(fn_validateInputVal("loginPwd", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		}
		return;
	});


	// 페이스북 로그인
	$('.login-facebook').on('click', function(e) {
		e.preventDefault();

		var type = $(this).data('type');

		FB.login(function(response){
			if(response.authResponse.userID) {
				$.ajaxMegaBox({
					url: '/on/oh/ohg/MbLogin/selectMbSimpleLogin.rest',
					data: JSON.stringify({ simpleLoginId: response.authResponse.userID, type: type }),
					success: function (data) {
						if(data.result) {
							AppHandler.Common.goMain();  // 메인페이지로 이동
						} else {
							AppHandler.Common.alert('본 서비스는 메가박스 회원인 경우에만  이용하실 수 있습니다.\n회원가입 후 이용 부탁 드립니다.');
						}
					}
				});
			}
		});
	});
});

//쿠키설정
function fn_setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/";
}

//쿠키조회
function fn_getCookie(name) {
	var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	return value? value[2] : null;

}

//쿠키삭제
function fn_deleteCookie(name){
	var d = new Date();
	d.setTime(d.getDate() -1);
	var expires = "expires="+d.toUTCString();
	document.cookie = name + "=;" + expires + ";path=/";
}


//입력 문자 체크
function fn_validateInputVal(type,sVal,submitAt){
	if(type == "loginId") {		  //아이디

		if(sVal == ""){
			sValidateLoginIdAt = 'N';
		}
		else{
			$('#error-text').text('');
			sValidateLoginIdAt = 'Y';
		}
	}
	else if(type == "loginPwd") { //패스워드
		if(sVal == ""){
			sValidateLoginPwdAt = 'N';
		}
		else {
			$('#error-text').text('');
			sValidateLoginPwdAt = 'Y';
		}
	}

	if(submitAt != 'Y'){
		if(sValidateLoginIdAt == 'Y' && sValidateLoginPwdAt =='Y') {
			$("#btnLogin").attr("disabled", false);	//버튼활성화
		}
		else {
			$("#btnLogin").attr("disabled", true);	//버튼비활성화
		}
	}

	if(sValidateLoginIdAt == 'N' || sValidateLoginPwdAt =='N') {
		return false;
	}

	return true;
}


//패스워드 3개월 초과시 다음에 하기 버튼 누를경우 비밀번호 변경일자 오늘날자로 셋팅
//비번 재설정은 3개월 미변경시, 변경 안하면 로그인 할때마다 alert 나옴 20190507
function fn_updatePwdUptDt(sLoginId){
	var paramData = { loginId:sLoginId };
	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/updateMbPwdReSet.rest",
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(paramData),
		success: function (data, textStatus, jqXHR) {
			//메인 화면으로 이동
			$(location).attr('href','/main');
		},
		error: function(xhr,status,error){
			var err = JSON.parse(xhr.responseText);
			alert(xhr.status);
			alert(err.message);
		}
	});
}

// 광고 쿠키 싱크 전달
function fn_adSetCookie(adMap){

	var adUrl = "https://ad.imp.joins.com/setcookie/megabox?gender=" + adMap.gender + "&birthday=" + adMap.birthday + "&genre=" + adMap.genre + "&theater=" + adMap.theater;
	if (document.domain.indexOf('t-') == -1){
		$.ajax({
			type: "get"
			, url: adUrl
			, data: ""
			, async : false
			, success: function(result) {
			console.log(result);
			}
			, error: function(err) {
			  console.log('error : ' + err.status);
			}
		});
	}

}

//로그인
function fn_selectMbLogin(sLoginId, sLloginPwd, snsLoginAt, redisKey){

	if(submitIng) return;

	/* 폼데이터 초기화 */
	$('#loginForm input[name=certType]').val();								//본인인증 모듈 코드값 초기화
	var sMenuId = $('input[name=menuId]').val();							//호출화면id
	var sMappingId = $('input[name=mappingId]').val();						//리턴URL
	var sSnsLogin = typeof snsLoginAt == 'undefined' ? "N" : snsLoginAt;	//sns로그인 여부

	var validLoginId  = sLoginId != null ? sLoginId.replace(/ /gi,"") : "";
	var validLoginPwd = sLloginPwd != null ? sLloginPwd.replace(/ /gi,"") : "";

	if(validLoginPwd != "simpleLogin"){
		if(validLoginId == "" || validLoginPwd == ""){
			gfn_alertMsgBoxSize('로그인 정보를 입력해 주세요.',400,250);	//로그인 정보를 입력해 주세요.
			return;
		}
	}

	var paramData = { loginId:sLoginId
					, loginPwd:sLloginPwd
					, menuId:sMenuId
					, mappingId:sMappingId
					, snsLogin:sSnsLogin
					, redisKey:redisKey
					};

	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/selectMbLoginInfo.rest",
		data: JSON.stringify(paramData),
		//async: false,
		success: function (data, textStatus, jqXHR) {
			var revStr                 = data.revStr;
			var redisKey               = data.redisKey;
			var pwdErrCnt              = data.pwdErrCnt+1;
			var loginPwdLstUptDt       = data.loginPwdLstUptDt;
			var pwdUptDayco            = data.pwdUptDayco;
			var menuId                 = data.menuId;
			var mappingId              = data.mappingId;
			var marketRcvStr           = data.marketRcvStr
			var loginIdStar            = data.loginIdStar;

			//비밀번호 5회 오류	//본인인증 수단 선택 M-ME-DA-01
			if (revStr == "acctLock") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				$('#loginForm input[name=certType]').attr('value','SCRC05');
				var options = {};
				options.msg = '로그인정보가 5회 이상 잘못 입력되었습니다.\n회원인증 후 새로운 비밀번호를 설정해 주세요.';	//비밀번호 5회 이상 잘못 입력되었습니다.\n본인인증 후 새로운 비밀번호를 설정해 주세요.
				options.callback  = fn_mvPage;
				options.param = {confirm:'/on/oh/ohg/MbLogin/viewMbSimpleCertPage.rest'};	//간편인증페이지
				options.minWidth  = 400;
				options.minHeight = 250;
				gfn_alertMsgBox(options);
				return;
			}
			//비밀번호 변경9개월 초과 //비밀번호 재설정 M-ME-FI-04	비밀번호변경 9개월 체크 하지 않음. 무조건 3개월 연장
// 			else if (revStr == "loginPwdUpt9mm") {
// 				$('input[name=loginId]').attr('value',loginId);
// // 				mbLayer.toggle({id:revStr, msg:'회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)', btn:'비밀번호 변경', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options      = {};
// 				options.msg      = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
// 				options.okBtnTxt = "비밀번호 변경";
// 				options.callback = fn_mvPage;
// 				options.param    = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//비밀번호 변경3개월 초과	//다음에하기, 비밀번호 재설정 M-ME-FI-04
			else if (revStr == "loginPwdUpt3mm") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "비밀번호 재설정";
			    options.cancelBtnTxt = "다음에 하기";
			    options.minWidth  = 400;
				options.minHeight = 300;
				options.param      = {confirm:"/pw-register" };
				gfn_confirmMsgBox(options);
				return;
// 				if(confirm('회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)')){
// 					$('input[name=loginId]').attr('value',loginId);
// 					fn_mvPage('/pw-register');
// 					return;
// 				}
// 				else {
// 					fn_mvPage("/main");	//메인페이지로 이동
// 					return;
// 				}
			}
			//마케팅 수신일 2년 초과	//todo 다음에하기, 수신동의 설정 내정보 수정화면 개발후연결
			else if (revStr == "marketRcv") {
				var options        = {};
				options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n'+marketRcvStr+'';
				//options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n&#39;+lstSmsRcvAgreeDt+&#39;'.replaceAll('\n','<br/>');
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "수신동의 설정";
			    options.cancelBtnTxt = "다음에 하기";
				options.param      = {confirm:"/on/oh/ohh/Mypage/userAdditInfoPage.do?marketRcvReAgree=Y"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_confirmMsgBox(options);
				return;
			}
			//관리자에의한 패스워드 초기화 //비밀번호 재설정 M-ME-FI-04	관리자에 의한 패스워드 초기화는 없다.
// 			else if (revStr == "loginPwdReset") {
// // 				mbLayer.toggle({id:revStr, msg:'비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.', btn:'확인', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options = {};
// 				options.msg = '비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.';
// 				options.callback  = fn_mvPage;
// 				options.param = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//휴면계정복구 안내	//TODO 다음에하기, 휴면계정복구 본인인증 수단 선택 M-ME-DA-01
			else if (revStr == "mbSchIdGuideDormAcct") {
				$('#loginForm input[name=certType]').attr('value','SCRC03');
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 아이디는 ['+loginIdStar+'] 메가박스 온라인 서비스를 1년이상 이용하지 않아 휴면계정으로 전환되었습니다. 휴면계정 복구 후 서비스 이용이 가능합니다.\n휴면계정 복구를 진행하시겠습니까?';
				options.okBtnTxt = "휴면계정복구";
				options.callback = fn_mvPage;
				options.param    = {confirm:"/member-check"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_alertMsgBox(options);
				return;
			}
			//탈퇴회원안내
			else if (revStr == "quitMb") {
				gfn_alertMsgBoxSize('회원탈퇴 후 1개월 이내 재가입할 수 없습니다.\n메가박스 고객센터로 문의해 주세요',400,250);	//회원탈퇴 후 1개월 이내 재가입할 수 없습니다. 메가박스 고객센터로 문의해 주세요
				return;
			}
			//loginPwdFail 패스워드실패안내, mbJoinReq 회원가입안내, mbInfoSearchUnable 탈퇴회원안내
			else if (revStr == "loginPwdFail" || revStr == "mbJoinReq" || revStr == "mbInfoSearchUnable") {
// 				$('.alert').text('로그인 정보가 잘못되었습니다. (로그인 '+pwdErrCnt+'/5회 실패)');	2020-02-06 메가박스 차세대 이행/안정화 결함대장 28번
				$("#ibxLoginId").val("");
				$("#ibxLoginPwd").val("");
				gfn_alertMsgBoxSize('아이디 또는 비밀번호가 맞지 않습니다.\n로그인 정보를 다시 확인바랍니다.',400,250);	//msg.ch.ohg.ME031=아이디 또는 비밀번호가 맞지 않습니다.\\n로그인 정보를 다시 확인바랍니다.
				$("#btnLogin").attr("disabled", true);	//버튼비활성화
				sValidateLoginPwdAt ='N';
				return;
			}

		    if(typeof loginPopupCallScn === "undefined"){
		    	loginPopupCallScn = "";
		    }
// 		    console.log("this : "+loginPopupCallScn);
			//화면이동

			// 로그인시도 시 메가박스 쿠키싱크 전달
			fn_adSetCookie(data.adMap);
			if(menuId != "" && menuId != null){  //화면으로 띄웠을떄
				fn_mvPage(mappingId);
				return;
			}
			else {

				fn_loginSuccessEvent();

			}
			return;
		},
		error: function(xhr,status,error){
			 var err = JSON.parse(xhr.responseText);
			 alert(xhr.status);
			 alert(err.message);
		},
		beforeSend: function() {
			submitIng = true;
		},
		complete: function() {
			submitIng = false;
		}
	});

	function fn_loginSuccessEvent(){

		var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
		var reloadYn = $('#loginForm input[name=reloadYn]').val();
		var validDataRevisnYn = $('#loginForm input[name=validDataRevisnYn]').val();				//데이터 보정 여부

		if(bokdLoginAt == "Y"){
			//예매로그인일경우
			//오입력값을 체크한다.
			$('.before').hide();
			$('.after').show();
			$('.after .notice').show();
			$('#layer_login_select button.btn-modal-close').trigger("click");
			fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
		}
		else {
			if (reloadYn == "N") {

				$('.before').hide();
				$('.after').show();
				$('.after .notice').show();
				$('#layer_login_select button.btn-modal-close').trigger("click");
				if(validDataRevisnYn == "Y"){
					fn_validDataRevisn();
				}
			} else {

				//화면 리로드
				//location.reload();
				//post submit시 브라우저 경고창 관련
				window.document.location.href = window.document.URL;


				////////////////////////////////////////////
				// TODO 빵원쿠폰일 경우에만 처리되도록 수정 //
                ////////////////////////////////////////////
                $(".btn-modal-close").click();
                ////////////////////////////////////////////
                ////////////////////////////////////////////
			}
		}

		if (callback) {
			try {
				callback();
			} catch (e) {
				console.error(e);
			}
		}
	}

	//페이지 이동 submit
	function fn_mvPage(page){
// 		console.log("MbLoginScriptDV.fn_mvPage : "+page);

		var rtnParam = $("#loginForm [name=rtnParam]").val();

		if (rtnParam.trim() != ""){

			var arr;
			var html = '<input type="hidden" name="#1" value="#2" />';

			$.each(rtnParam.split(','), function(i, val){

				arr = val.split(':');
				arr[0] = arr[0].trim();
				arr[1] = arr[1].trim();
				arr[2] = '[name='+arr[0]+']';

				if ($("#loginForm").find(arr[2]).length > 0) {
					$("#loginForm").find(arr[2]).val(arr[1]);
				} else {
					$("#loginForm").append(html.replace('#1', arr[0]).replace('#2', arr[1]));
				}
			});
		}

		$("#loginForm").attr("method","post");
		$("#loginForm").attr("action",page);
		$("#loginForm input[name=preUrl]").val(document.location.pathname)
		$("#loginForm").submit();
	}
}
/* 비회원 */
var sValidateNonMbNmAt               = "N";
var sValidateNonMbByymmddAt          = "N";
var sValidateNonMbTelnoAt            = "N";

var sValidateMblpCharCertNo          = "N";

var sValidateNonMbPwdAt              = "N";
var sValidateNonMbPwdConfirmAt       = "N";
var sValidateNonMbPwdEqualAt         = "N";
var sValidateNonMbBokdPersonInfoProc = "N";
var sValidateMblpCertNoSuccess      = "N";

var AuthTimer;
var bokdCnfmAt                       = "N";

//이벤트
$(function(){
	if(typeof $("#ibxNonMbPwdConfirm").val() == 'undefined'){
		bokdCnfmAt = "Y";
	}
	fn_validateNonMbInputVal();
	/*비회원 로그인 버튼 비활성화*/
	$("#btnMbLogin").attr("disabled", true);

	/*비회원 정보 확인 버튼 비활성화*/
	$("#btnChkNonMbLogin").attr("disabled", true);
	$("#btnNonMbLogin").attr("disabled", true);

	/* 이름 숫자를 제외한 입력 여부판단 */
	$("#ibxNonMbNm").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbByymmdd").focus()};
		}
	});
	$("#ibxNonMbNm").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		fn_validateNonMbInputVal();
	});

	/* 생년월일 숫자만 입력 여부판단 */
	$("#ibxNonMbByymmdd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbTelno").focus();}
		}
	});
	$("#ibxNonMbByymmdd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 휴대폰번호 숫자만 입력 여부판단 */
	$("#ibxNonMbTelno").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		//휴대폰 번호
		if($("#ibxNonMbTelno").val() != "") {
			var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
			if(frontNm != '01'){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				ibxNonMbTelno = 'N';
				return false;
			}
			else if($("#ibxNonMbTelno").val().length < 10){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				sValidateNonMbTelnoAt = 'N';
				return false;
			}
			else {
				sValidateNonMbTelnoAt = 'Y';
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbTelnoAt = 'N';
		}

		//console.log("sValidateNonMbTelnoAt", sValidateNonMbTelnoAt);
		//console.log("sValidateMblpCertNoSuccess", sValidateMblpCertNoSuccess);

		//인증번호 전송 버튼 활성화
		if( sValidateNonMbTelnoAt   == 'Y' && sValidateMblpCertNoSuccess == 'N') {
			$("#nonMbCertNoSend").attr("disabled", false);
			$("#nonMbCertNoSend").removeClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "Y";
				fn_validateJoinInfoRegInputVal();
			}
		}
		else{
			$("#nonMbCertNoSend").attr("disabled", true);
			$("#nonMbCertNoSend").addClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "N";
				fn_validateJoinInfoRegInputVal();
			}
		}

		if(e.keyCode != 9){
			if(typeof AuthTimer != 'undefined'){
				AuthTimer.fnStop();
				$('#timer').html("3:00");
				$('#nonMbCertNoSend').html("인증요청");
				sValidateMblpCertNoSuccess = "N";
				$('#nonMbCertRow').show();
				$('#mblpCharCertNo').val("");
				$("#nonMbCertNoSend").removeClass("disabled");
				$("#nonMbCertNoSend").attr("disabled", false);
				$("#btnMblpCharCert").attr("disabled", true);
				$("#btnMblpCharCert").addClass("disabled");
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#nonMbCertNoSend").click();}
				}
			}
			else {
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#ibxNonMbPwd").focus();}
				}
			}
		}
	});
	$("#ibxNonMbTelno").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 인증번호 숫자만 입력 여부 판단*/
	$("#mblpCharCertNo").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}

		if(e.keyCode == 13) {$("#btnMblpCharCert").click();}
	});
	$("#mblpCharCertNo").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}
	});

	/* 비밀번호 숫자만 입력 여부판단 */
	$("#ibxNonMbPwd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbPwdConfirm").focus();}
		}
	});
	$("#ibxNonMbPwd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 비밀번호 확인 숫자만 입력 여부판단 */
	$("#ibxNonMbPwdConfirm").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()) {
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		}
	});
	$("#ibxNonMbPwdConfirm").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	//체크박스 변경여부
	$("#chkNonMbBokdPersonInfoProcTrue").change(function() {
		if($('#chkNonMbBokdPersonInfoProcTrue').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	$("#chkNonMbBokdPersonInfoProcFalse").change(function() {
		if($('#chkNonMbBokdPersonInfoProcFalse').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	/*이벤트*/
	/* 인증번호 전송 버튼 클릭*/
	$("#nonMbCertNoSend").click(function(){
		if($("#nonMbCertNoSend").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sNonMbTelno   = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, nonMbTelno : sNonMbTelno
						};

		$('#nonMbCert-error-text').text('');

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoSend.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				$('input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);

				if(data.resultMap.successAt == "N"){
					//비회원로그인-예매
					var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
    				if(bokdLoginAt == "Y"){
    					//예매로그인일경우
    					//인증시간이 만료된 경우
    					if(data.resultMap.msg == "ME061"){
    						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.', 400, 250);	//인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
    					}
    					//동일번호로 3회 이상 요청하는경우
    					else if(data.resultMap.msg == "ME062"){
    						//오입력값을 체크한다.
        					$('.before').hide();
            				$('.after').show();
            				$('#btnNonMbModalClose').trigger("click");
        					$('#layer_login_select button.btn-modal-close').trigger("click");
    						gfn_alertMsgBoxSize('동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.', 400, 250);	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n번호를 확인 한 후 처음부터 다시 진행바랍니다.
    					}

    				}
    				else {
    					//회원가입
    					var options = {};
						options.msg = '동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.';	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n처음부터 다시 이용바랍니다.
						options.callback  = fn_mvMainPage;
						options.minWidth  = 400;
						options.minHeight = 250;
						gfn_alertMsgBox(options);
    				}
					return;
				}
				else {
					//nonMbCertRedisKey
					//console.log("certNo", data.resultMap.certNo);
					$('#nonMbCertNoSend').html("재전송");
					$('#loginForm input[name=nonMbCertedMblpNo]').attr('value',sNonMbTelno);
					gfn_alertMsgBoxSize('인증번호를 전송했습니다.\n인증번호가 도착하지 않았을 경우 재전송을 눌러 주세요.', 400, 250);

					if(typeof AuthTimer != 'undefined'){
						AuthTimer.fnStop();
						$('#timer').html("3:00");
					}
					else {
						AuthTimer = new $ComTimer();
					}
					AuthTimer.comSecond = 180;
					AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.")}
					AuthTimer.timer = setInterval(function(){AuthTimer.fnTimer()},1000);
					AuthTimer.domId = document.getElementById("timer");
					//입력하신 휴대폰 번호로 인증번호가 발송되었습니다. 확인 후 인증번호를 입력해주세요!
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});


	//인증번호 확인 버튼 클릭
	$("#btnMblpCharCert").click(function(){
		if($("#btnMblpCharCert").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sMblpCharCertNo = $('#mblpCharCertNo').val();
		var sNonMbTelno     = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, certNo : sMblpCharCertNo
						, nonMbTelno : sNonMbTelno
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoCnfn.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				var successAt = data.resultMap.successAt;
				var msg = data.resultMap.msg;
				var redisKey = data.resultMap.redisKey;

				if(successAt == "Y"){
					sValidateMblpCertNoSuccess = "Y";
					fn_validateNonMbInputVal();
					$('#loginForm input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);
					$('#nonMbCert-error-text').text('');
					$("#nonMbCertNoSend").attr("disabled", true);
					$("#nonMbCertNoSend").addClass("disabled");
					$("#nonMbCertRow").hide();
					gfn_alertMsgBoxSize('휴대폰 인증을 완료했습니다.\n확인 버튼을 눌러주세요.', 400, 250);	//휴대폰 인증을 완료했습니다.
					if(typeof fn_validateJoinInfoRegInputVal != "undefined"){
						fn_validateJoinInfoRegInputVal()	//회원가입에서 검증함수 호출
					}
				}
				else {
					sValidateMblpCertNoSuccess = "N";
					if(msg == "ME019"){
						$('#nonMbCert-error-text').text('인증번호가 일치하지 않습니다.\n인증번호를 다시 입력해주세요.');	//msg.ch.ohg.ME019 인증번호를 다시 확인 후 입력해 주세요.
					}
					else if(msg == "ME040"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME040	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
					}
					else if(msg == "ME061"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.',400,250);	//입력정보를 확인해주세요.
					}

					$("#nonMbCertNoSend").removeClass("disabled");
					$("#nonMbCertNoSend").attr("disabled", false);
					$("#nonMbCertRow").show();
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});

	// 비회원 정보 확인 팝업 요청
	$("#btnChkNonMbLogin").click(function(){

		if(submitIng) return;

		if(typeof $("#ibxNonMbPwdConfirm").val() != 'undefined'){
			if($("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()) {
				gfn_alertMsgBoxSize('입력정보를 확인해주세요.',400,250);	//입력정보를 확인해주세요.
				return;
			}
		}

		//생년월일 날짜형태 확인
// 		if(!fn_validateDateYn($("#ibxNonMbByymmdd").val())) {
// 			alert("생년월일 입력이 잘못 되었습니다.");
// 			$("#ibxNonMbByymmdd").focus();
// 			return;
// 		}
		$("#btnNonMbLogin").attr("disabled", false);
		fn_chkNonMbLogin();
	});

	// 비회원 로그인
	$("#btnNonMbLogin").click(function(){

		var paramData = { nonMbNm:$("#ibxNonMbNm").val()
						, nonMbByymmdd:$("#ibxNonMbByymmdd").val()
						, nonMbTelno:$("#ibxNonMbTelno").val()
						, nonMbPwd:$("#ibxNonMbPwd").val()
						, bokdCnfmAt:bokdCnfmAt
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/NonMbLogin/selectNonMbLoginInfo.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {

				var menuId                 = data.menuId;
	            var mappingId              = data.mappingId;
	            var statCd                 = data.result.statCd;


	            if(typeof loginPopupCallScn === "undefined"){
			    	loginPopupCallScn = "";
			    }
	            //화면이동
	            if(menuId != "" && menuId != null){    //화면으로 띄웠을떄
	                fn_mvPage(mappingId);
	                return;
	            }
	            else {
	                if(loginPopupCallScn != "" && loginPopupCallScn != null){  //팝업으로 띄었을때 파라메타는 팝업 호출화면에 전역으로 정의
	                    $(".btn-layer-close").trigger("click");
	                    if(loginPopupCallScn == "SimpleBokdM"){
	                    	$('.before').hide();
	            			$('.after').show();
	                        alert("콜백함수호출");
	                    } else if(loginPopupCallScn == "StoreDtlV"){
	                    	$('.before').hide();
	            			$('.after').show();
	                    } else if(loginPopupCallScn == "MySbscDtlsL"){
	                    	$('.before').hide();
	            			$('.after').show();
	            			location.href = '/on/oh/ohh/MySbscDtls/mySbscDtlsListPage.do?currPage=1&searchText=';
	                    }
	                }
	                else {
	                	var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
	    				if(bokdLoginAt == "Y"){
	    					//예매로그인일경우
	    					//오입력값을 체크한다.
	    					$('.before').hide();
	        				$('.after').show();
	        				$('#btnNonMbModalClose').trigger("click");
	    					$('#layer_login_select button.btn-modal-close').trigger("click");
	    					fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
	    					return;
	    				}

	                	if(bokdCnfmAt == "Y"){
	                		$('#nonMbBokdCnfmForm input[name=nonMbNm]').attr('value',$('#ibxNonMbNm').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbTelno]').attr('value',$('#ibxNonMbTelno').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbPwd]').attr('value',$('#ibxNonMbPwd').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbByymmdd]').attr('value',$('#ibxNonMbByymmdd').val());

                            /////////////////////////////////////////////////////////////////////
	                		// 예매정보가 없을 시 메세지 팝업처리 /////////////////////////////////
                            /////////////////////////////////////////////////////////////////////
                            if(statCd == 0) {
                                fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
                            }else{
                                alert("입력하신 정보와 일치하는 예매내역이 없습니다.");
                            }
                            /////////////////////////////////////////////////////////////////////
                            /////////////////////////////////////////////////////////////////////

	                		//fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
	                	}
	                	else {
	                		location.reload();
	                	}

	                }
	            }
	            return;
			},
			error: function(xhr,status,error){
				 var err = JSON.parse(xhr.responseText);
				 alert(xhr.status);
				 alert(err.message);
			},
			beforeSend: function() {
	            submitIng = true;
	        },
	        complete: function() {
	            submitIng = false;
	        }
	    });

	    //페이지 이동 submit
	    function fn_mvNonMbBokdCnfm(page){
// 	        console.log("fn_mvNonMbBokdCnfm : "+page);
	        $("#nonMbBokdCnfmForm").attr("method","post");
	        $("#nonMbBokdCnfmForm").attr("action",page);
	        $("#nonMbBokdCnfmForm").submit();
	    }

	  	//비회원 예매 확인 페이지 이동 submit
	    function fn_mvPage(page){
// 	        console.log("MbLoginScriptDV.fn_mvPage : "+page);
	        $("#loginForm").attr("method","post");
	        $("#loginForm").attr("action",page);
	        $("#loginForm").submit();
	    }
	});
});

function fn_adTracking(url){
	$.ajax({
        type: "get"
        , url: url
        , data: ""
        , dataType: "json"
        , success: function(result) {

        }
        , error: function(err) {
            console.log('fn_adEventCall error : ' + err.status);
        }
    });
}

var callback = undefined;

/*호출 화면에 따른 분기처리*/
function fn_viewLoginPopup(viewId,deviceType,bokdLoginAt,bokdLoginParam,reloadYn,callbackFn){

  	//로그인 폼 호출시 광고영역 노출
    if( $("#Rw6jtk0hQTuOBSzFbvGGlw").html() == "" ){

    	$("#Rw6jtk0hQTuOBSzFbvGGlw").append('<a href="" target="_blank"><img id="pageBannerRnbImage" src="/static/pc/images/common/bg/bg-noimage-main.png" /></a>');

    	var header ={"typ": "JWT","alg": "HS256"}
        var data = {
            "device": {"devicetype": 2},
            "imp": [{"native": {"ext" : {"slots" : 1}}}],
            "site": {"name": "megabox"},
            "id": ""
        };
    	var secret = "Rw6jtk0hQTuOBSzFbvGGlw";

    	var stringifiedHeader = CryptoJS.enc.Utf8.parse(JSON.stringify(header));
        var encodedHeader = base64url(stringifiedHeader);
        var stringifiedData = CryptoJS.enc.Utf8.parse(JSON.stringify(data));
        var encodedData = base64url(stringifiedData);
        var signature = encodedHeader + "." + encodedData;
        signature = CryptoJS.HmacSHA256(signature, secret);
        signature = base64url(signature);
        var pram = encodedHeader+"."+encodedData+"."+signature;
        var adUrl = "https://cast.imp.joins.com/bid/"+secret+"/"+pram; //상용

    	$.ajax({
            type: "get"
            , url: adUrl
            , data: ""
            , success: function(result) {
                if(result) {
                    $("#pageBannerRnbImage").attr("src", result.image_file);
                    $("#pageBannerRnbImage").attr("alt", result.alternative_text);
                    $("#pageBannerRnbImage").attr("clickThrough", result.click_tracking);
                    $("#pageBannerRnbImage").parent().attr("href", result.click_through);



                    $("#pageBannerRnbImage").css("height", result.height);
                    $("#Rw6jtk0hQTuOBSzFbvGGlw").css("background-color", result.bgcolor);
                    fn_adTracking(result.impression_tracking);
                }
            }
            , error: function(err) {
                console.log('fn_getBannerAd error : ' + err.status);
            }
        });

    	//광고링크
   	    $("#pageBannerRnbImage").on("click", function() {
   	        var clickThrough = $(this).attr("clickThrough");
   	        if(clickThrough != undefined && clickThrough != '') {
   	        	fn_adTracking(clickThrough);
   	        }
   	    });
    }

	//
	$(".alert").html("");
	if(sCookieVal == ""){	//아이디 저장 체크 안했을경우
		$(".login-input-area #ibxLoginId").val("");			//아이디
	}
	$(".login-input-area #ibxLoginPwd").val("");		//비밀번호
	$(".no-member-login-table #ibxNonMbNm").val("");	//비회원 이름
	$(".no-member-login-table #ibxNonMbByymmdd").val("");	//비회원 생년월일
	$(".no-member-login-table #ibxNonMbTelno").val("");		//비회원 휴대폰 번호
	$(".no-member-login-table #mblpCharCertNo").val("");	//비회원 휴대폰인증번호
	$(".no-member-login-table #ibxNonMbPwd").val("");		//비회원 비밀번호
	$(".no-member-login-table #ibxNonMbPwdConfirm").val("");	//비회원 비밀번호확인
	$("input[name=chkNonMbBokdPersonInfoProc]").prop("checked",false);	//비회원 라디오버튼 해제
	if(typeof AuthTimer != 'undefined'){
	    AuthTimer.fnStop();
	    $('#timer').html("3:00");
	    $('#nonMbCertNoSend').html("인증요청");
	    sValidateMblpCertNoSuccess = "N";
	    $('#nonMbCertRow').show();
	    $('#mblpCharCertNo').val("");
	    $("#nonMbCertNoSend").removeClass("disabled");
	    $("#nonMbCertNoSend").attr("disabled", false);
	}
	fn_validateNonMbInputVal();

	$('#loginForm input[name=bokdLoginAt]').val("");				//예매 로그인 여부
	$('#loginForm input[name=bokdLoginParam]').val("");				//예매 로그인 파라메타
	$('#loginForm input[name=validDataRevisnYn]').val("");				//데이터 보정 여부
	fn_validateInputVal();

	if('pc' == deviceType){

		if('SimpleBokdM' == viewId) {
			var sBokdLoginAt = typeof bokdLoginAt == 'undefined' ? "" : bokdLoginAt;//예매 로그인 여부
			$('#layer_login_select .layer-con .tab-list').show();			//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').removeClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'556');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$('#loginForm input[name=bokdLoginAt]').attr('value',sBokdLoginAt);			//예매 로그인 여부 값 설정
			$('#loginForm input[name=bokdLoginParam]').attr('value',bokdLoginParam);	//예매 로그인 파라메타
			if(bokdLoginAt == "Y"){
				$('#loginForm input[name=nonMbCertRedisKey]').val("");
				$('#loginForm input[name=nonMbCertedMblpNo]').val("");
			}

		}
		else if('StoreDtlV' == viewId || 'MySbscDtlsL' == viewId) {
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$("#mbPopLayer").show();		//회원 레이어
			$("#nonMbLogoLayer").hide();	//비회원 로고
			$("#nonMbPopLayer").hide();		//비회원 레이어
			$("#mbMbChoiLayer").hide();	//회원 비회원 선택

			$("#nonMbBokdCnfm").attr("style","display:none");
		}
		else if('BoutiqPrivateL' == viewId){	//부티크
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',reloadYn); // 화면 리로드 설정
			$('#loginForm input[name=validDataRevisnYn]').val("Y");				//데이터 보정 여callbackFn부
		}
		else {
			var sReloadYn = typeof reloadYn == 'undefined' ? "" : reloadYn;// 화면 리로드 여부
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',sReloadYn); // 화면 리로드 설정
		}

		callback = callbackFn;
	}
}

//입력 문자 체크
function fn_validateNonMbInputVal(){
	//이름
	if($("#ibxNonMbNm").val() != "") {
		sValidateNonMbNmAt = 'Y';
	}
	else {
		sValidateNonMbNmAt = 'N';
	}

	//생년월일
	if($("#ibxNonMbByymmdd").val() != "") {
		if(fn_validateDateYn($("#ibxNonMbByymmdd").val(),6)){
			sValidateNonMbByymmddAt = 'Y';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbByymmddAt = 'N';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('생년월일을 정확히 입력해주세요.');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('생년월일을 정확히 입력해주세요.');
			}
			return false;
		}
	}
	else {
		sValidateNonMbByymmddAt = 'N';
		$('#mblpInput-error-text').text('');
	}

	//휴대폰 번호
	if($("#ibxNonMbTelno").val() != "") {
		var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
		if(frontNm != '01'){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			ibxNonMbTelno = 'N';
			return false;
		}
		else if($("#ibxNonMbTelno").val().length < 10){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			sValidateNonMbTelnoAt = 'N';
			return false;
		}
		else {
			sValidateNonMbTelnoAt = 'Y';
			$('#mblpInput-error-text').text('');
		}
	}
	else {
		sValidateNonMbTelnoAt = 'N';
	}


	if($("#ibxNonMbPwd").val().length == 4) {
		sValidateNonMbPwdAt = 'Y';
	}
	else {
		sValidateNonMbPwdAt = 'N';
	}
	if(bokdCnfmAt == "Y"){
		sValidateNonMbPwdConfirmAt       = 'Y';
		sValidateNonMbPwdEqualAt         = 'Y';
		sValidateNonMbBokdPersonInfoProc = 'Y';
		sValidateMblpCertNoSuccess       = 'Y';
	}
	else{
		if($("#ibxNonMbPwdConfirm").val().length == 4) {
			sValidateNonMbPwdConfirmAt = 'Y';
		}
		else {
			sValidateNonMbPwdConfirmAt = 'N';
		}

		if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() == $("#ibxNonMbPwdConfirm").val()) {
			sValidateNonMbPwdEqualAt = 'Y';
			$('#nonMbPwdErrText').text('');
		}
		else if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()){
			sValidateNonMbPwdEqualAt = 'N';
			$('#nonMbPwdErrText').text('비밀번호와 비밀번호 확인의 입력값이 일치하지 않습니다.');
			return false;
		}

		if($('#chkNonMbBokdPersonInfoProcTrue').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'Y';
		}
		else {
			sValidateNonMbBokdPersonInfoProc = 'N';
		}

		if($('#chkNonMbBokdPersonInfoProcFalse').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'N';
		}
	}

// 	$('#error-text1').text
// 	("sValidateNonMbNmAt:"             +sValidateNonMbNmAt              +("/")+$("#ibxNonMbNm").val().length        +("\n\n")+
// 			"sValidateNonMbByymmddAt:"         +sValidateNonMbByymmddAt         +("/")+$("#ibxNonMbByymmdd").val().length   +("\n\n")+
// 			"sValidateNonMbTelnoAt:"           +sValidateNonMbTelnoAt           +("/")+$("#ibxNonMbTelno").val().length     +("\n\n")+
// 			"sValidateNonMbPwdAt:"             +sValidateNonMbPwdAt             +("/")+$("#ibxNonMbPwd").val().length       +("\n\n")+
// 			"sValidateNonMbPwdConfirmAt:"      +sValidateNonMbPwdConfirmAt      +("/")+$("#ibxNonMbPwdConfirm").val().length+("\n\n")+
// 			"sValidateNonMbPwdEqualAt:"        +sValidateNonMbPwdEqualAt        +("/\n\n")+
// 			"sValidateNonMbBokdPersonInfoProc:"+sValidateNonMbBokdPersonInfoProc+("/\n\n")
// 		+$("input:checkbox[id='chkNonMbBokdPersonInfoProc']").is(":checked"));

	if(    bokdCnfmAt                       == "N"
		&& sValidateNonMbNmAt               == 'Y'
		&& sValidateNonMbByymmddAt          == 'Y'
		&& sValidateNonMbTelnoAt            == 'Y'
		&& sValidateNonMbPwdAt              == 'Y'
		&& sValidateNonMbPwdConfirmAt       == 'Y'
		&& sValidateNonMbBokdPersonInfoProc == 'Y'
 		&& sValidateNonMbPwdEqualAt         == 'Y'
 		&& sValidateMblpCertNoSuccess       == 'Y'){
		$("#btnChkNonMbLogin").attr("disabled", false);
		return true;
	}
	else if (bokdCnfmAt == "Y"
			&& sValidateNonMbNmAt       == 'Y'
			&& sValidateNonMbByymmddAt         == 'Y'
			&& sValidateNonMbTelnoAt == 'Y'
			&& sValidateNonMbPwdAt       == 'Y'){
		$("#btnNonMbLogin").attr("disabled", false);
		return true;
	}
	else{
		$("#btnChkNonMbLogin").attr("disabled", true);
		$("#btnNonMbLogin").attr("disabled", true);
		return false;
	}
}

/*날짜 형태 확인*/
function fn_validateDateYn(param, length) {
	try
	{
		var year  = 0;
		var month = 0;
		var day   = 0;

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < Number(length) || param.length > Number(length)) {
			return false;
		}

		if( param.length == 6){
			year  = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day   = Number(param.substring(4, 6));
		}
		else if(param.length == 8){
			year  = Number(param.substring(0, 4));
			month = Number(param.substring(4, 6));
			day   = Number(param.substring(6, 8));

			var sysYear = Number(new Date().getFullYear());
			//년도입력이 현재 년도보다 클때.
			if(sysYear < year){
				return false;
			}
		}
		else {
			return false;
		}


		var dd = day / 0;


		if( month<1 || month>12 ) {
			return false;
		}

		var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		var maxDay = maxDaysInMonth[month-1];

		// 윤년 체크
		if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
			maxDay = 29;
		}

		if( day<=0 || day>maxDay ) {
			return false;
		}
		return true;

	} catch (err) {
		return false;
	}
}


function $ComTimer(){
    //prototype extend
}

$ComTimer.prototype = {
    comSecond : ""
    , fnCallback : function(){}
    , timer : ""
    , domId : ""
    , fnTimer : function(){
        var m = Math.floor(this.comSecond / 60) + ":" + String((this.comSecond % 60)).lpad(2,"0");	// 남은 시간 계산
        this.comSecond--;					// 1초씩 감소
        this.domId.innerText = m;
        if (this.comSecond < 0) {			// 시간이 종료 되었으면..
            clearInterval(this.timer);		// 타이머 해제
            $('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
            $("#btnMblpCharCert").attr("disabled", true);	//인증확인버튼 비활성
			$("#btnMblpCharCert").addClass("disabled");		//인증확인버튼 비활성
        }
    }
    ,fnStop : function(){
        clearInterval(this.timer);
    }
}

</script>
		<script type="text/javascript">
var simpleLoginWithPopup;
var simpleLoginWith = function(lnkgTy){
    var url = "/on/oc/ocz/SimpleLogin/simpleLogin.do?lnkgTy=" + lnkgTy;
    if ( simpleLoginWithPopup ) {
        simpleLoginWithPopup.close();
    }
    if(lnkgTy != "FACEBOOK"){
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=420, height=550');
	}
	else {
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=650, height=600, scrollbars=yes');
	}
}

var fn_LoginPopUpCall = function(paramData){
    if ( lnkgInfoObj.attr("connTy") != undefined ) {
        fn_ConnWithCallBack(paramData);
    } else {
        fn_LoginWithCallBack(paramData);
    }

}
var fn_LoginPopUpCallError = function(msg){
    gfn_alertMsgBoxSize(msg, 400, 250);
}

//비회원 확인 팝업
function fn_chkNonMbLogin() {

	var $td = $(document).find('#layer_no_member_chk td');

	var telTmp = $('#ibxNonMbTelno').val();

	switch(telTmp.length){
	case 10 : telTmp = telTmp.format('XXX-XXX-XXXX'); break;
	case 11 : telTmp = telTmp.format('XXX-XXXX-XXXX');break;
	}

	$td.eq(0).html($('#ibxNonMbNm').val());
	$td.eq(1).html($('#ibxNonMbByymmdd').val());
	$td.eq(2).html(telTmp);

	// 레이어 호출
	$(document).find('#aNonMbLogin').click();
}
</script>
		<script type="text/javascript">
var fn_LoginWithCallBack = function(paramData){
    $.ajaxMegaBox({
        url: "/on/oc/ocz/SimpleLogin/selectSimpleLogin.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if ( data.userMap == null ) {
            	//var simpleLoginTyCd = data.userMap.simpleLoginTyCd;
                gfn_alertMsgBoxSize('['+paramData.simpleLoginTyCd+'] 계정으로 연동된 메가박스 계정이 없습니다.\n연동을 원하시면 나의메가박스 > 개인정보수정에서\n간편로그인 계정연동을 진행해 주세요.', 400, 250);
            } else {
                var loginId = data.userMap.loginId;
                var mbNo    = data.userMap.mbNo;
                fn_selectMbLogin(loginId, "simpleLogin", "Y", paramData.redisKey);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}
var lnkgInfoObj;
$(function(){
    $("div.sns-login > a").off("click").on("click",function(){
        lnkgInfoObj = $(this);
        simpleLoginWith($(this).attr("lnkgTy"));
    });
});
</script>
		<form id="loginForm">
			<input type="hidden" name="redisKey" value=""> <input
				type="hidden" name="menuId" value=""> <input type="hidden"
				name="mappingId" value=""> <input type="hidden"
				name="rtnParam" value=""> <input type="hidden"
				name="certType" value=""> <input type="hidden" name="preUrl"
				value="">

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type="hidden" name="bokdLoginAt" value=""> <input
				type="hidden" name="bokdLoginParam" value=""> <input
				type="hidden" name="nonMbCertRedisKey" value=""> <input
				type="hidden" name="nonMbCertedMblpNo" value=""> <input
				type="hidden" name="reloadYn" value=""> <input type="hidden"
				name="validDataRevisnYn" value="N">

		</form>

		<!--  ko_KR -->

		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag" href="#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;">
			<a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus"
				title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
			<div class="wrap"
				style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
				<header class="layer-header">
					<h3 class="tit">로그인</h3>
				</header>

				<div class="layer-con" style="height: 511px;">

					<div class="tab-list tab-layer">
						<ul>
							<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원
									로그인<!--회원 로그인-->
							</a></li>
							<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
						</ul>
					</div>

					<!-- tab-cont-wrap -->
					<div class="tab-cont-wrap">
						<!-- tab 회원 로그인 -->
						<div id="login_tab_01" class="tab-cont on">
							<a href="" class="ir"></a><a href="" class="ir" title="로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">
										<div class="login-input-area">
											<input autocomplete="off" id="ibxLoginId" maxlength="20"
												type="text" placeholder="아이디" title="아이디를 입력하세요"
												class="input-text strTrim">
											<!--아이디-->
											<!--아이디를 입력하세요-->
											<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
												type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
												class="input-text mt15">
											<!--비밀번호-->
											<!--비밀번호를 입력하세요-->
											<div class="alert"></div>

											<!-- chk-util -->
											<div class="chk-util">
												<div class="left">
													<input id="chkIdSave" type="checkbox"> <label
														for="chkIdSave">아이디 저장<!--아이디 저장--></label>
												</div>

												<div class="right">
													<div class="hp-ad">
														<a
															href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
															title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰
																간편로그인<!--휴대폰 간편로그인-->
														</span> <em>광고<!--광고--></em></a>
													</div>
												</div>
											</div>
											<!--// chk-util -->

											<button id="btnLogin" type="button"
												class="button purple large btn-login" disabled="disabled">
												로그인
												<!--로그인-->
											</button>

											<div class="link">
												<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a> <a
													href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="javaScript:void(0)" lnkgty="FACEBOOK"
													title="페이스북으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-facebook.png"
													alt="페이스북">
												<!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="NAVER"
													title="네이버로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-naver.png"
													alt="네이버">
												<!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="KAKAO"
													title="카카오톡으로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-kakao.png"
													alt="카카오톡">
												<!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgty="PAYCO"
													title="페이코로 로그인 선택"><img
													src="../../../static/pc/images/member/ico-payco.png"
													alt="페이코">
												<!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
											</div>
										</div>
									</div>

									<div class="col right">
										<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
									</div>
								</div>
								<!--// col-wrap -->
							</div>
						</div>
						<!--// tab 회원 로그인 -->

						<!-- tab 비회원 로그인 -->
						<div id="login_tab_02" class="tab-cont">
							<a href="" class="ir"></a><a href="" class="ir" title="비회원 로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">

										<div class="no-member-login-table">
											<table
												summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
												<caption>
													이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
													<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
												</caption>
												<colgroup>
													<col style="width: 110px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
														</th>
														<td><input maxlength="20" id="ibxNonMbNm" type="text"
															placeholder="이름" class="input-text">
														<!--이름--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
														</th>
														<td><input maxlength="6" id="ibxNonMbByymmdd"
															type="text" placeholder="생년월일 앞6자리" class="input-text">
														<!--주민번호 앞 6자리--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
														</th>
														<td>
															<div class="hp-input">
																<input maxlength="11" id="ibxNonMbTelno" type="text"
																	placeholder="- 없이 입력" class="input-text">
																<!--- 없이 입력-->
																<button id="nonMbCertNoSend" type="button"
																	class="button gray" disabled="disabled">
																	인증요청
																	<!--인증요청-->
																</button>
															</div>
															<div id="mblpInput-error-text" class="alert"></div>
														</td>
													</tr>
													<tr id="nonMbCertRow">
														<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
														</th>
														<td>
															<div class="chk-num">
																<div class="line">
																	<input maxlength="4" id="mblpCharCertNo" type="text"
																		class="input-text">

																	<div class="time-limit" id="timer">3:00</div>
																</div>

																<button id="btnMblpCharCert" type="button"
																	class="button purple" disabled="disabled">
																	확인
																	<!--확인-->
																</button>
															</div>
															<div id="nonMbCert-error-text" class="alert"></div>
														</td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
														<!--비밀번호--></th>
														<td><input maxlength="4" id="ibxNonMbPwd"
															type="password" placeholder="비밀번호(숫자 4자리)"
															class="input-text">
														<!--비밀번호(숫자 4자리)--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
														</th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm"
															type="password" placeholder="비밀번호(숫자 4자리) 확인"
															class="input-text">
														<!--비밀번호(숫자 4자리) 확인-->
															<div id="nonMbPwdErrText" class="alert"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="col right">

										<div class="no-member-privacy-rule">
											<p class="tit">
												비회원예매 개인정보 처리방침
												<!--비회원예매 개인정보 처리방침-->
											</p>

											<div class="cont">
												<dl>
													<dt>수집목적</dt>
													<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
													<dt>수집항목</dt>
													<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
													<dt>보유기간</dt>
													<dd class="ismsimp">관람 또는 취소 후 7일 이내</dd>
													<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
												</dl>

												<div class="btn-agree">
													<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
														name="chkNonMbBokdPersonInfoProc"> <label
														for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
														type="radio" id="chkNonMbBokdPersonInfoProcFalse"
														name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
														for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
												</div>

												<ul class="dot-list gblue mt20">
													<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
														비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--// col-wrap -->

								<div class="btn-group">
									<button id="btnChkNonMbLogin" type="button"
										class="button purple" disabled="disabled">확인</button>
									<a id="aNonMbLogin" href="#layer_no_member_chk"
										class="button purple btn-modal-open" w-data="600" h-data="320"
										style="display: none;"></a>
								</div>
							</div>
						</div>
						<!--// tab 비회원 로그인 -->
					</div>
					<!--// tab-cont-wrap -->
				</div>

				<button type="button" class="btn-modal-close">
					레이어 닫기
					<!--레이어 닫기-->
				</button>
			</div>
		</section>

		<section id="layer_no_member_chk" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a>
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">알림</h3>
				</header>

				<div class="layer-con">
					<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

					<div class="table-wrap v1">
						<table class="data-table"
							summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
							<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
							<colgroup>
								<col style="width: 80px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="a-l">이름</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">생년월일</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row" class="a-l">휴대폰번호</th>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button close-layer small">취소</button>
					<button id="btnNonMbLogin" type="button"
						class="button purple small" disabled="disabled">확인</button>
				</div>

				<button id="btnNonMbModalClose" type="button"
					class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>
		<!--  ko_KR -->


		<script type="text/javascript">
    $(function(){
        
            
            
            	$('#header .right-link .before').hide();
            	$('#header .right-link .after').show();
            
        

        // 웹에서만 실행 -> facebook을 로드하지 않는 템플릿에서 반복적인 오류 발생으로 hreader로 이전
        if(!MegaboxUtil.Common.isMobile() && !MegaboxUtil.Common.isApp())
            MegaboxUtil.Share.init();
    });

    //로그인 버튼
    $(document).on('click', '#moveLogin', function() {

        fn_viewLoginPopup('default','pc');

    });

    var sysCd = 'ON';

  	//넷퍼넬 스킨 타입 지정
	NetfunnelChk.setting( sysCd, MegaboxUtil.Common.isApp() );

</script>

		<!-- 베네피아 배너 접근 시 노출 -->


		<!-- 메인에만 광고영역 노출 -->

		<!-- 메인 영화에만 광고영역 노출 -->

		<c:import url="../header.jsp" charEncoding="utf-8" />

		<script type="text/javascript">
var localeCode = "kr";			   //한영 구분 코드
$(function(){
});

function fn_setMeta(scnDiv) {
	var paramData = null;

	if( scnDiv == undefined ){

		switch(tmpData.tabIndx){

		case 0: //영화별
			url = location.protocol + '//' + document.domain + '/booking/timetable';
			paramData = {
					'scnTitle'         : '영화별 상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagTitle'   : '영화별상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagDtls'    : '메가박스의 영화별 상영시간표를 알려드립니다.'
					, 'metaTagKeyword' : ''
					, 'metaTagUrl'     : url
				};
				break;

		case 1: //극장별
			url = location.protocol + '//' + document.domain + '/booking/timetable';
			paramData = {
					'scnTitle'         : '극장별 상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagTitle'   : '극장별상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagDtls'    : '메가박스의 극장별 상영시간표를 알려드립니다.'
					, 'metaTagKeyword' : ''
					, 'metaTagUrl'     : url
				};
				break;

		case 2: //특별관
			url = location.protocol + '//' + document.domain + '/booking/timetable';
			paramData = {
					'scnTitle'         : '특별관 상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagTitle'   : '특별관상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스'
					, 'metaTagDtls'    : '메가박스의 특별관 상영시간표를 알려드립니다.'
					, 'metaTagKeyword' : ''
					, 'metaTagUrl'     : url
				};
				break;
		}

	}else{
		url = location.protocol + '//' + document.domain + '/booking';
		paramData = {
				'scnTitle'         : '빠른예매 < 예매 | MEET PLAY SHARE, 메가박스'
				, 'metaTagTitle'   : '빠른예매 < 예매 | MEET PLAY SHARE, 메가박스'
				, 'metaTagDtls'    : '메가박스에서 영화를 간편하고 빠르게 예약해보세요.'
				, 'metaTagKeyword' : ''
				, 'metaTagUrl'     : url
			};
	}

	//이전버튼을 위한 현재 메타태그 정보 저장
	saveCurrentMeta();

	//URL 변경
	history.replaceState( null, null, url );

	//메타태그 설정
	settingMeta(paramData);
}



//좌석도로 파라메타 전달
function fn_setSmapParam(param) {

	NetfunnelChk.script("BOOK_STEP2",function(){

		//param : 좌석도 화면 구동에 필요한 상영스케줄번호
		//scnDiv : 네비게이션 표시를 위한 진입화면 구분 playTime : 예매 > 상영시간표, brch : 극장, spclBrch : 특별관
		var frameBokdMSeatBodyObj    = $('#frameBokdMSeat').get(0).contentWindow.document.body;	//좌석도 프레임 바디 오브젝트
		var framePayBookingBodyObj   = $('#framePayBooking').get(0).contentWindow.document.body;	//결제화면 프레임 바디 오브젝트
		var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
		var innerHtml = "<span>Home</span>";
		var smapPlaySchdlNo = param[0];
		var scnDiv = param[1];
		var brchNo = param[2];

		fn_setMeta(scnDiv);

		if("default" == scnDiv){
			innerHtml += "<a href=\"/booking\" title=\"/예매 페이지로 이동\">예매</a>";
			innerHtml += "<a href=\"/booking\" title=\"/빠른예매 페이지로 이동\">빠른예매</a>";
		}
		else if("playTime" == scnDiv){
			innerHtml += "<a href=\"/booking\" title=\"/예매 페이지로 이동\">예매</a>";
			innerHtml += "<a href=\"/booking/timetable\" title=\"/상영시간표 페이지로 이동\">상영시간표</a>";
		}
		else if("brch" == scnDiv){
			innerHtml += "<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml += "<a href=\"/theater/list\" title=\"/예매 페이지로 이동\">전체극장</a>";
			innerHtml += "<a href=\"\" title=\"/극장정보\">극장정보</a>";
		}
		else if("TBQ" == scnDiv){
			innerHtml += "<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/boutqInfoPage.do\" title=\"/부티크 페이지로 이동\">부티크</a>";
		}
		else if("MX" == scnDiv){
			innerHtml += "<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/mxInfoPage.do\" title=\"/MX 페이지로 이동\">MX</a>";
		}
		else if("CFT" == scnDiv){
			innerHtml += "<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/comfortInfoPage.do\" title=\"/COMFORT 페이지로 이동\">COMFORT</a>";
		}
		else if("MKB" == scnDiv){
			innerHtml += "<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml += "<a href=\"/on/oh/ohc/BrchSpecial/kidsInfoPage.do\" title=\"/MEGABOX KIDS 페이지로 이동\">MEGABOX KIDS</a>";
		}
		else if("TFC" == scnDiv){
			innerHtml +="<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml +="<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml +="<a href=\"/on/oh/ohc/BrchSpecial/firstClubInfoPage.do\" title=\"/THE FIRST CLUB 페이지로 이동\">THE FIRST CLUB</a>";
		}
		else if("BCY" == scnDiv){
			innerHtml +="<a href=\"/theater/list\" title=\"/극장 페이지로 이동\">극장</a>";
			innerHtml +="<a href=\"/on/oh/ohc/BrchSpecial/mainPage.do\" title=\"/특별관 페이지로 이동\">특별관</a>";
			innerHtml +="<a href=\"/on/oh/ohc/BrchSpecial/balconyInfoPage.do\" title=\"/BALCONY 페이지로 이동\">BALCONY</a>";
		}

		$('#bokdContainer .inner-wrap .location').html(innerHtml);	//네비게이션 표시
		$(frameBokdMSeatBodyObj).find(".quick-reserve h2").html('');	//좌석도 타이틀 숨김
		$(framePayBookingBodyObj).find(".quick-reserve h2").html('');	//결제   타이틀 숨김

		$('#bokdContainer').show();		//좌석도, 결제 컨테이너 보임
		$('#schdlContainer').hide();	//상영시간표 컨테이너 숨김
		$('#bokdMSeat').show();			//좌석도 보임
		$(frameBokdMSeatBodyObj).find('#playSchdlNo').val(smapPlaySchdlNo);
		$(frameBokdMSeatBodyObj).find('#brchNo').val(brchNo);
		frameBokdMSeatContentObj.fn_search();	//좌석도 좌석조회

	// 	$('#frameBokdMSeat').attr('src','/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?playSchdlNo='+obj.attr("play-schdl-no"));
	// 	$('#frameBokdMSeat').attr('src','/main');
	});
}

//좌석도에서 이전 버튼 클릭
function fn_goPrePagePcntSeatChoi() {
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdContainer').hide();		//좌석도, 결제 컨테이너 보임
	$('#schdlContainer').show();	//상영시간표 컨테이너 숨김

	//결제에서 예매이동 처리 추가
	$('#bokdMSeat').hide();			//좌석도 숨김
	$('#bokdMPayBooking').hide();
	$('#frameBokdMSeat').attr("src", "/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do"); //좌석도 화면초기화
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화

	//이전 메타태그 정보로 설정 (preMetaFormat:전역변수)
	settingMeta(preMetaFormat);
	//URL 변경
	history.replaceState( null, null, preMetaFormat.metaTagUrl );
}

//좌석도에서 다음 버튼 클릭
function fn_goNextPagePcntSeatChoi(param) {
	//로그인 여부 체크
	fn_validLoginAt(param);
	//데이터 보정 체크
	//fn_validLoginAt();
	//오입력 체크
	//블랙리스트 체크
	//결제로이동
}


//결제화면으로로 파라메타 전달 및 화면 이동
function fn_setBookingParamMove(options) {

	NetfunnelChk.script("BOOK_STEP3",function(){

		var framePayBookingBodyObj    = $('#framePayBooking').get(0).contentWindow.document.body;	//결제화면 프레임 바디 오브젝트
		var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;

		//좌석도에서 세팅한 param 값
		var playSchdlNo   = options.playSchdlNo;	//상영스케쥴
		var seatOccupText = options.seatOccupText;	//좌석/티켓 상세정보
		var totalAmt      = options.totalAmt;		//총금액

		$(framePayBookingBodyObj).find('#playSchdlNo').val(playSchdlNo);
		$(framePayBookingBodyObj).find('#seatOccupText').val(seatOccupText);
		$(framePayBookingBodyObj).find('#totalAmt').val(totalAmt);

		framePayBookingContentObj.completeSeat();
		$('#bokdMPayBooking').show();
		//프레임 높이 자동 조정
		calcFrameHeight($('#bokdMPayBooking'), $('#framePayBooking'));

		$('#bokdMSeat').hide();  //좌석도 숨김

	});
}

//결제화면에서 이전 버튼 클릭
function fn_goPrePagePayBooking() {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();
}

//결제화면에서 이전 버튼 클릭 및 블랙리스트 팝업
function fn_altBlackgoPrePagePayBooking(blackListParam) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	frameBokdMSeatContentObj.fn_display_init();

	frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
}

//결제화면에서 오류 발생시 좌석도로 이동(기선점 존재, 시간 초과 등)
function fn_goPrePageInitSeat(msg) {
	var framePayBookingContentObj = $('#framePayBooking').get(0).contentWindow;
	$('#bokdMPayBooking').hide();
	$('#framePayBooking').attr("src", "/on/oh/ohz/PayBooking/completeSeat.do"); //결제화면 초기화

	//좌석도 초기화
	var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
	frameBokdMSeatContentObj.fn_search('N');  //새로 조회 및 최초진입 팝업 띄우지 않음
	$('#bokdMSeat').show();	//좌석도 표시
	$("html,body").scrollTop(0);

	if (msg != null && msg != "") {
		gfn_alertMsgBox("결제가능 시간이 초과되어<br/> 좌석선택부터 다시 진행바랍니다.");
	}

	frameBokdMSeatContentObj.fn_display_init();
}

//프레임 height 자동조정 : 결제만 적용가능
function calcFrameHeight(divObj, frameObj) { //div obj, frame obj
	var frameBodyObj = $(frameObj).get(0).contentWindow.document.body;	//프레임 바디 오브젝트
	var height = $(frameObj).contents().find('.inner-wrap').outerHeight();
	$(divObj).height(height + 130);
	$(frameObj).height(height + 130);
}

//로그인여부 체크
function fn_validLoginAt(param){
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectLoginSession.do",
        //data   : JSON.stringify(paramData),
        success: function(result){
        	var loginAt = result.resultMap.result;	//로그인 여부

        	//비로그인 상태
			if(loginAt  == "N"){
				//로그인 팝업 표시
				fn_viewLoginPopup('SimpleBokdM','pc','Y',JSON.stringify(param));
			}
        	//로그인 상태
			else {
				//데이터 보정 체크
				fn_validDataRevisn(param);
			}
        }
    });
}

//데이터 보정 체크
function fn_validDataRevisn(param){

	fn_vlaidBlackList(param);

// 	$.ajaxMegaBox({
//         url    : "/on/oh/ohg/MbLogin/selectDataRevisn.do",
//         //data   : JSON.stringify(paramData),
//         success: function(result){
//         	var dataRevisnAt = result.resultMap.result;	//로그인 여부
//         	//자료보정대상
// 			if(dataRevisnAt  == "Y"){
// 				//자료 보정 안내 메세지 표시
// 				var arguments=result.resultMap.birthDe+' / '+result.resultMap.mblpTelno;
// 				var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;	//좌석도 프레임 컨텐츠 오브젝트
// 				frameBokdMSeatContentObj.shwoDataRevisnPopup(arguments,param);
//  			}
//  			//자료보정대상아님
//  			else {
//  				//블랙리스트 체크
// 				fn_vlaidBlackList(param);
//  			}
//         }
//     });
}

//블랙리스트 체크
function fn_vlaidBlackList(param){


	var paramData = { BokdCnt : param.bokdCnt
					, BokdBrch : param.brchNo
					};

// 	//좌석수 param
	$.ajaxMegaBox({
        url    : "/on/oh/ohg/MbLogin/selectBlackList.do",
        data   : JSON.stringify(paramData),
        success: function(result){
        	var dataBlackListAt = result.resultMap.result;
        	//블랙리스트 대상
			if(dataBlackListAt  == "Y"){
				//블랙리스트 안내 메세지 표시
				var frameBokdMSeatContentObj = $('#frameBokdMSeat').get(0).contentWindow;
				var blackListParam = { bokdAbleBrch: result.resultMap.bokdAbleBrch
									, bokdAbleCnt: result.resultMap.bokdAbleCnt
									, bokdAbleQty: result.resultMap.bokdAbleQty
									 }
				frameBokdMSeatContentObj.shwoBlackListPopup(blackListParam);
			}
			//블랙리스트 비 대상
			else {
				//결제로 이동
 				fn_setBookingParamMove(param);
			}
        }
    });
}

//페이지 이동
function fn_mvPage(page){
	$("#bokdMForm").attr("method","post");
	$("#bokdMForm").attr("action",page);
	$("#bokdMForm").submit();
}

//언어변환
function setLangChg(){
    if(localeCode == "en"){
        location.href="/booking?megaboxLanguage=kr";
    }
    else {
        location.href="/booking?megaboxLanguage=en";
    }
}


//페이지 리로드
function fn_bokdReload(page){
	fn_goPrePagePcntSeatChoi();
}

</script>
		<form id="bokdMForm">
			<input type="hidden" name="returnURL" value="info">
		</form>
		<!-- container -->
		<div id="bokdContainer" class="container"
			style="padding-bottom: 200px; display: none">
			<input type="hidden" id="playDe" name="playDe" value="">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location"></div>

				</div>
			</div>

			<div id="bokdMSeat"
				style="overflow: hidden; display: none; height: 736px;" class="">
				<iframe id="frameBokdMSeat"
					src="/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?megaboxLanguage=kr"
					title="관람인원선택 프레임" scrolling="no" frameborder="0"
					class="reserve-iframe" style="width: 100%; height: 736px;"></iframe>
			</div>

			<div id="bokdMPayBooking"
				style="overflow: hidden; display: none; height: 736px;" class="">
				<iframe id="framePayBooking"
					src="/on/oh/ohz/PayBooking/completeSeat.do?megaboxLanguage=kr"
					title="예매 결제" scrolling="no" frameborder="0" class="reserve-iframe"
					style="width: 100%; height: 736px;"></iframe>
			</div>

		</div>
		<!--// container -->
		<script src="/js/megabox-brch.js"></script>
		<script src="/js/megabox-simpleBokd.js"></script>

		<script type="text/javascript">

	// Tab Index
	var tabIdx = 01 -1;

	// 최초 1번 조회 여부 Index로 관리함
	var arrTab = [0, 0, 0];

	$(function() {

		// 화면준비
		$(document).ready(function(){

			// 요청 탭 조회
			$('#contents div.tab-list a').eq(tabIdx).click();
		});

		// 이벤트 버블현상 공통 제거
		$('#contents').on('click', 'a', function(e) {

			if (($(this).attr('href') || '').indexOf('/') == -1) {
				e.preventDefault();
			}
		});

		// 로그인 버튼
		$(document).on('click', '#moveLogin', function() {

			fn_viewLoginPopup('default','pc');
		});

		// 선호극장
		$('#favorBrch').on('click', function() {

			if ($(this).hasClass('on')) {

				gfn_confirmMsgBox('등록된 선호극장을 삭제하시겠습니까?', fn_chgFavor);

			} else {

				fn_chgFavor('N');
			}
		});

		// Tab 선택
		$('#contents div.tab-list a').click(function() {

			var index = $('#contents div.tab-list a').index(this);

			// 최초 접근 일때 서버에서 조회해 옴
			if (arrTab[index] == 0) {

				switch(index){
				case 0 : fn_brchInfo();     break; //극장정보
				case 1 : fn_callSchedule(); break; //상영시간표
				case 2 : fn_callPrice();    break; //관람료
				}

				arrTab[index] = 1;
			}

			// 메타테그/네비게인션 설정
			setMetaTagNNavi(index);

			// 상단으로 스크롤
			window.scrollTo(0, 0);
		});
	});

	// 선호극장 등록 및 취소
	function fn_chgFavor(deleteYn) {

		if (deleteYn == undefined) deleteYn = 'Y';

		var paramData = {'brchNo' : '1372', 'deleteYn' : deleteYn};

		$.ajaxMegaBox({
			url      : '/on/oh/ohc/Brch/updateFavorBrch.do',
			data     : JSON.stringify(paramData),
			sessionAt: true,
			success  : function (data, textStatus, jqXHR) {

				// 결과
				switch(data.result){
				case 'max'   : gfn_alertMsgBox('최대 3개까지 설정 가능합니다.'); return;
				case 'login' : gfn_alertMsgBox('로그인 해주세요.');           return;
				}

				switch(deleteYn){
				case 'N' : $('.btn-like').addClass('on');    break;
				case 'Y' : $('.btn-like').removeClass('on'); break;
				}
			}
		});
	}

	// 극장 정보(Tab01) > 극장 정보 조회
	function fn_brchInfo() {

		var paramData = {'areaCd' : '10', 'brchNo' : '1372'};

		$.ajaxMegaBox({
			dataType : 'html',
			url      : '/on/oh/ohc/Brch/infoPage.do',
			data     : JSON.stringify(paramData),
			success  : function (data, textStatus, jqXHR) {

				// html 설정
				$('#tab01').html(data);

				// 소식조회
				fn_noticeList();
			}
		});
	}

	// 극장 정보(Tab01) > 소식 조회
	function fn_noticeList() {

		var options = {};

		// 페이징할 기본 SIZE 기본값 10
		options.recordCountPerPage = 5;

		// 호출 URL
		options.url = "/on/oh/ohc/Brch/noticeList.do";

		// 파라메터
		options.paramData = {'brchNo' : '1372'};

		// 그리기
		options.successCallBack = function( data, textStatus, jqXHR ){

			var html = '';

			// 값이 없으면 소식 영역 삭제
			if (data.list == undefined || data.list.length == 0) {
				$('#brchNoti').remove();
				return;
			}

			// 내용 생성
			$.each(data.list, function(i, param) {
				var artiCn = "";
				//param.cls = (i==0)? 'on' : '';

				html += '<li>';
				html += '<div class="title ">';
				html += '	<a href="" title="'+ param.artiTitle +'">';
				html += '		<div class="cont-tit">'+ param.artiTitle   +'</div>';
				html += '		<p class="cont-admin">'+ param.cate2Nm     +'</p>';
				html += '		<p class="cont-date">' + param.fstRegDtStr +'</p>';
				html += '	</a>';
				html += '</div>';
				if(param.artiCn != null){
					artiCn = $.parseHTML(param.artiCn)[0].textContent
				}
				html += '<div class="content" style="display:none">'+ artiCn +'</div>';
				html += '</li>';
			});

			// 게시글 노출
			$('#tab01 .accordion-list ul').html(html);

			// 아코디언 이벤트 연결
			mbThToggle.init({target:'accordion-list'});
		};

		// page 이벤트 연결
		gfn_setPage(options);
	}

	// 상영시간표(Tab02) 조회
	function fn_callSchedule(playDe) {

		var paramData = {};
		var option    = {movieObj  : $('#tab02 > h2:last'), movieData : paramData}

		paramData.masterType = 'brch';
		paramData.brchNo     = '1372';
		paramData.brchNm     = '강남';

		MegaboxUtil.Brch.init(option);
	}

	// 관람료(Tab03) > 관람료 조회
	function fn_callPrice() {

		var paramData = {};
		var option    = {priceObj  : $('#tab03 > h2'), brchData : paramData}

		paramData.zoneAt  = 'Y';
		paramData.brchNo  = '1372';
		paramData.brchNm  = '강남';

		MegaboxUtil.Brch.init(option);
	}


	// 메타테그/네비게인션 설정
	function setMetaTagNNavi(index) {

		var tabNm = $('#contents .tab-layer a').eq(index).html();
		var title = tabNm + ' 페이지로 이동';

		var paramData = { 'scnTitle'     : '(강남)' + tabNm + ' > 전체극장 , 메가박스'
						, 'metaTagTitle' : '(강남)' + tabNm + ' > 전체극장 , 메가박스'
						, 'metaTagImg'   : 'http://image2.megabox.co.kr/mop/event.html/2018/6F/03D492-6FD4-485F-AE3F-2D3E2A41046F.jpg'};

		switch (index) {
		case 0 :
			paramData.metaTagUrl    = location.protocol + '//' + document.domain + '/theater?brchNo=1372';
			paramData.metaTagMenuId = 'ON00000038';
			paramData.metaTagDtls   = '반갑습니다. 메가박스 강남점 입니다.';
			break;
		case 1 :
			paramData.metaTagUrl    = location.protocol + '//' + document.domain + '/theater/time?brchNo=1372';
			paramData.metaTagMenuId = 'ON00000037';
			paramData.metaTagDtls   = '반갑습니다. 메가박스 강남점 입니다.';
			break;
		case 2 :
			paramData.metaTagUrl    = location.protocol + '//' + document.domain + '/theater/price?brchNo=1372';
			paramData.metaTagMenuId = 'ON00000039';
			paramData.metaTagDtls   = '메가박스 강남점의 관람료를 확인하세요.';
			break;
		}

		// 메타테그 설정
		settingMeta(paramData);

		// 네비게이션 설정
		$('#schdlContainer .location a:last').attr({'href': paramData.metaTagUrl.replace('&', ''), 'title' : title}).html(tabNm);

		// URL 주소 변경
		history.replaceState( null, null, paramData.metaTagUrl );
	}

</script>

		<div id="schdlContainer" class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="/theater/list" title="극장 페이지로 이동">극장</a>
						<a href="/theater/list" title="전체극장 페이지로 이동">전체극장</a> <a
							href="https://www.megabox.co.kr/theater/time?brchNo=1372"
							title="상영시간표 페이지로 이동">상영시간표</a>
					</div>
				</div>
			</div>

			<!-- contents -->
			<div id="contents" class="no-padding">

				<!-- theater-detail-page -->
				<div class="theater-detail-page">

					<div class="bg-img"
						style="background-image: url('/static/pc/images/theater/img-theater-detail.jpg');"></div>
					<div class="bg-pattern"></div>
					<div class="bg-mask"></div>

					<!-- theater-all -->
					<div class="theater-all">
						<!-- theater-area-list -->
						<div class="theater-area-list">
							<ul class="area-depth1">


								<li><a href="" class="depth1" title="서울 선택">서울</a>
									<div class="area-depth2">
										<ul>
											<li class="on"><a href="/theater?brchNo=1372"
												title="강남 상세보기">강남 </a></li>
										</ul>
									</div></li>


								<li><a href="" class="depth1" title="경기 선택">경기</a>
									<div class="area-depth2">
										<ul>
											<li><a href="/theater?brchNo=4121" title="고양스타필드 상세보기">고양스타필드
											</a></li>
										</ul>
									</div></li>


								<li><a href="" class="depth1" title="인천 선택">인천</a>
									<div class="area-depth2"></div></li>


								<li class=""><a href="" class="depth1" title="부산/대구/경상 선택">부산/대구/경상</a>
									<div class="area-depth2"></div></li>


								<li><a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
									<div class="area-depth2"></div></li>


								<li><a href="" class="depth1" title="강원 선택">강원</a>
									<div class="area-depth2"></div></li>

							</ul>
						</div>
						<!--// theater-area-list -->

						<p class="name">강남</p>

						<div class="btn-util right">
							<div class="block">
								<button type="button" class="btn btn-like " id="favorBrch">
									<i class="iconset ico-like-line"></i> <span>선호극장</span>
								</button>
							</div>
						</div>
					</div>
					<!--// theater-detail-cont -->
				</div>
				<!--// theater-detail-page -->

				<div class="inner-wrap pt40">

					<div class="tab-list fixed mb40 tab-layer">
						<ul>
							<li class=""><a href="#tab01" title="극장정보 탭으로 이동">극장정보</a></li>
							<li class="on"><a href="#tab02" title="상영시간표 탭으로 이동">상영시간표</a></li>
							<li><a href="#tab03" title="관람료 탭으로 이동">관람료</a></li>
						</ul>
					</div>

					<div class="tab-cont-wrap">
						<div id="tab01" class="tab-cont"></div>

						<div id="tab02" class="tab-cont on">
							<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
							<h2 class="tit small" style="display: none;">무대인사</h2>
							<div class="movie-greeting" style="display: none;"></div>
							<h2 class="tit small mt40">상영시간표</h2>
							<div class="time-schedule mb30">
								<div class="wrap">
									<button type="button" title="이전 날짜 보기" class="btn-pre"
										disabled="true">
										<i class="iconset ico-cld-pre"></i> <em>이전</em>
									</button>
									<div class="date-list">
										<div class="year-area">
											<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2022.08</div>
											<div class="year"
												style="left: 450px; z-index: 1; opacity: 0;"></div>
										</div>
										<div class="date-area">
											<div class="wrap"
												style="position: relative; width: 2100px; border: none; left: -70px;">
												<button class="disabled" type="button"
													date-data="2022.08.02" month="7" tabindex="-1">
													<span class="ir">2022년 8월</span><em
														style="pointer-events: none;">2<span
														style="pointer-events: none;" class="ir">일</span></em><span
														class="day-kr"
														style="pointer-events: none; display: inline-block">화</span><span
														class="day-en" style="pointer-events: none; display: none">Tue</span>
												</button>
												<button class="on" type="button" date-data="2022.08.03"
													month="7">
													<span class="ir">2022년 8월</span><em
														style="pointer-events: none;">3<span
														style="pointer-events: none;" class="ir">일</span></em><span
														class="day-kr"
														style="pointer-events: none; display: inline-block">오늘</span><span
														class="day-en" style="pointer-events: none; display: none">Wed</span>
												</button>
												<button class="" type="button" date-data="2022.08.04"
													month="7">
													<span class="ir">2022년 8월</span><em
														style="pointer-events: none;">4<span
														style="pointer-events: none;" class="ir">일</span></em><span
														class="day-kr"
														style="pointer-events: none; display: inline-block">내일</span><span
														class="day-en" style="pointer-events: none; display: none">Thu</span>
												</button>
												<button class="" type="button" date-data="2022.08.05"
													month="7">
													<span class="ir">2022년 8월</span><em
														style="pointer-events: none;">5<span
														style="pointer-events: none;" class="ir">일</span></em><span
														class="day-kr"
														style="pointer-events: none; display: inline-block">금</span><span
														class="day-en" style="pointer-events: none; display: none">Fri</span>
												</button>
											</div>
										</div>
									</div>
									<button type="button" title="다음 날짜 보기" class="btn-next">
										<i class="iconset ico-cld-next"></i> <em>다음</em>
									</button>
									<div class="bg-line">
										<input type="hidden" name="datePicker" id="dp1659502852974"
											class="hasDatepicker" value="2022.08.03">
										<button type="button" class="btn-calendar-large" title="달력보기">
											달력보기</button>
									</div>
								</div>
							</div>
							<div class="movie-option mb20">
								<div class="option">
									<ul>
										<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
										<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
										<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
										<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
										<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
										<li><i class="iconset ico-gv" title="GV"></i>GV</li>
										<li><i class="iconset ico-sun" title="조조"></i>조조</li>
										<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
										<li><i class="iconset ico-moon" title="심야"></i>심야</li>
									</ul>
								</div>
								<div class="rateing-lavel">
									<a href="" class="" title="관람등급안내">관람등급안내</a>
								</div>
							</div>
							<div class="reserve theater-list-box">
								<div class="tab-block tab-layer mb30" style="display: none;">
									<ul></ul>
								</div>
								<div class="theater-list">
									<div class="theater-tit">
										<p class="movie-grade age-12"></p>
										<p>
											<a href="/movie-detail?rpstMovieNo=21084100"
												title="비상선언 상세보기">비상선언</a>
										</p>
										<p class="infomation">
											<span>상영중</span>/상영시간 140분
										</p>
									</div>
									<div class="theater-type-box">
										<div class="theater-type">
											<p class="theater-name">1관</p>
											<p class="chair">총 232석</p>
										</div>
										<div class="theater-time">
											<div class="theater-type-area">2D</div>
											<div class="theater-time-box">
												<table class="time-list-table">
													<caption>상영시간을 보여주는 표 입니다.</caption>
													<colgroup>
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
														<col style="width: 99px;">
													</colgroup>
													<tbody>
														<tr>
															<td class="" brch-no="1372" play-schdl-no="2208031372008"
																rpst-movie-no="21084100" theab-no="01"
																play-de="20220803" play-seq="3">
																<div class="td-ab">
																	<div class="txt-center">
																		<a href="" title="영화예매하기">
																			<div class="ico-box">
																				<i class="iconset ico-off"></i>
																			</div>
																			<p class="time">15:10</p>
																			<p class="chair">201석</p>
																			<div class="play-time">
																				<p>15:10~17:41</p>
																				<p>3회차</p>
																			</div>
																		</a>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box-border v1 mt30">
								<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
								<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
							</div>
						</div>
						<div id="tab03" class="tab-cont">
							<a href="" class="ir"></a>
							<h2 class="tit small">영화관람료</h2>
						</div>
					</div>
				</div>
			</div>
			<!--// contents -->
		</div>
		<!--// container -->

		<!-- 		</div> -->

		<section id="saw_movie_regi" class="modal-layer">
			<a href="" class="focus">레이어로 포커스 이동 됨</a> <input type="hidden"
				id="isLogin" value="Y">
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">본 영화 등록</h3>
				</header>

				<div class="layer-con">
					<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

					<div class="pop-gray mt10 mb30">
						<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
							type="text" id="movie_regi" class="input-text w280px numType"
							maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
						<button class="button gray ml05" id="regBtn">등록</button>
					</div>

					<div class="box-border v1 mt30">
						<p class="tit-box">이용안내</p>

						<ul class="dot-list">
							<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
							<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를
								입력해주세요.(Yes24, 네이버, 인터파크, SKT, KT, 다음)
							</li>
							<li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
							<li>상영시간 종료 이후 등록 가능합니다.</li>
							<li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
						</ul>
					</div>
				</div>

				<div class="btn-group-fixed">
					<button type="button" class="button purple close-layer">닫기</button>
				</div>

				<button type="button" class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>

		<div class="quick-area" style="display: none;">
			<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
		</div>

		<c:import url="../footer.jsp" charEncoding="utf-8" />

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile" style="display: none;">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>
	<form id="mainForm"></form>

	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>