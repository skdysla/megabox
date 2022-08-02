<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko"><!--<![endif]--><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico">

    
	




		<title>영화별 상영시간표 &lt; 상영시간표 | MEET PLAY SHARE, 메가박스</title>
		<meta property="name" id="metaTagTitle" content="영화별상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스">
		<meta property="description" id="metaTagDtls" content="메가박스의 영화별 상영시간표를 알려드립니다.">
		<meta property="keywords" id="metaTagKeyword" content="">

		<meta property="fb:app_id" id="fbAppId" content="546913502790694">
		

		<meta property="og:site_name" id="fbSiteName" content="메가박스">
		<meta property="og:type" id="fbType" content="movie">
		<meta property="og:url" id="fbUrl" content="https://www.megabox.co.kr/booking/timetable">
		<meta property="og:title" id="fbTitle" content="영화별상영시간표 < 상영시간표 | MEET PLAY SHARE, 메가박스">
		<meta property="og:description" id="fbDtls" content="메가박스의 영화별 상영시간표를 알려드립니다.">
		<meta property="og:image" id="fbImg" content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg">
		


	
	
		
     		<link rel="stylesheet" href="/static/pc/dist/megabox.min.css" media="all">
     		<!-- Global site tag (gtag.js) - Google Analytics -->
			<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-LKZN3J8B1J&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
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
    </script><script src="/static/pc/js/ui.common.js?v=1659416914695"></script><script src="//cast.imp.joins.com/head/Y2e-o2Iq2tQOcSufIC0X_75Yb7tnP0NHifRh81cPxESEAM4qWzAZAbZkRmtWcXYtV1NZeWRhdWhxWVBtWXJBAstB2LiS06SLlQPLQdi4ktOki5U.js?url=https%3A%2F%2Fwww.megabox.co.kr%2Fbooking%2Ftimetable&amp;ref=https%3A%2F%2Fwww.megabox.co.kr%2Fbooking"></script><script src="/static/pc/js/front.js?v=1659416914695"></script>
</head>

<body>

    <div class="skip" title="스킵 네비게이션">
        <a href="#contents" title="본문 바로가기">본문 바로가기</a>
        <a href="#footer" title="푸터 바로가기">푸터 바로가기</a>
    </div>

    <div class="body-wrap">

       







<!--  ko_KR -->
        
<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
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
/*
window.fbAsyncInit = function() {
	FB.init({
    	appId            : '',
      	autoLogAppEvents : true,
      	xfbml            : true,
      	version          : ''
   });
};

var naverLogin = new naver.LoginWithNaverId({
	clientId: '',
	callbackUrl: location.href,
	isPopup: false,
	callbackHandle: false
	// callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다.
});
*/

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

// 		//아이디 생성규칙 확인
// 		if(!fn_validateInputVal("loginId" ,$("#ibxLoginId").val(), 'Y')) {
// 			$("#ibxLoginId").focus();
// 			return;
// 		}
// 		//패스워드 생성규칙확인
// 		if(!fn_validateInputVal("loginPwd",$("#ibxLoginPwd").val(), 'Y')) {
// 			$("#ibxLoginPwd").focus();
// 			return;
// 		}

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
// 		if (!/((?=.{8,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
// 		else if (/((?=.{8,})(?=.*[~!@#$%^&*+=-]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
		else{
			$('#error-text').text('');
			sValidateLoginIdAt = 'Y';
		}
	}
	else if(type == "loginPwd") { //패스워드
		if(sVal == ""){
			sValidateLoginPwdAt = 'N';
		}
// 		if (!/((?=.{10,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[~!@#$%^&*+=-])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[!@#$%^&*+=-])(?=.*[0-9]).*$)/g.test(sVal)) {
// 			$('#error-text').text('비밀번호는 영문,숫자,특수기호 중 2가지 이상 조합하여 10자리 이상 16자리 이하 입니다.');
// 			sValidateLoginPwdAt = 'N';
// 		}
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
	<input type="hidden" name="redisKey" value="">
	<input type="hidden" name="menuId" value="">
	<input type="hidden" name="mappingId" value="">
	<input type="hidden" name="rtnParam" value="">
	<input type="hidden" name="certType" value="">
	<input type="hidden" name="preUrl" value="">

	<!-- 좌석도 로그인 프로세스 여부PARAM-->
	<input type="hidden" name="bokdLoginAt" value="">
	<input type="hidden" name="bokdLoginParam" value="">

	<input type="hidden" name="nonMbCertRedisKey" value="">
	<input type="hidden" name="nonMbCertedMblpNo" value="">

	<input type="hidden" name="reloadYn" value="">
	<input type="hidden" name="validDataRevisnYn" value="N">

</form>







<!--  ko_KR -->
        
<!-- 로그인 레이어팝업 시작 -->
<!-- 화면ID  M-ME-LO-01 -->
<!-- 화면ID  M-ME-CC-01 -->
<div style="display:none;"><a id="loginPupupATag" href="#layer_login_select" class="button active btn-modal-open" w-data="850" h-data="484"></a></div>

	<section id="layer_login_select" class="modal-layer" style="z-index: 501;"><a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
		<div class="wrap" style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
			<header class="layer-header">
				<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 511px;">

				<div class="tab-list tab-layer">
					<ul>
						<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원 로그인<!--회원 로그인--></a></li>
						<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on"><a href="" class="ir"></a><a href="" class="ir" title="로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ibxLoginId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim"><!--아이디--><!--아이디를 입력하세요-->
										<input autocomplete="off" id="ibxLoginPwd" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15"><!--비밀번호--><!--비밀번호를 입력하세요-->
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="chkIdSave" type="checkbox"> <label for="chkIdSave">아이디 저장<!--아이디 저장--></label>
											</div>

											<div class="right">
												<div class="hp-ad">
										      <a href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1" title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰 간편로그인<!--휴대폰 간편로그인--></span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button" class="button purple large btn-login" disabled="disabled">로그인<!--로그인--></button>

										<div class="link">
											<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
											<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest" title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="javaScript:void(0)" lnkgty="FACEBOOK" title="페이스북으로 로그인 선택"><img src="../../../static/pc/images/member/ico-facebook.png" alt="페이스북"><!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgty="NAVER" title="네이버로 로그인 선택"><img src="../../../static/pc/images/member/ico-naver.png" alt="네이버"><!--네이버-->   네이버로 로그인<!--네이버로 로그인--></a>
											<a href="javaScript:void(0)" lnkgty="KAKAO" title="카카오톡으로 로그인 선택"><img src="../../../static/pc/images/member/ico-kakao.png" alt="카카오톡"><!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgty="PAYCO" title="페이코로 로그인 선택"><img src="../../../static/pc/images/member/ico-payco.png" alt="페이코"><!--페이코-->   페이코로 로그인<!--페이코로 로그인--></a>
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
					<div id="login_tab_02" class="tab-cont"><a href="" class="ir"></a><a href="" class="ir" title="비회원 로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">

									<div class="no-member-login-table">
										<table summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
											<caption>이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표--></caption>
											<colgroup>
												<col style="width:110px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">
														<label for="ibxNonMbNm">이름<!--이름--></label>
													</th>
													<td>
														<input maxlength="20" id="ibxNonMbNm" type="text" placeholder="이름" class="input-text"><!--이름-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
													</th>
													<td>
														<input maxlength="6" id="ibxNonMbByymmdd" type="text" placeholder="생년월일 앞6자리" class="input-text"><!--주민번호 앞 6자리-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
													</th>
													<td>
														<div class="hp-input">
															<input maxlength="11" id="ibxNonMbTelno" type="text" placeholder="- 없이 입력" class="input-text"><!--- 없이 입력-->
															<button id="nonMbCertNoSend" type="button" class="button gray" disabled="disabled">인증요청<!--인증요청--></button>
														</div>
														<div id="mblpInput-error-text" class="alert"></div>
													</td>
												</tr>
												<tr id="nonMbCertRow">
													<th scope="row">
														<label for="mblpCharCertNo">인증번호<!--인증번호--></label>
													</th>
													<td>
														<div class="chk-num">
															<div class="line">
																<input maxlength="4" id="mblpCharCertNo" type="text" class="input-text">

																<div class="time-limit" id="timer">
																	3:00
																</div>
															</div>

															<button id="btnMblpCharCert" type="button" class="button purple" disabled="disabled">확인<!--확인--></button>
														</div>
														<div id="nonMbCert-error-text" class="alert"></div>
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwd">비밀번호</label><!--비밀번호-->
													</th>
													<td>
														<input maxlength="4" id="ibxNonMbPwd" type="password" placeholder="비밀번호(숫자 4자리)" class="input-text"><!--비밀번호(숫자 4자리)-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
													</th>
													<td>
														<input maxlength="4" id="ibxNonMbPwdConfirm" type="password" placeholder="비밀번호(숫자 4자리) 확인" class="input-text"><!--비밀번호(숫자 4자리) 확인-->
														<div id="nonMbPwdErrText" class="alert"></div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col right">

									<div class="no-member-privacy-rule">
										<p class="tit">비회원예매 개인정보 처리방침<!--비회원예매 개인정보 처리방침--></p>

										<div class="cont">
											<dl>
												<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd class="ismsimp">관람 또는 취소 후 7일 이내</dd><!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
											</dl>

											<div class="btn-agree">
												<input type="radio" id="chkNonMbBokdPersonInfoProcTrue" name="chkNonMbBokdPersonInfoProc">
												<label for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label>

												<input type="radio" id="chkNonMbBokdPersonInfoProcFalse" name="chkNonMbBokdPersonInfoProc" class="ml20">
												<label for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
											</div>

											<ul class="dot-list gblue mt20">
												<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.--></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--// col-wrap -->

							<div class="btn-group">
								<button id="btnChkNonMbLogin" type="button" class="button purple" disabled="disabled">확인</button>
								<a id="aNonMbLogin" href="#layer_no_member_chk" class="button purple btn-modal-open" w-data="600" h-data="320" style="display: none;"></a>
							</div>
						</div>
					</div>
					<!--// tab 비회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close">레이어 닫기<!--레이어 닫기--></button>
		</div>
	</section>

	<section id="layer_no_member_chk" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">알림</h3>
			</header>

			<div class="layer-con">
				<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

				<div class="table-wrap v1">
					<table class="data-table" summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
						<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
						<colgroup>
							<col style="width:80px;">
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
				<button id="btnNonMbLogin" type="button" class="button purple small" disabled="disabled">확인</button>
			</div>

			<button id="btnNonMbModalClose" type="button" class="btn-modal-close">레이어 닫기</button>
		</div>
	</section>
<!--  ko_KR -->
        

<script type="text/javascript">
    $(function(){
        
            
                $('#header .right-link .before').show();
                $('#header .right-link .after').hide();
                //session 관련 처리를 위한 부분
                $.ajaxMegaBox({
                    url: '/sessionChk.do',
                    success: function(data) {
                        var loginYn = data.loginYn;
                        if(loginYn == 'Y'){
                            $('.right-link .before').hide();
                        $('.right-link .after').show();
                        }else{
                            $('.right-link .before').show();
                        $('.right-link .after').hide();
                        }
                     }
               });
            
            
        

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


<!-- header -->
<header id="header">
    <h1 class="ci"><a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>

	<!-- 브라우저 다운로드 -->
    

    <script type="text/javascript">
    $(function(){
	  	//닫기 버튼 클릭
		$('.ie-update').on('click', '.close-chk .closeDl', function() {
			 if ($(":checkbox[id='one_month_no_update']:checked").length > 0) {
				fn_setCookie("BROWDER_DL", "Y", 30);
			}

			$('.ie-update').hide();
		});

		//다시보지 않기
		 if (fn_getCookie("BROWDER_DL") == null || fn_getCookie("BROWDER_DL") == 'N') {
			if ( $(".lt-ie9").length > 0 && $('.ie-update').length > 0 ) {
				$('.ie-update').show();
			}
		}
    });
    </script>
	<!-- ie-update : ie 9 이하 일때만 출력 -->
	<div class="ie-update">
		<div class="dimd"></div>
		<div class="wrap">
			<p class="tit">
				<img src="../../../static/pc/images/ie/txt-update.png" alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!">
			</p>

			<div class="box">
				<div class="col">
					<p class="txt">브라우저를 최신 버전으로<br>업그레이드 해보세요!</p>

					<div class="link">
						<a href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx" title="internet explorer 새 버전 다운로드" target="_blank">
							<img src="../../../static/pc/images/ie/btn-ie.png" alt="internet explorer 새 버전 다운로드">
						</a>
					</div>

					<div class="link">
						<a href="http://www.google.com/chrome?hl=ko" title="chrome 다운로드" target="_blank">
							<img src="../../../static/pc/images/ie/btn-chrome.png" alt="chrome 다운로드">
						</a>
					</div>
				</div>

				<div class="col">
					<p class="txt">megabox 모바일 app을<br>이용해 보세요!</p>

					<div class="link">
						<a href="https://itunes.apple.com/us/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8" title="available on the app store" target="_blank">
							<img src="../../../static/pc/images/ie/btn-appstore.png" alt="available on the app store">
						</a>
					</div>

					<div class="link">
						<a href="https://play.google.com/store/apps/details?id=com.megabox.mop&amp;hl=ko" title="available on the google play" target="_blank">
							<img src="../../../static/pc/images/ie/btn-google.png" alt="available on the google play">
						</a>
					</div>
				</div>
			</div>

			<div class="close-chk">
				<input type="checkbox" id="one_month_no_update">
				<label for="one_month_no_update" class="ml05">한 달 동안 이 창을 열지 않음</label>

				<button type="button" class="closeDl button purple x-small ml20">닫기</button>
			</div>
		</div>
	</div>
	<!--// ie-update : ie 9 이하 일때만 출력 -->
    <!--// 브라우저 다운로드 -->

    <!-- topGnb -->
    



	<!-- 2019-04-15 마크업 수정 : 고객요청  -->
    <div class="util-area">
        <div class="left-link">
            <a href="/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="/benefit/membership" title="멤버십">멤버십</a>
            <a href="/support" title="고객센터">고객센터</a>
        </div>

        <div class="right-link">
            <!-- 로그인전 -->
            <div class="before" style="">
                <a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
                <a href="/join" title="회원가입">회원가입</a>
            </div>

            <!-- 로그인후 -->
            <div class="after" style="display:none">
                <a href="/on/oh/ohg/MbLogin/mbLogout.do" class="" title="로그아웃">로그아웃</a>
                <a href="" class="notice" title="알림">알림</a>

                <!-- layer-header-notice -->
				<div class="layer-header-notice">
					<div class="notice-wrap">
						<p class="tit-notice">알림함</p>

						<div class="count">
							<p class="left">전체 <em class="totalCnt">0</em> 건</p>

							<p class="right">* 최근 30일 내역만 노출됩니다.</p>
						</div>

						<!-- scroll -->
						<div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
							<ul class="list">
								<li class="no-list">
									알림 내역이 없습니다.
								</li>
							</ul>
						</div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
						<div class="notice-list-more">
							<button type="button" class="button btn-more-notice-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
						</div>
						<!--// scroll -->
						<button type="button" class="btn-close-header-notice">알림 닫기</button>
					</div>
					<!--// notice-wrap -->
				<!--// layer-header-notice -->
				</div>

            </div>

            <a href="/booking">빠른예매</a>
        </div>
    </div>
    <!--// 2019-04-15 마크업 수정 : 고객요청  -->

    <div class="link-area">
        <a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
        <a href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="#layer_mymega" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>

    <!-- gnb -->
    <!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->
    
    <nav id="gnb">
        <ul class="gnb-depth1">
            <li><a href="/movie" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/movie" title="전체영화">전체영화</a></li>


                        <li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>
                        
                        <li id="festivalArea" style="display: none;"><a href="/festival" title="영화제">영화제</a></li>
                        <li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="/booking" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/booking" title="빠른예매">빠른예매</a></li>
                        <li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
                        <li><a href="/booking/privatebooking" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="/theater/list" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/theater/list" title="전체극장">전체극장</a></li>
                        <li><a href="/specialtheater/list" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;" title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;" title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="/benefit/membership" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/benefit/membership" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <!--// gnb -->
    <script type="text/javascript">
        $(document).ready(function() {
            var filmCheck = MegaboxUtil.Common.moveMovieFilmCheckGnb(); // 영화제 존재여부 체크
            if(filmCheck == true){
                $("#festivalArea").show();
            }else{
                $("#festivalArea").hide();
            }
        });
    </script>
    <!--// topGnb -->

    <!-- 레이어 : 사이트맵 -->
    



	<div id="layer_sitemap" class="header-layer layer-sitemap">
        <!-- wrap -->
        <div class="wrap">
            <a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

            <p class="tit">SITEMAP</p>

            <div class="list position-1">
                <p class="tit-depth">영화</p>

                <ul class="list-depth">
                    <li><a href="/movie" title="전체영화">전체영화</a></li>
                    <li><a href="/curation/specialcontent" title="큐레이션">큐레이션</a></li>
                    <li><a href="javascript:void(0)" onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();" title="영화제">영화제</a></li>
                    <li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>

            <div class="list position-2">
                <p class="tit-depth">예매</p>

                <ul class="list-depth">
                    <li><a href="/booking" title="빠른예매">빠른예매</a></li>
                    <li><a href="/booking/timetable" title="상영시간표">상영시간표</a></li>
                    <li><a href="/booking/privatebooking" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
                    <!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
                </ul>
            </div>

            <div class="list position-3">
                <p class="tit-depth">극장</p>

                <ul class="list-depth">
                    <li><a href="/theater/list" title="전체극장">전체극장</a></li>
                    <li><a href="/specialtheater/list" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="list position-4">
                <p class="tit-depth">이벤트</p>

                <ul class="list-depth">
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;" title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;" title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>

            <div class="list position-5">
                <p class="tit-depth">스토어</p>

                <ul class="list-depth">
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" title="새로운 상품">새로운 상품</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;" title="메가티켓">메가티켓</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;" title="메가찬스">메가찬스</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;" title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
                    <!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="기프트카드">기프트카드</a></li> -->
                </ul>
            </div>
            <div class="list position-6">
                <p class="tit-depth">나의 메가박스</p>
                <ul class="list-depth mymage">
                	
            			
            				<li><a href="javascript:movePage('/mypage',						'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 메가박스 홈">나의 메가박스 홈</a></li>
		                    <li><a href="javascript:movePage('/mypage/bookinglist',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="예매/구매내역">예매/구매내역</a></li>
		                    <li><a href="javascript:movePage('/mypage/movie-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="영화관람권">영화관람권</a></li>
		                    <li><a href="javascript:movePage('/mypage/store-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="스토어교환권">스토어교환권</a></li>
		                    <li><a href="javascript:movePage('/mypage/discount-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
		                    
		                    <li><a href="javascript:movePage('/mypage/point-list',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="멤버십포인트">멤버십포인트</a></li>
		                    <li><a href="javascript:movePage('/mypage/moviestory',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 무비스토리">나의 무비스토리</a></li>
		                    <li><a href="javascript:movePage('/mypage/myevent',				'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
		                    <li><a href="javascript:movePage('/mypage/myinquiry',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 문의내역">나의 문의내역</a></li>
		                    <li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
		                    <li><a href="javascript:movePage('/on/oh/ohh/Mypage/mainPage.do?returnURL=info','로그인이 필요한 서비스 입니다.');" title="회원정보">회원정보</a></li>
            			
            			
            		
                </ul>
            </div>

            <div class="list position-7">
                <p class="tit-depth">혜택</p>

                <ul class="list-depth">
                    <li><a href="/benefit/membership" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="/benefit/viplounge" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>

            <div class="list position-8">
                <p class="tit-depth">고객센터</p>

                <ul class="list-depth">
                    <li><a href="/support" title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="/support/faq" title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="/support/notice" title="공지사항">공지사항</a></li>
                    <li><a href="/support/inquiry" title="1:1문의">1:1문의</a></li>
                    <li><a href="/support/rent" title="단체/대관문의">단체/대관문의</a></li>
                    <li><a href="/support/lost" title="분실물문의">분실물문의</a></li>
                </ul>
            </div>

            <div class="list position-9">
                <p class="tit-depth">회사소개</p>

                <ul class="list-depth">
                    <li><a href="/megaboxinfo" target="_blank" title="메가박스소개">메가박스소개</a></li>
                    <li><a href="/socialcontribution" target="_blank" title="사회공헌">사회공헌</a></li>
                    <li><a href="/advertize" target="_blank" title="홍보자료">홍보자료</a></li>
                    <li><a href="/partner" target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
                    <li><a href="/onlinereport" target="_blank" title="온라인제보센터">온라인제보센터</a></li>
                    <li><a href="/ir" target="_blank" title="자료">IR자료</a></li>
                    <li><a href="/recruit" target="_blank" title="인재채용림">인재채용</a></li>
                    <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영">윤리경영</a></li>
                </ul>
            </div>

            <div class="list position-10">
                <p class="tit-depth">이용정책</p>

                <ul class="list-depth">
                    <li><a href="/support/terms" title="이용약관">이용약관</a></li>
                    <li><a href="/support/lcinfo" title="위치기반서비스 이용약관">위치기반서비스 이용약관</a></li>
                    <li><a href="/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li>
                    <li><a href="/support/screenrule" title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
                </ul>
            </div>

            <div class="ir">
                <a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
            </div>
        </div>
        <!--// wrap -->
    </div>
    <!--// 레이어 : 사이트맵 -->

    <!-- 레이어 : 검색 -->
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
    <!--// 레이어 : 검색 -->

    <!-- 레이어 : 마이페이지 -->
    



	<div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

        <!-- wrap -->
        <div class="wrap" style="display:none">

            <div class="login-after">
                <div class="couponpass" style="display: none;">
                    <span>쿠폰패스 이용고객이시군요!!쿠폰패스로 발급된 쿠폰을 확인해보세요~ </span>
                </div>
                <div class="user-info">
                    <p class="txt">안녕하세요!</p>

                    <p class="info">
                        <!--
                            vip 일때만 출력
                            vip 아닐때는 태그 자체 삭제
                        -->
                       <em class="vip">VIP PREMIUM</em>
                        <em class="name"></em>
                        <span>회원님</span>
                    </p>

                    <div class="last-date">마지막 접속일 : <em></em></div>

                    <!-- vip, 멤버십 없을때는 미 출력  -->
                    <div class="membership">
                        <!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
                    </div>

                    <div class="btn-fixed">
                        <a href="/mypage" class="button" title="나의  메가박스">나의  메가박스</a>
                    </div>
                </div>

                <div class="box">
                    <div class="point">
                        <p class="tit">Point</p>

                        <p class="count">
                            0
                        </p>

                        <div class="btn-fixed">
                            <a href="/mypage/point-list" class="button" title="멤버십 포인트">멤버십 포인트</a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="coupon">
                        <p class="tit">쿠폰/관람권 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="count">
                            <em title="쿠폰 수" class="cpon">0</em>
                            <span title="관람권 수" class="movie">0</span>
                        </p>

                        <div class="btn-fixed">
                            <a href="/mypage/discount-coupon" class="button" title="쿠폰">쿠폰</a>
                            <a href="/mypage/movie-coupon" class="button" title="관람권">관람권</a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="reserve">
                        <p class="tit">예매 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="txt"></p>

                        <div class="btn-fixed">
                            <a href="/mypage/bookinglist" class="button" title="예매내역">예매내역 </a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="buy">
                        <p class="tit">구매 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="count">
                            <em>0</em>
                            <span>건</span>
                        </p>
                    </div>

                    <div class="btn-fixed">
                        <a href="/mypage/bookinglist?tab=02" class="button" title="구매내역">구매내역</a>
                    </div>
                </div>
            </div>

        	<!-- 로그인 전 -->
            <div class="login-before">
                <p class="txt">
                    로그인 하시면 나의 메가박스를 만날 수 있어요.<br>
                    영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!
                </p>

                <div class="mb50">
                    <a href="#layer_login_common" id="moveLogin" title="로그인" class="button w120px btn-modal-open" w-data="850" h-data="484">로그인</a>
                </div>

                <a href="/join" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
        </div>
        <!--// wrap -->

        <div class="ir">
            <a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
    <!--// 레이어 : 마이페이지 -->

</header>
<!--// header -->

<!-- 		<div id="bodyContent"> -->
        







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
<div id="bokdContainer" class="container" style="padding-bottom:200px; display:none">
<input type="hidden" id="playDe" name="playDe" value="">
    <div class="page-util fixed">
        <div class="inner-wrap">
            <div class="location"></div>

        </div>
    </div>

    <div id="bokdMSeat" style="overflow:hidden; display:none; height:736px;">
        <iframe id="frameBokdMSeat" src="/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?megaboxLanguage=kr" title="관람인원선택 프레임" scrolling="no" frameborder="0" class="reserve-iframe" style="width:100%; height:736px;"></iframe>
	</div>

    <div id="bokdMPayBooking" style="overflow:hidden; display:none; height:736px;">
       <iframe id="framePayBooking" src="/on/oh/ohz/PayBooking/completeSeat.do?megaboxLanguage=kr" title="예매 결제" scrolling="no" frameborder="0" class="reserve-iframe" style="width:100%; height:736px;"></iframe>
	</div>

</div>
<!--// container -->
<script src="/js/megabox-brch.js"></script>
<script src="/js/megabox-simpleBokd.js"></script>
<script src="/static/pc/js/jquery.mCustomScrollbar.concat.min.js"></script>

<script type="text/javascript">

	var arrList = new Array();
	var tmpData = {tabIndx : 0};
	var tabChangeAt = 'N';	//상영일 초기화 여부

	$(function(){

		$(document).ready(function() {
			areaList();
		});

		// 항목 클릭
		$('#contents').on('click', '.tab-left-area li', function() {
			tmpData.tabIndx = $('#contents .tab-left-area li').index(this);
			tabChangeAt = "Y";	//상영일 초기화 여부

			if ($('#contents .tab-area').eq(tmpData.tabIndx).find('button.on').length == 0) {
				$('#contents .tab-area').eq(tmpData.tabIndx).find('button:first').click();
			} else {
				$('#contents .tab-area').eq(tmpData.tabIndx).find('.tab-list-choice a.on').click();
			}

			fn_setMeta();
		});

		// 항목별 분류 클릭
		$('#contents').on('click', '.tab-list-choice li', function() {
			var idx = $('#contents .tab-list-choice li').index(this);

			if ($('.tab-layer-cont').eq(idx).find('button.on').length != 0) {
				$('.tab-layer-cont').eq(idx).find('button.on').click();
			}

			if (idx == 0 && $('.tab-layer-cont').eq(idx).find('button.on').length == 0) {
				$('.tab-layer-cont').eq(idx).find('button:first').click();
			}
		});

		// 영화명, 극장명 클릭
		$('#contents').on('click', '.list-section button', function() {
			var leftIdx = $('#contents .tab-left-area li.on').index();
			if(leftIdx > 0 && leftIdx < 3)	tabChangeAt = "Y";	//상영일 초기화 여부

			var $this = $(this);
			var paramData = {};
			var option    = {movieObj  : $('#contents h3:last'), list : arrList, movieData : paramData, tabChangeAt:tabChangeAt};

			// 상영 시간표명 변경
			$('#contents .font-green').html($this.text());

			// 영화별 - 영화 포스터 설정
			if (tmpData.tabIndx == 0) {
				var imgAttr = {src  : $this.data('imgPath'), alt : $this.data('movieNm')};
				var lnkAttr = {href : '/movie-detail?rpstMovieNo='+ $this.data('movieNo'), title : $.parseHTML(String($this.data('movieNm')))[0].textContent +' 상세보기'};

				$('div.poster-section div.td').html($('<a>').attr(lnkAttr));
				$('div.poster-section div.td a').html($('<img class="poster" onerror="noImg(this, \'del\')"/>').attr(imgAttr));
			}

			// 값 설정
			switch(tmpData.tabIndx) {
			case 0 : //영화별
				paramData.masterType  = 'movie';
				paramData.movieNo     = $this.data('movieNo');
				break;

			case 1 : //극장별
				paramData.masterType  = 'brch';
				paramData.detailType  = 'area';
				paramData.brchNo      = $this.data('brchNo');
				break;

			case 2 : //특별관
				paramData.masterType  = 'brch';
				paramData.detailType  = 'spcl';
				paramData.theabKindCd = $this.data('areaCd');
				paramData.brchNo      = $this.data('brchNo');
				break;
			}
			MegaboxUtil.Brch.init(option);
			tabChangeAt = "N";
		});
	});

	// 영화관 조회
	function areaList() {

		gfn_logdingModal();

		var paramData = { playDe : '20220802'};

		$.ajaxMegaBox({
			url    : '/on/oh/ohb/PlayTime/selectPlayTimeMasterList.do',
			data   : JSON.stringify(paramData),

			success: function (data, textStatus   , jqXHR) {
				fn_movieListUpt(data.movieList    , 'all' );
				fn_movieListUpt(data.crtnMovieList, 'crtn');
				fn_brchListUpt(data.areaBrchList  , 'area');
				fn_brchListUpt(data.spclbBrchList , 'spcl');

				$('#contents .tab-left-area li:first').click();

				gfn_logdingModal();
			}
		});
	}

	// 영화목록 갱신
	function fn_movieListUpt(list,type){

		var arr = [];
		var $button, $li;

		$.each(list, function(i, param) {

			// 클릭변경
			param.disabled = (param.formAt != 'Y')? 'disabled' : '';

			// 객체
			$button = $('<button type="button" class="btn '+ param.disabled +'">');
			arr.push($('<li>').html($button));

			// 영화이미지
			param.movieImgPath = 'https://img.megabox.co.kr' + nvl(param.movieImgPath).posterFormat('_316');

			// 버튼정보
			$button.attr({'data-movie-nm' : param.movieNm
						, 'data-movie-no' : param.movieNo
						, 'data-img-path' : param.movieImgPath}).html(param.movieNm);
		});

		switch(type) {
		case 'all' : $('#masterMovie_AllMovie  .list').html(arr); break;
		default    : $('#masterMovie_CrtnMovie .list').html(arr);
		}
	}

	// 극장정보 갱신
	function fn_brchListUpt(list, type){

		var $div, $li, areaCd;

		var areaList = [];
		var brchList = [];

		var html  = '<div class="theater-section">';
			html += '	<div class="table">';
			html += '		<div class="td">';
			html += '			<a href="#1" title="#2 특별관 페이지로 이동">';
			html += '				<p><strong>#2</strong>#3</p>';
			html += '				<i class="iconset ico-arrow-half"></i>';
			html += '				<img src="#4" alt="#2 특별관 페이지로 이동" class="poster">';
			html += '			</a>';
			html += '		</div>';
			html += '	</div>';
			html += '</div>';

		$.each(list, function(i, param) {

			if (areaCd != param.areaCd) {

				areaCd = param.areaCd;

				var titleTxt = "";
				if(type == 'spcl') {
					titleTxt ="특별관 선택";
				}
				else {
					titleTxt ="지점 선택";
				}

				// 객채 설정
				$li  = $('<li><a href="#tab'+areaCd+'" title="'+param.areaCdNm+titleTxt+'" data-area-cd="'+ areaCd +'">'+ param.areaCdNm +'</a></li>');
				$div = $('<div id="tab'+ areaCd +'" class="tab-layer-cont"><div class="scroll m-scroll"><ul class="list"></ul><div></div>');

				// 첫번째 객체
				if (i == 0) {
					$div.addClass('on');
					$li.find('a').addClass('on');
				}

				// 특별관여부
				if(type == 'spcl') {

					switch(areaCd) {

					case 'MX' :
						param.curAreaCdNm  = "MX";
						param.welComeHtml  = "진정한 영화 사운드를 통한<br />최고의 영화! <br />메가박스의 차세대 <br />표준 상영관";
						param.splcBrchLink = "/specialtheater/mx";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-mx.png';
						break;
					case 'CFT' :
						param.curAreaCdNm  = "COMFORT";
						param.welComeHtml  = "더욱 편안한 영화 관람을<br />위한 다양한 여유 공간";
						param.splcBrchLink = "/specialtheater/comfort";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-comfort.png';
						break;
					case 'TBQ' :
						param.curAreaCdNm  = "THE BOUTIQUE";
						param.welComeHtml  = "영화를 본다는 것,<br />그 놀라운 경험을 위하여";
						param.splcBrchLink = "/specialtheater/boutique";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-boutique.png';
						break;
					case 'MKB' :
						param.curAreaCdNm  = "MEGA KIDS";
						param.welComeHtml  = "아이와 가족이 함께 머물며<br />삶의 소중한 가치를 배우는<br />더 행복한 놀이공간";
						param.splcBrchLink = "/specialtheater/megakids";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-kids.png';
						break;
					case 'BCY' :
						param.curAreaCdNm  = "BALCONY";
						param.welComeHtml  = "CINEMA IN CINEMA,<br />영화관 속<br />나만의 개인 영화관";
						param.imgFileNm    = "balcony";
						param.splcBrchLink = "/specialtheater/balcony";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-balcony.png';
						break;
					case 'TFC' :
						param.curAreaCdNm  = "THE FIRST CLUB";
						param.welComeHtml  = "특별한 날,<br />특별한 당신을 위한<br />단 하나의<br />THE FIRST CLUB";
						param.splcBrchLink = "/specialtheater/firstclub";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-firstclub.png';
						break;
					case 'DBC' :
						param.curAreaCdNm  = "DOLBY";
						param.welComeHtml  = "국내 최초로 메가박스가 <br />선보이는 세계 최고 <br />기술력의 몰입 시네마";
						param.splcBrchLink = "/specialtheater/dolby";
						param.imgUrl       = 'https://img.megabox.co.kr/static/pc/images/reserve/img-theater-dolby.png';
						break;
					}

					// 특별관 이미지등록
					$div.append(html.replace('#1', param.splcBrchLink).replaceAll('#2', param.curAreaCdNm).replace('#3', param.welComeHtml).replace('#4', param.imgUrl));

				} else {
					arrList.push({areaCd : areaCd , areaNm : param.areaCdNm});
				}

				areaList.push($li);
				brchList.push($div);
			}

			// 극장추가
			$div.find('ul').append('<li><button type="button" class="btn" data-area-cd="'+ areaCd +'" data-brch-no="'+ param.brchNo +'">'+ param.brchNm +'</button></li>');

			// 극장상태 추가
			if (param.brchOnlineExpoAt == 'Y') {
				switch(param.brchOnlineExpoStatCd) {
				case 'OES01' : $div.find('button:last').append('&nbsp;<i class="iconset ico-theater-new"></i>'    ); break;
				case 'OES02' : $div.find('button:last').append('&nbsp;<i class="iconset ico-theater-renewal"></i>'); break;
				case 'OES03' : $div.find('button:last').append('&nbsp;<i class="iconset ico-theater-open"></i>'   ); break;
				case 'OES04' : $div.find('button:last').append('&nbsp;<i class="iconset ico-theater-open"></i>'   ); break;
				}
			}
		});

		// 극장 갯수 설정
		$.each(areaList, function(i, data) {
			data.find('a').append('('+ brchList[i].find('li').length +')');
		});

		switch(type) {
		case 'area' :
			$('#masterBrch .list-section').html(brchList);
			$('#masterBrch .tab-list-choice ul').html(areaList);
			break;
		default     :
			$('#masterSpclBrch .list-section').html(brchList);
			$('#masterSpclBrch .tab-list-choice ul').html(areaList);
			$('div.m-scroll').mCustomScrollbar();	//스크롤 기능 추가
		}
	}

</script>

<div id="schdlContainer" class="container">
	<input type="hidden" id="playDe" name="playDe" value="">
	<div class="page-util fixed">
		<div class="inner-wrap">
			<div class="location">
				<span>Home</span>
				<a href="/booking" title="예매 페이지로 이동">예매</a>
				<a href="/booking/timetable" title="상영시간표 페이지로 이동">상영시간표</a>
			</div>
			
		</div>
	</div>

	<div id="contents" class="location-fixed">
		<div class="inner-wrap">
			<div class="time-table-page">
				<div class="movie-choice-area">
					<div class="tab-left-area">
						<ul>
							<li class="on"><a href="#masterMovie" title="영화별 선택" class="btn"><i class="iconset ico-tab-movie"></i> 영화별</a></li>
							<li><a href="#masterBrch" title="극장별 선택" class="btn"><i class="iconset ico-tab-theater"></i> 극장별</a></li>
							<li><a href="#masterSpclBrch" title="특별관 선택" class="btn"><i class="iconset ico-tab-special"></i> 특별관</a></li>
						</ul>
					</div>

					<div class="ltab-layer-wrap">
						<div id="masterMovie" class="ltab-layer-cont has-img on"><a href="" class="ir"></a>
							<div class="wrap tab-area">
								<div class="tab-list-choice">
									<ul>
										<li><a href="#masterMovie_AllMovie" title="전체영화 선택" class="btn on">전체영화</a></li>
										<li><a href="#masterMovie_CrtnMovie" title="큐레이션 선택" class="btn">큐레이션</a></li>
									</ul>
								</div>
								<div class="list-section">
									<div id="masterMovie_AllMovie" class="tab-layer-cont on"><a href="" class="ir"></a>
										<div class="scroll m-scroll mCustomScrollbar _mCS_2"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
											<ul class="list"><li><button type="button" class="btn disabled on" data-movie-nm="비상선언" data-movie-no="21084100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/18/QrXStxq2NTGaeHPaAK5xxOXsarNj2aJd_316.jpg">비상선언</button></li><li><button type="button" class="btn" data-movie-nm="한산: 용의 출현" data-movie-no="22023000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/28/1ogGcWYxCNJ9MTnizlZLdZ6REjg6xX1z_316.jpg">한산: 용의 출현</button></li><li><button type="button" class="btn" data-movie-nm="탑건: 매버릭" data-movie-no="22018400" data-img-path="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_316.jpg">탑건: 매버릭</button></li><li><button type="button" class="btn disabled" data-movie-nm="헌트" data-movie-no="22037300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/26/NVV1sJ39un40HMIwi8fY54YpXhzqBG36_316.jpg">헌트</button></li><li><button type="button" class="btn" data-movie-nm="미니언즈2" data-movie-no="21020400" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/20/0v4Yp5q079dJPP0Eqt0JExH8qkl7bMks_316.jpg">미니언즈2</button></li><li><button type="button" class="btn" data-movie-nm="뽀로로 극장판 드래곤캐슬 대모험" data-movie-no="22032900" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/22/5AD7x9UrE4Ru8xuAR7Hb5BEKoA2IGFzZ_316.jpg">뽀로로 극장판 드래곤캐슬 대모험</button></li><li><button type="button" class="btn disabled" data-movie-nm="DC 리그 오브 슈퍼-펫" data-movie-no="22040600" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/5QmiMH2KZOYaIru5mEZcihFW40XhkvCq_316.jpg">DC 리그 오브 슈퍼-펫</button></li><li><button type="button" class="btn disabled" data-movie-nm="[라이브뷰잉] SEVENTEEN WORLD TOUR [BE THE SUN] - HOUSTON" data-movie-no="22044900" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/20/kmtuWxlJyg3OiWoucPlAeIu6yFcfAuzy_316.jpg">[라이브뷰잉] SEVENTEEN WORLD TOUR [BE THE SUN] - HOUSTON</button></li><li><button type="button" class="btn" data-movie-nm="외계+인 1부" data-movie-no="22034600" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/15/k9yRSehUQSb98QZKnz7MJ5riaOJ8NTHE_316.jpg">외계+인 1부</button></li><li><button type="button" class="btn" data-movie-nm="헤어질 결심" data-movie-no="22022900" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/07/S3GJQZbpshoIx0Lelerscl9rlI14FHqK_316.jpg">헤어질 결심</button></li><li><button type="button" class="btn" data-movie-nm="엘비스" data-movie-no="22029600" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/04/wo9hN6dpVFiZHp4d3MpGmPEGTC0CE2yt_316.jpg">엘비스</button></li><li><button type="button" class="btn" data-movie-nm="명탐정 코난: 할로윈의 신부" data-movie-no="22035000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/01/8rQ7apqkUoMo3JE2D5XY3DgAcd4PovW1_316.jpg">명탐정 코난: 할로윈의 신부</button></li><li><button type="button" class="btn" data-movie-nm="프리! 더 파이널 스트로크 후편" data-movie-no="22030100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/22/J4AfSbvwKUciwVWrxyln4Z7K1hMMfZv7_316.jpg">프리! 더 파이널 스트로크 후편</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 시네도슨트] 오르세 미술관 " data-movie-no="22035700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/21/atGgAYynEtbhEFYGr1rlHN1kNsVtt4Od_316.jpg">[2022 시네도슨트] 오르세 미술관 </button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 시네도슨트] 메트로폴리탄 미술관" data-movie-no="22040400" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/07/LKqgCSfHArzl5unuMEfKeD0RWG4q0sOf_316.jpg">[2022 시네도슨트] 메트로폴리탄 미술관</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 잘츠부르크 페스티벌] 마술피리" data-movie-no="22041200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/12/xpga1NHRkVBkslcHR9fxphJYBfGuNHtj_316.jpg">[2022 잘츠부르크 페스티벌] 마술피리</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 잘츠부르크 페스티벌] 바렌보임&amp;amp;랑랑 콘서트" data-movie-no="22041100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/14/1N8vnm63MaKUhBoFYLsW3Rm2hGkEcrFr_316.jpg">[2022 잘츠부르크 페스티벌] 바렌보임&amp;랑랑 콘서트</button></li><li><button type="button" class="btn disabled" data-movie-nm="극장판 도라에몽: 진구의 우주소전쟁 리틀스타워즈 2021" data-movie-no="22040800" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/26/v5cHH4BkOyirlKb4qIxThs3XQBUnpzQz_316.jpg">극장판 도라에몽: 진구의 우주소전쟁 리틀스타워즈 2021</button></li><li><button type="button" class="btn" data-movie-nm="토르: 러브 앤 썬더" data-movie-no="22028200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/06/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_316.jpg">토르: 러브 앤 썬더</button></li><li><button type="button" class="btn" data-movie-nm="극장판 주술회전 0" data-movie-no="22001100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/02/17/djm7aYuL9bQGZRsxyUH75wATz9ub9ouk_316.jpg">극장판 주술회전 0</button></li><li><button type="button" class="btn" data-movie-nm="[오페라] 투란도트 @The Met" data-movie-no="22045000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/20/0MpvTj5AFFSmZLdyBHxxbZOkFKWVHpTy_316.jpg">[오페라] 투란도트 @The Met</button></li><li><button type="button" class="btn" data-movie-nm="썸머 필름을 타고!" data-movie-no="22033100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/27/t9AbCzKv1Syik1E15VKybp45tEwWr73a_316.jpg">썸머 필름을 타고!</button></li><li><button type="button" class="btn disabled" data-movie-nm="베르히만 아일랜드" data-movie-no="22038200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/18/6vM6q9YWXcIIfGZuV2hozQT1XNqJs5Tz_316.jpg">베르히만 아일랜드</button></li><li><button type="button" class="btn disabled" data-movie-nm="[턴즈] MINI 팬미팅 앵콜" data-movie-no="22040500" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/jPwJnI5OZzFhDEFkXV7KhOEX9p1PRHq7_316.png">[턴즈] MINI 팬미팅 앵콜</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 베로나 오페라 페스티벌] 카르멘" data-movie-no="22041300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/14/9SPOCeQZ187TSpiMTot7Kd6EeL5hTaLc_316.jpg">[2022 베로나 오페라 페스티벌] 카르멘</button></li><li><button type="button" class="btn disabled" data-movie-nm="문호 스트레이독스 [데드 애플]" data-movie-no="22044700" data-img-path="https://img.megabox.co.kr">문호 스트레이독스 [데드 애플]</button></li><li><button type="button" class="btn" data-movie-nm="범죄도시 2" data-movie-no="22018700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/05/23/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_316.jpg">범죄도시 2</button></li><li><button type="button" class="btn disabled" data-movie-nm="스위티" data-movie-no="22045800" data-img-path="https://img.megabox.co.kr">스위티</button></li><li><button type="button" class="btn disabled" data-movie-nm="큐어" data-movie-no="22024700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/17/mclVT1DbPWwAJtmr0YkIx0PNmr8ActLU_316.jpg">큐어</button></li><li><button type="button" class="btn" data-movie-nm="로스트 도터" data-movie-no="22033200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/15/O3mxQblVEa4nbd8uq46Ovc8YGj6gik2g_316.jpg">로스트 도터</button></li><li><button type="button" class="btn disabled" data-movie-nm="보일링 포인트" data-movie-no="22036000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/26/el7UkVkHv3gYlvHNbnD1QMr9SpvOiKOo_316.jpg">보일링 포인트</button></li><li><button type="button" class="btn" data-movie-nm="임파서블 러브" data-movie-no="22038300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/qmRRGbdSJCHEkhvDXWk4FwkZpM4HbMh1_316.jpg">임파서블 러브</button></li><li><button type="button" class="btn disabled" data-movie-nm="체리마호: 30살까지 동정이면 마법사가 될 수 있대" data-movie-no="22040000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/06/L38kyhg3noYOnYmUJaUkRUVe42P8yW3D_316.jpg">체리마호: 30살까지 동정이면 마법사가 될 수 있대</button></li><li><button type="button" class="btn" data-movie-nm="아이 엠 러브" data-movie-no="01409400" data-img-path="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/54/9EEB7D-86F4-4BD9-9039-602ED6C1720E.medium.jpg">아이 엠 러브</button></li><li><button type="button" class="btn" data-movie-nm="대중문화 퀴어링하기" data-movie-no="22045700" data-img-path="https://img.megabox.co.kr">대중문화 퀴어링하기</button></li><li><button type="button" class="btn disabled" data-movie-nm="컴온 컴온" data-movie-no="22026600" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/17/fhnPYYZ3ySD9JkRtOPhaacgRGPMnPMty_316.jpg">컴온 컴온</button></li><li><button type="button" class="btn disabled" data-movie-nm="아마추어" data-movie-no="22045900" data-img-path="https://img.megabox.co.kr">아마추어</button></li><li><button type="button" class="btn" data-movie-nm="마녀&amp;#40;魔女&amp;#41; Part2. The Other One" data-movie-no="22027700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/17/UiVCdL9H7i6emWkAoFo6k0pWOx4UaxzD_316.jpg">마녀(魔女) Part2. The Other One</button></li><li><button type="button" class="btn disabled" data-movie-nm="애니멀" data-movie-no="22046000" data-img-path="https://img.megabox.co.kr">애니멀</button></li><li><button type="button" class="btn disabled" data-movie-nm="퀴어 지니어스" data-movie-no="22046100" data-img-path="https://img.megabox.co.kr">퀴어 지니어스</button></li><li><button type="button" class="btn" data-movie-nm="배드 럭 뱅잉" data-movie-no="22026500" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/27/S3mimrlOiDF7nk8FJNGrGdlCRHhN4tCq_316.jpg">배드 럭 뱅잉</button></li><li><button type="button" class="btn" data-movie-nm="초록밤" data-movie-no="22037700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/spJ8gwJfmTnvLELCqJQHJJwgnULpjpxn_316.jpg">초록밤</button></li><li><button type="button" class="btn disabled" data-movie-nm="메타모르포제의 툇마루" data-movie-no="22040300" data-img-path="https://img.megabox.co.kr">메타모르포제의 툇마루</button></li><li><button type="button" class="btn" data-movie-nm="궁지에 몰린 쥐는 치즈 꿈을 꾼다" data-movie-no="22040100" data-img-path="https://img.megabox.co.kr">궁지에 몰린 쥐는 치즈 꿈을 꾼다</button></li><li><button type="button" class="btn disabled" data-movie-nm="그녀가 좋아하는 것은" data-movie-no="22040200" data-img-path="https://img.megabox.co.kr">그녀가 좋아하는 것은</button></li><li><button type="button" class="btn disabled" data-movie-nm="멘" data-movie-no="22035800" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/ARd80QbA9zrJ03pR2vV2A7u7MeVUo9oL_316.jpg">멘</button></li><li><button type="button" class="btn" data-movie-nm="아이를 위한 아이" data-movie-no="22035300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/24/DYeRRi3nf8OX4kFFbH3EYaajciq5PaS8_316.jpg">아이를 위한 아이</button></li><li><button type="button" class="btn" data-movie-nm="군다" data-movie-no="22037500" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/28/cJVjjcotKBGg3mw5LHxanYYmjsUfVDzx_316.jpg">군다</button></li><li><button type="button" class="btn disabled" data-movie-nm="모어" data-movie-no="22028100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/08/dUp6K7PFQyEXFEr7Elxj5QczdiQKZP0v_316.jpg">모어</button></li></ul>
										</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 87px; max-height: 190px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
									</div>
									<div id="masterMovie_CrtnMovie" class="tab-layer-cont"><a href="" class="ir"></a>
										<div class="scroll m-scroll mCustomScrollbar _mCS_3 mCS_no_scrollbar"><div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_3_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
											<ul class="list"><li><button type="button" class="btn disabled" data-movie-nm="[2022 시네도슨트] 오르세 미술관 " data-movie-no="22035700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/21/atGgAYynEtbhEFYGr1rlHN1kNsVtt4Od_316.jpg">[2022 시네도슨트] 오르세 미술관 </button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 시네도슨트] 메트로폴리탄 미술관" data-movie-no="22040400" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/07/LKqgCSfHArzl5unuMEfKeD0RWG4q0sOf_316.jpg">[2022 시네도슨트] 메트로폴리탄 미술관</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 잘츠부르크 페스티벌] 마술피리" data-movie-no="22041200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/12/xpga1NHRkVBkslcHR9fxphJYBfGuNHtj_316.jpg">[2022 잘츠부르크 페스티벌] 마술피리</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 잘츠부르크 페스티벌] 바렌보임&amp;amp;랑랑 콘서트" data-movie-no="22041100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/14/1N8vnm63MaKUhBoFYLsW3Rm2hGkEcrFr_316.jpg">[2022 잘츠부르크 페스티벌] 바렌보임&amp;랑랑 콘서트</button></li><li><button type="button" class="btn " data-movie-nm="[오페라] 투란도트 @The Met" data-movie-no="22045000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/20/0MpvTj5AFFSmZLdyBHxxbZOkFKWVHpTy_316.jpg">[오페라] 투란도트 @The Met</button></li><li><button type="button" class="btn " data-movie-nm="썸머 필름을 타고!" data-movie-no="22033100" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/27/t9AbCzKv1Syik1E15VKybp45tEwWr73a_316.jpg">썸머 필름을 타고!</button></li><li><button type="button" class="btn disabled" data-movie-nm="베르히만 아일랜드" data-movie-no="22038200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/18/6vM6q9YWXcIIfGZuV2hozQT1XNqJs5Tz_316.jpg">베르히만 아일랜드</button></li><li><button type="button" class="btn disabled" data-movie-nm="[2022 베로나 오페라 페스티벌] 카르멘" data-movie-no="22041300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/14/9SPOCeQZ187TSpiMTot7Kd6EeL5hTaLc_316.jpg">[2022 베로나 오페라 페스티벌] 카르멘</button></li><li><button type="button" class="btn disabled" data-movie-nm="큐어" data-movie-no="22024700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/17/mclVT1DbPWwAJtmr0YkIx0PNmr8ActLU_316.jpg">큐어</button></li><li><button type="button" class="btn " data-movie-nm="로스트 도터" data-movie-no="22033200" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/15/O3mxQblVEa4nbd8uq46Ovc8YGj6gik2g_316.jpg">로스트 도터</button></li><li><button type="button" class="btn disabled" data-movie-nm="보일링 포인트" data-movie-no="22036000" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/26/el7UkVkHv3gYlvHNbnD1QMr9SpvOiKOo_316.jpg">보일링 포인트</button></li><li><button type="button" class="btn " data-movie-nm="임파서블 러브" data-movie-no="22038300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/qmRRGbdSJCHEkhvDXWk4FwkZpM4HbMh1_316.jpg">임파서블 러브</button></li><li><button type="button" class="btn disabled" data-movie-nm="컴온 컴온" data-movie-no="22026600" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/17/fhnPYYZ3ySD9JkRtOPhaacgRGPMnPMty_316.jpg">컴온 컴온</button></li><li><button type="button" class="btn " data-movie-nm="배드 럭 뱅잉" data-movie-no="22026500" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/27/S3mimrlOiDF7nk8FJNGrGdlCRHhN4tCq_316.jpg">배드 럭 뱅잉</button></li><li><button type="button" class="btn " data-movie-nm="초록밤" data-movie-no="22037700" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/spJ8gwJfmTnvLELCqJQHJJwgnULpjpxn_316.jpg">초록밤</button></li><li><button type="button" class="btn disabled" data-movie-nm="멘" data-movie-no="22035800" data-img-path="https://img.megabox.co.kr/SharedImg/2022/07/11/ARd80QbA9zrJ03pR2vV2A7u7MeVUo9oL_316.jpg">멘</button></li><li><button type="button" class="btn " data-movie-nm="아이를 위한 아이" data-movie-no="22035300" data-img-path="https://img.megabox.co.kr/SharedImg/2022/06/24/DYeRRi3nf8OX4kFFbH3EYaajciq5PaS8_316.jpg">아이를 위한 아이</button></li></ul>
										</div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
									</div>
								</div>
							</div>
							<div class="poster-section">
								<div class="table">
									<div class="td"><a href="/movie-detail?rpstMovieNo=21084100" title="비상선언 상세보기"><img class="poster" onerror="noImg(this, 'del')" src="https://img.megabox.co.kr/SharedImg/2022/07/18/QrXStxq2NTGaeHPaAK5xxOXsarNj2aJd_316.jpg" alt="비상선언"></a></div>
								</div>
							</div>
						</div>

						<div id="masterBrch" class="ltab-layer-cont"><a href="" class="ir"></a>
							<div class="wrap tab-area">
								<div class="tab-list-choice">
									<ul><li><a href="#tab10" title="서울지점 선택" data-area-cd="10" class="on">서울(19)</a></li><li><a href="#tab30" title="경기지점 선택" data-area-cd="30">경기(31)</a></li><li><a href="#tab35" title="인천지점 선택" data-area-cd="35">인천(5)</a></li><li><a href="#tab45" title="대전/충청/세종지점 선택" data-area-cd="45">대전/충청/세종(17)</a></li><li><a href="#tab55" title="부산/대구/경상지점 선택" data-area-cd="55">부산/대구/경상(22)</a></li><li><a href="#tab65" title="광주/전라지점 선택" data-area-cd="65">광주/전라(9)</a></li><li><a href="#tab70" title="강원지점 선택" data-area-cd="70">강원(5)</a></li></ul>
								</div>
								<div class="list-section"><div id="tab10" class="tab-layer-cont on"><div class="scroll m-scroll mCustomScrollbar _mCS_4 mCS_no_scrollbar"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1372">강남</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="0023">강남대로(씨티)</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1341">강동</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1431">군자</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1003">동대문</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1572">마곡</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1581">목동</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1311">상봉</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1211">상암월드컵경기장</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1331">성수</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1371">센트럴</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1381">송파파크하비오</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1202">신촌</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1561">이수</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1321">창동</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1351">코엑스</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1212">홍대</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1571">화곡</button></li><li><button type="button" class="btn" data-area-cd="10" data-brch-no="1562">ARTNINE</button></li></ul><div></div></div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab30" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_5 mCS_no_scrollbar"><div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4121">고양스타필드</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0029">광명AK플라자</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0034">광명소하</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0035">금정AK플라자&nbsp;<i class="iconset ico-theater-new"></i></button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4152">김포한강신도시</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4721">남양주</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0019">남양주현대아울렛 스페이스원</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4451">동탄</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4652">미사강변</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4113">백석</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4722">별내</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4221">부천스타필드시티</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4631">분당</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0030">수원</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4421">수원남문</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4291">시흥배곧</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4253">안산중앙</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0020">안성스타필드</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4821">양주</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4431">영통</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0012">용인기흥</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4462">용인테크노밸리</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4804">의정부민락</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4111">일산</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4104">일산벨라시타</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4112">킨텍스</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4132">파주금촌</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4115">파주운정</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4131">파주출판도시</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="4651">하남스타필드</button></li><li><button type="button" class="btn" data-area-cd="30" data-brch-no="0036">호매실</button></li></ul><div></div></div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab35" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_6 mCS_no_scrollbar"><div id="mCSB_6" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_6_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="35" data-brch-no="4041">검단</button></li><li><button type="button" class="btn" data-area-cd="35" data-brch-no="4062">송도</button></li><li><button type="button" class="btn" data-area-cd="35" data-brch-no="4001">영종</button></li><li><button type="button" class="btn" data-area-cd="35" data-brch-no="4051">인천논현</button></li><li><button type="button" class="btn" data-area-cd="35" data-brch-no="0027">청라지젤</button></li></ul><div></div></div><div id="mCSB_6_scrollbar_vertical" class="mCSB_scrollTools mCSB_6_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_6_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab45" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_7 mCS_no_scrollbar"><div id="mCSB_7" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_7_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3141">공주</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0018">논산</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3021">대전</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0028">대전신세계 아트앤사이언스</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0009">대전유성</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3011">대전중앙로</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0017">대전현대아울렛</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3391">세종(조치원)</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3392">세종나성</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0008">세종청사</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3631">오창</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3901">제천</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3651">진천</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3301">천안</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="0013">청주사창</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3801">충주</button></li><li><button type="button" class="btn" data-area-cd="45" data-brch-no="3501">홍성내포</button></li></ul><div></div></div><div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab55" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_8 mCS_no_scrollbar"><div id="mCSB_8" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_8_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7602">경북도청</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7122">경산하양</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7303">구미강동</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7401">김천</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7901">남포항</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7011">대구신세계(동대구)</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="0022">대구이시아</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6161">덕천</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6312">마산</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="7451">문경</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6001">부산극장</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6906">부산대</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="0025">북대구(칠곡)</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="0032">사상</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6642">삼천포</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6261">양산</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6262">양산라피에스타</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6811">울산</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6191">정관</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6421">창원</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="0014">창원내서</button></li><li><button type="button" class="btn" data-area-cd="55" data-brch-no="6121">해운대(장산)</button></li></ul><div></div></div><div id="mCSB_8_scrollbar_vertical" class="mCSB_scrollTools mCSB_8_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_8_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab65" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_9 mCS_no_scrollbar"><div id="mCSB_9" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_9_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5021">광주상무</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5061">광주하남</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5302">목포하당(포르모)</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5612">송천</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5401">순천</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5552">여수웅천</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="0010">전대(광주)</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="0021">전주혁신</button></li><li><button type="button" class="btn" data-area-cd="65" data-brch-no="5064">첨단</button></li></ul><div></div></div><div id="mCSB_9_scrollbar_vertical" class="mCSB_scrollTools mCSB_9_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_9_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div><div id="tab70" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_10 mCS_no_scrollbar"><div id="mCSB_10" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_10_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="70" data-brch-no="2001">남춘천</button></li><li><button type="button" class="btn" data-area-cd="70" data-brch-no="2171">속초</button></li><li><button type="button" class="btn" data-area-cd="70" data-brch-no="2201">원주</button></li><li><button type="button" class="btn" data-area-cd="70" data-brch-no="2202">원주센트럴</button></li><li><button type="button" class="btn" data-area-cd="70" data-brch-no="0037">춘천석사</button></li></ul><div></div></div><div id="mCSB_10_scrollbar_vertical" class="mCSB_scrollTools mCSB_10_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_10_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></div>
							</div>
						</div>

						<div id="masterSpclBrch" class="ltab-layer-cont has-img"><a href="" class="ir"></a>
							<div class="wrap tab-area">
								<div class="tab-list-choice">
									<ul><li><a href="#tabDBC" title="DOLBY CINEMA특별관 선택" data-area-cd="DBC" class="on">DOLBY CINEMA(5)</a></li><li><a href="#tabTBQ" title="THE BOUTIQUE특별관 선택" data-area-cd="TBQ">THE BOUTIQUE(8)</a></li><li><a href="#tabMX" title="MX특별관 선택" data-area-cd="MX">MX(8)</a></li><li><a href="#tabCFT" title="COMFORT특별관 선택" data-area-cd="CFT">COMFORT(40)</a></li><li><a href="#tabPTC" title="PUPPY CINEMA특별관 선택" data-area-cd="PTC">PUPPY CINEMA(1)</a></li><li><a href="#tabMKB" title="MEGABOX KIDS특별관 선택" data-area-cd="MKB">MEGABOX KIDS(3)</a></li></ul>
								</div>
								<div class="list-section"><div id="tabDBC" class="tab-layer-cont on"><div class="scroll m-scroll mCustomScrollbar _mCS_11 mCS_no_scrollbar"><div id="mCSB_11" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_11_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="DBC" data-brch-no="0019">남양주현대아울렛 스페이스원</button></li><li><button type="button" class="btn" data-area-cd="DBC" data-brch-no="7011">대구신세계(동대구)</button></li><li><button type="button" class="btn" data-area-cd="DBC" data-brch-no="0028">대전신세계 아트앤사이언스</button></li><li><button type="button" class="btn" data-area-cd="DBC" data-brch-no="0020">안성스타필드</button></li><li><button type="button" class="btn" data-area-cd="DBC" data-brch-no="1351">코엑스</button></li></ul><div></div></div><div id="mCSB_11_scrollbar_vertical" class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_11_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="/specialtheater/dolby" title="DOLBY 특별관 페이지로 이동">				<p><strong>DOLBY</strong>국내 최초로 메가박스가 <br>선보이는 세계 최고 <br>기술력의 몰입 시네마</p>				<i class="iconset ico-arrow-half"></i>				<img src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-dolby.png" alt="DOLBY 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div><div id="tabTBQ" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_12 mCS_no_scrollbar"><div id="mCSB_12" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_12_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="0028">대전신세계 아트앤사이언스</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="4631">분당</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="1331">성수</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="1371">센트럴</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="4104">일산벨라시타</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="1351">코엑스</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="4112">킨텍스</button></li><li><button type="button" class="btn" data-area-cd="TBQ" data-brch-no="4651">하남스타필드</button></li></ul><div></div></div><div id="mCSB_12_scrollbar_vertical" class="mCSB_scrollTools mCSB_12_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_12_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="/specialtheater/boutique" title="THE BOUTIQUE 특별관 페이지로 이동">				<p><strong>THE BOUTIQUE</strong>영화를 본다는 것,<br>그 놀라운 경험을 위하여</p>				<i class="iconset ico-arrow-half"></i>				<img src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-boutique.png" alt="THE BOUTIQUE 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div><div id="tabMX" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_13 mCS_no_scrollbar"><div id="mCSB_13" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_13_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="4121">고양스타필드</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="0017">대전현대아울렛</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="1581">목동</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="1211">상암월드컵경기장</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="1331">성수</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="4062">송도</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="4431">영통</button></li><li><button type="button" class="btn" data-area-cd="MX" data-brch-no="4651">하남스타필드</button></li></ul><div></div></div><div id="mCSB_13_scrollbar_vertical" class="mCSB_scrollTools mCSB_13_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_13_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="/specialtheater/mx" title="MX 특별관 페이지로 이동">				<p><strong>MX</strong>진정한 영화 사운드를 통한<br>최고의 영화! <br>메가박스의 차세대 <br>표준 상영관</p>				<i class="iconset ico-arrow-half"></i>				<img src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-mx.png" alt="MX 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div><div id="tabCFT" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_14 mCS_no_scrollbar"><div id="mCSB_14" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_14_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4041">검단</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0029">광명AK플라자</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="5021">광주상무</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="5061">광주하남</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0035">금정AK플라자&nbsp;<i class="iconset ico-theater-new"></i></button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0019">남양주현대아울렛 스페이스원</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0022">대구이시아</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="3021">대전</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0028">대전신세계 아트앤사이언스</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6161">덕천</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1003">동대문</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4451">동탄</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6312">마산</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1581">목동</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4113">백석</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6906">부산대</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0032">사상</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1311">상봉</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1211">상암월드컵경기장</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0008">세종청사</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4062">송도</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4421">수원남문</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4291">시흥배곧</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1202">신촌</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6261">양산</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6262">양산라피에스타</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4821">양주</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0012">용인기흥</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4462">용인테크노밸리</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6811">울산</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0014">창원내서</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="3301">천안</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0027">청라지젤</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0013">청주사창</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0037">춘천석사</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="1351">코엑스</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4112">킨텍스</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="4132">파주금촌</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="6121">해운대(장산)</button></li><li><button type="button" class="btn" data-area-cd="CFT" data-brch-no="0036">호매실</button></li></ul><div></div></div><div id="mCSB_14_scrollbar_vertical" class="mCSB_scrollTools mCSB_14_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_14_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="/specialtheater/comfort" title="COMFORT 특별관 페이지로 이동">				<p><strong>COMFORT</strong>더욱 편안한 영화 관람을<br>위한 다양한 여유 공간</p>				<i class="iconset ico-arrow-half"></i>				<img src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-comfort.png" alt="COMFORT 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div><div id="tabPTC" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_15 mCS_no_scrollbar"><div id="mCSB_15" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_15_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="PTC" data-brch-no="4431">영통</button></li></ul><div></div></div><div id="mCSB_15_scrollbar_vertical" class="mCSB_scrollTools mCSB_15_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_15_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="undefined" title=", 특별관 페이지로 이동">				<p><strong>,</strong>undefined</p>				<i class="iconset ico-arrow-half"></i>				<img src="undefined" alt=", 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div><div id="tabMKB" class="tab-layer-cont"><div class="scroll m-scroll mCustomScrollbar _mCS_16 mCS_no_scrollbar"><div id="mCSB_16" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 200px;" tabindex="0"><div id="mCSB_16_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><ul class="list"><li><button type="button" class="btn" data-area-cd="MKB" data-brch-no="6312">마산</button></li><li><button type="button" class="btn" data-area-cd="MKB" data-brch-no="4651">하남스타필드</button></li><li><button type="button" class="btn" data-area-cd="MKB" data-brch-no="6121">해운대(장산)</button></li></ul><div></div></div><div id="mCSB_16_scrollbar_vertical" class="mCSB_scrollTools mCSB_16_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_16_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div class="theater-section">	<div class="table">		<div class="td">			<a href="/specialtheater/megakids" title="MEGA KIDS 특별관 페이지로 이동">				<p><strong>MEGA KIDS</strong>아이와 가족이 함께 머물며<br>삶의 소중한 가치를 배우는<br>더 행복한 놀이공간</p>				<i class="iconset ico-arrow-half"></i>				<img src="https://img.megabox.co.kr/static/pc/images/reserve/img-theater-kids.png" alt="MEGA KIDS 특별관 페이지로 이동" class="poster">			</a>		</div>	</div></div></div></div>
								
							</div>
						</div>
					</div>
				</div>

				<div class="box-alert mt40" style="display:none">
					<i class="iconset ico-bell"></i>
					<strong></strong>
					<span></span>
				</div>

				<h3 class="tit mt60" style=""><span class="font-green">비상선언</span> 무대인사</h3>
				<div class="reserve movie-greeting" style=""><ul><li><p class="greeting-date">2022.08.06</p><div class="greeting-infomation" brch-no="1212" play-schdl-no="2208061212031" rpst-movie-no="21084100" theab-no="02" play-de="20220806" play-seq="3"><p class="greeting-location">홍대 MewSuppasit관 (9층 2관)</p><p class="greeting-time">14:55~17:25</p><p class="greeting-moment">상영후</p><p class="greeting-person">송강호, 이병헌, 임시완, 김소진 배우</p><p class="btn"><span class="button gray">매진</span></p></div><div class="greeting-infomation" brch-no="1212" play-schdl-no="2208061212007" rpst-movie-no="21084100" theab-no="04" play-de="20220806" play-seq="4"><p class="greeting-location">홍대 11층 4관</p><p class="greeting-time">17:30~19:50</p><p class="greeting-moment">상영전</p><p class="greeting-person">송강호, 이병헌, 임시완, 김소진 배우</p><p class="btn"><span class="button gray">매진</span></p></div><div class="greeting-infomation" brch-no="1212" play-schdl-no="2208061212032" rpst-movie-no="21084100" theab-no="02" play-de="20220806" play-seq="4"><p class="greeting-location">홍대 MewSuppasit관 (9층 2관)</p><p class="greeting-time">17:40~20:00</p><p class="greeting-moment">상영전</p><p class="greeting-person">송강호, 이병헌, 임시완, 김소진 배우</p><p class="btn"><a href="" class="button purple" title="바로예매">바로예매</a></p></div></li></ul><ul></ul><div class="btn-more" style="display: none;">	<button type="button" class="btn">		<span>닫기</span>		<i class="iconset ico-btn-more-arr"></i>	</button></div></div>

				<h3 class="tit mt60"><span class="font-green">비상선언</span> 상영시간표</h3><div class="time-schedule mb30">	<div class="wrap">		<button type="button" title="이전 날짜 보기" class="btn-pre" disabled="true">			<i class="iconset ico-cld-pre"></i> <em>이전</em>		</button>		<div class="date-list">			<div class="year-area">				<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2022.08</div>				<div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>			</div>			<div class="date-area"><div class="wrap" style="position: relative; width: 2100px; border: none; left: -70px;"><button class="disabled" type="button" date-data="2022.08.01" month="7" tabindex="-1"><span class="ir">2022년 8월</span><em style="pointer-events:none;">1<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">월</span><span class="day-en" style="pointer-events:none;display:none">Mon</span></button><button class="disabled" type="button" date-data="2022.08.02" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">2<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">오늘</span><span class="day-en" style="pointer-events:none;display:none">Tue</span></button><button class="on" type="button" date-data="2022.08.03" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">3<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">내일</span><span class="day-en" style="pointer-events:none;display:none">Wed</span></button><button class="" type="button" date-data="2022.08.04" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">4<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">목</span><span class="day-en" style="pointer-events:none;display:none">Thu</span></button><button class="" type="button" date-data="2022.08.05" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">5<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">금</span><span class="day-en" style="pointer-events:none;display:none">Fri</span></button><button class="sat" type="button" date-data="2022.08.06" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">6<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">토</span><span class="day-en" style="pointer-events:none;display:none">Sat</span></button><button class="holi" type="button" date-data="2022.08.07" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">7<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">일</span><span class="day-en" style="pointer-events:none;display:none">Sun</span></button><button class="" type="button" date-data="2022.08.08" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">8<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">월</span><span class="day-en" style="pointer-events:none;display:none">Mon</span></button><button class="" type="button" date-data="2022.08.09" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">9<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">화</span><span class="day-en" style="pointer-events:none;display:none">Tue</span></button><button class="" type="button" date-data="2022.08.10" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">10<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">수</span><span class="day-en" style="pointer-events:none;display:none">Wed</span></button><button class="" type="button" date-data="2022.08.11" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">11<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">목</span><span class="day-en" style="pointer-events:none;display:none">Thu</span></button><button class="" type="button" date-data="2022.08.12" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">12<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">금</span><span class="day-en" style="pointer-events:none;display:none">Fri</span></button><button class="sat" type="button" date-data="2022.08.13" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">13<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">토</span><span class="day-en" style="pointer-events:none;display:none">Sat</span></button><button class="holi" type="button" date-data="2022.08.14" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">14<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">일</span><span class="day-en" style="pointer-events:none;display:none">Sun</span></button><button class="" type="button" date-data="2022.08.15" month="7"><span class="ir">2022년 8월</span><em style="pointer-events:none;">15<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">월</span><span class="day-en" style="pointer-events:none;display:none">Mon</span></button><button class="disabled" type="button" date-data="2022.08.16" month="7" tabindex="-1"><span class="ir">2022년 8월</span><em style="pointer-events:none;">16<span style="pointer-events:none;" class="ir">일</span></em><span class="day-kr" style="pointer-events:none;display:inline-block">화</span><span class="day-en" style="pointer-events:none;display:none">Tue</span></button></div></div>		</div>		<button type="button" title="다음 날짜 보기" class="btn-next" disabled="true">			<i class="iconset ico-cld-next"></i> <em>다음</em>		</button>		<div class="bg-line">			<input type="hidden" name="datePicker" id="dp1659416914669" class="hasDatepicker" value="2022.08.03">			<button type="button" class="btn-calendar-large" title="달력보기"> 달력보기</button>		</div>	</div></div><div class="movie-option mb20">	<div class="option">		<ul>			<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>			<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>			<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>			<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>			<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>			<li><i class="iconset ico-gv" title="GV"></i>GV</li>			<li><i class="iconset ico-sun" title="조조"></i>조조</li>			<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>			<li><i class="iconset ico-moon" title="심야"></i>심야</li>		</ul>	</div>	<div class="rateing-lavel">		<a href="" class="" title="관람등급안내">관람등급안내</a>	</div></div><div class="reserve theater-list-box">	<div class="tab-block tab-layer mb30">		<ul><li class="on"><a href="" class="btn" data-area-cd="10" title="서울 선택">서울</a></li><li><a href="" class="btn" data-area-cd="30" title="경기 선택">경기</a></li><li><a href="" class="btn" data-area-cd="35" title="인천 선택">인천</a></li><li><a href="" class="btn" data-area-cd="45" title="대전/충청/세종 선택">대전/충청/세종</a></li><li><a href="" class="btn" data-area-cd="55" title="부산/대구/경상 선택">부산/대구/경상</a></li><li><a href="" class="btn" data-area-cd="65" title="광주/전라 선택">광주/전라</a></li><li><a href="" class="btn" data-area-cd="70" title="강원 선택">강원</a></li></ul>	</div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1372" title="강남 상세보기">강남</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 232석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1372" play-schdl-no="2208031372006" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:30</p>				<p class="chair">206석</p>								<div class="play-time">					<p>09:30~12:01</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372007" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:20</p>				<p class="chair">214석</p>								<div class="play-time">					<p>12:20~14:51</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372008" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:10</p>				<p class="chair">214석</p>								<div class="play-time">					<p>15:10~17:41</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372009" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:00</p>				<p class="chair">211석</p>								<div class="play-time">					<p>18:00~20:31</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372010" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">214석</p>								<div class="play-time">					<p>20:50~23:21</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 232석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1372" play-schdl-no="2208031372011" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:40</p>				<p class="chair">215석</p>								<div class="play-time">					<p>10:40~13:10</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372012" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">224석</p>								<div class="play-time">					<p>13:30~16:00</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372013" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">220석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372014" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">195석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372015" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">228석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">6관</p>		<p class="chair">총 103석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1372" play-schdl-no="2208031372059" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:35</p>				<p class="chair">103석</p>								<div class="play-time">					<p>14:35~17:05</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372058" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:20</p>				<p class="chair">98석</p>								<div class="play-time">					<p>17:20~19:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1372" play-schdl-no="2208031372057" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">83석</p>								<div class="play-time">					<p>20:10~22:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=0023" title="강남대로&amp;#40;씨티&amp;#41; 상세보기">강남대로(씨티)</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">2관</p>		<p class="chair">총 240석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="0023" play-schdl-no="2208030023005" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:40</p>				<p class="chair">223석</p>								<div class="play-time">					<p>09:40~12:10</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023004" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-brunch"></i></div>				<p class="time">12:30</p>				<p class="chair">235석</p>								<div class="play-time">					<p>12:30~15:00</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023003" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:20</p>				<p class="chair">223석</p>								<div class="play-time">					<p>15:20~17:50</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023002" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:10</p>				<p class="chair">235석</p>								<div class="play-time">					<p>18:10~20:40</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023001" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:00</p>				<p class="chair">237석</p>								<div class="play-time">					<p>21:00~23:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 126석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="0023" play-schdl-no="2208030023043" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:00</p>				<p class="chair">124석</p>								<div class="play-time">					<p>09:00~11:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023042" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-brunch"></i></div>				<p class="time">11:50</p>				<p class="chair">123석</p>								<div class="play-time">					<p>11:50~14:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023044" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:45</p>				<p class="chair">126석</p>								<div class="play-time">					<p>14:45~17:15</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="0023" play-schdl-no="2208030023040" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:20</p>				<p class="chair">120석</p>								<div class="play-time">					<p>20:20~22:50</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1341" title="강동 상세보기">강동</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">2관</p>		<p class="chair">총 249석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1341" play-schdl-no="2208031341076" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:20</p>				<p class="chair">249석</p>								<div class="play-time">					<p>11:20~13:50</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341077" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:10</p>				<p class="chair">246석</p>								<div class="play-time">					<p>14:10~16:40</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341078" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:00</p>				<p class="chair">249석</p>								<div class="play-time">					<p>17:00~19:30</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341079" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:50</p>				<p class="chair">247석</p>								<div class="play-time">					<p>19:50~22:20</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 249석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1341" play-schdl-no="2208031341006" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:20</p>				<p class="chair">245석</p>								<div class="play-time">					<p>09:20~11:51</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341007" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:10</p>				<p class="chair">230석</p>								<div class="play-time">					<p>12:10~14:41</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341008" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:00</p>				<p class="chair">232석</p>								<div class="play-time">					<p>15:00~17:31</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341009" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:50</p>				<p class="chair">248석</p>								<div class="play-time">					<p>17:50~20:21</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341010" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:40</p>				<p class="chair">246석</p>								<div class="play-time">					<p>20:40~23:11</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 249석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1341" play-schdl-no="2208031341071" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:00</p>				<p class="chair">238석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341072" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:50</p>				<p class="chair">245석</p>								<div class="play-time">					<p>12:50~15:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341073" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:40</p>				<p class="chair">247석</p>								<div class="play-time">					<p>15:40~18:10</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341074" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:30</p>				<p class="chair">238석</p>								<div class="play-time">					<p>18:30~21:00</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1341" play-schdl-no="2208031341075" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:20</p>				<p class="chair">246석</p>								<div class="play-time">					<p>21:20~23:50</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1431" title="군자 상세보기">군자</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 155석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1431" play-schdl-no="2208031431006" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:00</p>				<p class="chair">118석</p>								<div class="play-time">					<p>09:00~11:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431007" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:45</p>				<p class="chair">136석</p>								<div class="play-time">					<p>11:45~14:15</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431008" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:30</p>				<p class="chair">139석</p>								<div class="play-time">					<p>14:30~17:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431009" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:15</p>				<p class="chair">145석</p>								<div class="play-time">					<p>17:15~19:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431010" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:00</p>				<p class="chair">119석</p>								<div class="play-time">					<p>20:00~22:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">5관</p>		<p class="chair">총 155석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1431" play-schdl-no="2208031431017" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:55</p>				<p class="chair">137석</p>								<div class="play-time">					<p>09:55~12:25</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431018" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:40</p>				<p class="chair">145석</p>								<div class="play-time">					<p>12:40~15:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431019" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:25</p>				<p class="chair">145석</p>								<div class="play-time">					<p>15:25~17:55</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431020" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:10</p>				<p class="chair">144석</p>								<div class="play-time">					<p>18:10~20:40</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431021" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:55</p>				<p class="chair">142석</p>								<div class="play-time">					<p>20:55~23:25</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">9관</p>		<p class="chair">총 155석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1431" play-schdl-no="2208031431039" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:50</p>				<p class="chair">139석</p>								<div class="play-time">					<p>10:50~13:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431040" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:35</p>				<p class="chair">143석</p>								<div class="play-time">					<p>13:35~16:05</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431041" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">145석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1431" play-schdl-no="2208031431042" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:05</p>				<p class="chair">141석</p>								<div class="play-time">					<p>19:05~21:35</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1003" title="동대문 상세보기">동대문</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트1관</p>		<p class="chair">총 284석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1003" play-schdl-no="2208031003006" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:50</p>				<p class="chair">272석</p>								<div class="play-time">					<p>10:50~13:20</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003007" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:40</p>				<p class="chair">277석</p>								<div class="play-time">					<p>13:40~16:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003008" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:30</p>				<p class="chair">277석</p>								<div class="play-time">					<p>16:30~19:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003009" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:20</p>				<p class="chair">272석</p>								<div class="play-time">					<p>19:20~21:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003010" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:10</p>				<p class="chair">284석</p>								<div class="play-time">					<p>22:10~24:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 203석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1003" play-schdl-no="2208031003001" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:55</p>				<p class="chair">156석</p>								<div class="play-time">					<p>09:55~12:26</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003002" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:45</p>				<p class="chair">174석</p>								<div class="play-time">					<p>12:45~15:16</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003003" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:35</p>				<p class="chair">158석</p>								<div class="play-time">					<p>15:35~18:06</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003004" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:25</p>				<p class="chair">170석</p>								<div class="play-time">					<p>18:25~20:56</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003005" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:15</p>				<p class="chair">198석</p>								<div class="play-time">					<p>21:15~23:46</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">6관</p>		<p class="chair">총 190석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1003" play-schdl-no="2208031003011" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:45</p>				<p class="chair">189석</p>								<div class="play-time">					<p>11:45~14:15</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003012" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:35</p>				<p class="chair">188석</p>								<div class="play-time">					<p>14:35~17:05</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003013" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:25</p>				<p class="chair">186석</p>								<div class="play-time">					<p>17:25~19:55</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1003" play-schdl-no="2208031003014" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:15</p>				<p class="chair">184석</p>								<div class="play-time">					<p>20:15~22:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1572" title="마곡 상세보기">마곡</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 122석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1572" play-schdl-no="2208031572038" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:50</p>				<p class="chair">113석</p>								<div class="play-time">					<p>10:50~13:20</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572039" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:40</p>				<p class="chair">111석</p>								<div class="play-time">					<p>13:40~16:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572040" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:30</p>				<p class="chair">112석</p>								<div class="play-time">					<p>16:30~19:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572041" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:20</p>				<p class="chair">99석</p>								<div class="play-time">					<p>19:20~21:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572042" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:10</p>				<p class="chair">117석</p>								<div class="play-time">					<p>22:10~24:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">5관</p>		<p class="chair">총 153석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1572" play-schdl-no="2208031572034" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:40</p>				<p class="chair">142석</p>								<div class="play-time">					<p>11:40~14:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572035" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:30</p>				<p class="chair">139석</p>								<div class="play-time">					<p>14:30~17:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572036" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:20</p>				<p class="chair">144석</p>								<div class="play-time">					<p>17:20~19:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572037" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">142석</p>								<div class="play-time">					<p>20:10~22:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">6관</p>		<p class="chair">총 132석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1572" play-schdl-no="2208031572011" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:50</p>				<p class="chair">98석</p>								<div class="play-time">					<p>09:50~12:21</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572012" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:45</p>				<p class="chair">115석</p>								<div class="play-time">					<p>12:45~15:16</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572013" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:40</p>				<p class="chair">106석</p>								<div class="play-time">					<p>15:40~18:11</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572014" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:35</p>				<p class="chair">117석</p>								<div class="play-time">					<p>18:35~21:06</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1572" play-schdl-no="2208031572015" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:30</p>				<p class="chair">109석</p>								<div class="play-time">					<p>21:30~24:01</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1581" title="목동 상세보기">목동</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">MX관</p>		<p class="chair">총 332석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D ATMOS</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1581" play-schdl-no="2208031581052" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:00</p>				<p class="chair">293석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581053" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:50</p>				<p class="chair">318석</p>								<div class="play-time">					<p>12:50~15:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581055" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:15</p>				<p class="chair">316석</p>								<div class="play-time">					<p>18:15~20:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 114석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1581" play-schdl-no="2208031581035" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:15</p>				<p class="chair">77석</p>								<div class="play-time">					<p>09:15~11:45</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581036" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:05</p>				<p class="chair">103석</p>								<div class="play-time">					<p>12:05~14:35</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581037" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:55</p>				<p class="chair">97석</p>								<div class="play-time">					<p>14:55~17:25</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581038" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:45</p>				<p class="chair">105석</p>								<div class="play-time">					<p>17:45~20:15</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581039" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:35</p>				<p class="chair">98석</p>								<div class="play-time">					<p>20:35~23:05</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581064" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:25</p>				<p class="chair">114석</p>								<div class="play-time">					<p>23:25~25:55</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트5관(SideWall)</p>		<p class="chair">총 66석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1581" play-schdl-no="2208031581071" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:40</p>				<p class="chair">64석</p>								<div class="play-time">					<p>10:40~13:10</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581072" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">61석</p>								<div class="play-time">					<p>13:30~16:00</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581073" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">63석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581074" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">61석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581075" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">66석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트6관(소파석)</p>		<p class="chair">총 210석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1581" play-schdl-no="2208031581007" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">08:40</p>				<p class="chair">194석</p>								<div class="play-time">					<p>08:40~11:11</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581008" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:30</p>				<p class="chair">188석</p>								<div class="play-time">					<p>11:30~14:01</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581009" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:20</p>				<p class="chair">166석</p>								<div class="play-time">					<p>14:20~16:51</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581010" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:10</p>				<p class="chair">202석</p>								<div class="play-time">					<p>17:10~19:41</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581011" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:00</p>				<p class="chair">158석</p>								<div class="play-time">					<p>20:00~22:31</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1581" play-schdl-no="2208031581012" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:50</p>				<p class="chair">208석</p>								<div class="play-time">					<p>22:50~25:21</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">7관</p>		<p class="chair">총 158석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1581" play-schdl-no="2208031581078" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:10</p>				<p class="chair">153석</p>								<div class="play-time">					<p>21:10~23:40</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1311" title="상봉 상세보기">상봉</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">6층 컴포트 2관</p>		<p class="chair">총 121석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1311" play-schdl-no="2208031311010" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:50</p>				<p class="chair">114석</p>								<div class="play-time">					<p>11:50~14:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311011" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:40</p>				<p class="chair">113석</p>								<div class="play-time">					<p>14:40~17:10</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311012" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:30</p>				<p class="chair">116석</p>								<div class="play-time">					<p>17:30~20:00</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311013" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:20</p>				<p class="chair">117석</p>								<div class="play-time">					<p>20:20~22:50</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">8층 6관</p>		<p class="chair">총 96석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1311" play-schdl-no="2208031311006" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:55</p>				<p class="chair">94석</p>								<div class="play-time">					<p>10:55~13:25</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311007" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:45</p>				<p class="chair">92석</p>								<div class="play-time">					<p>13:45~16:15</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311008" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:35</p>				<p class="chair">96석</p>								<div class="play-time">					<p>16:35~19:05</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311009" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:25</p>				<p class="chair">90석</p>								<div class="play-time">					<p>19:25~21:55</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">8층 7관</p>		<p class="chair">총 154석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1311" play-schdl-no="2208031311001" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:55</p>				<p class="chair">133석</p>								<div class="play-time">					<p>09:55~12:26</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311002" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:45</p>				<p class="chair">125석</p>								<div class="play-time">					<p>12:45~15:16</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311003" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:35</p>				<p class="chair">131석</p>								<div class="play-time">					<p>15:35~18:06</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311004" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:25</p>				<p class="chair">138석</p>								<div class="play-time">					<p>18:25~20:56</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1311" play-schdl-no="2208031311005" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:15</p>				<p class="chair">141석</p>								<div class="play-time">					<p>21:15~23:46</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1211" title="상암월드컵경기장 상세보기">상암월드컵경기장</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트1관</p>		<p class="chair">총 202석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1211" play-schdl-no="2208031211072" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:10</p>				<p class="chair">187석</p>								<div class="play-time">					<p>09:10~11:40</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211073" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:00</p>				<p class="chair">180석</p>								<div class="play-time">					<p>12:00~14:30</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211074" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:50</p>				<p class="chair">167석</p>								<div class="play-time">					<p>14:50~17:20</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211075" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:40</p>				<p class="chair">193석</p>								<div class="play-time">					<p>17:40~20:10</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211076" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:30</p>				<p class="chair">179석</p>								<div class="play-time">					<p>20:30~23:00</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211077" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:20</p>				<p class="chair">200석</p>								<div class="play-time">					<p>23:20~25:50</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">MX관</p>		<p class="chair">총 342석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D ATMOS</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1211" play-schdl-no="2208031211066" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:50</p>				<p class="chair">304석</p>								<div class="play-time">					<p>09:50~12:21</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211068" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:30</p>				<p class="chair">330석</p>								<div class="play-time">					<p>15:30~18:01</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211069" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:20</p>				<p class="chair">329석</p>								<div class="play-time">					<p>18:20~20:51</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211067" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:10</p>				<p class="chair">328석</p>								<div class="play-time">					<p>21:10~23:41</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211078" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">24:00</p>				<p class="chair">342석</p>								<div class="play-time">					<p>24:00~26:30</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 217석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1211" play-schdl-no="2208031211065" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">08:20</p>				<p class="chair">196석</p>								<div class="play-time">					<p>08:20~10:51</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211064" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:10</p>				<p class="chair">195석</p>								<div class="play-time">					<p>11:10~13:41</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211063" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:00</p>				<p class="chair">162석</p>								<div class="play-time">					<p>14:00~16:31</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211062" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:50</p>				<p class="chair">199석</p>								<div class="play-time">					<p>16:50~19:21</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211060" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:40</p>				<p class="chair">176석</p>								<div class="play-time">					<p>19:40~22:11</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211061" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:30</p>				<p class="chair">212석</p>								<div class="play-time">					<p>22:30~25:01</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">7관</p>		<p class="chair">총 97석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1211" play-schdl-no="2208031211079" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">07:50</p>				<p class="chair">89석</p>								<div class="play-time">					<p>07:50~10:20</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211080" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:40</p>				<p class="chair">92석</p>								<div class="play-time">					<p>10:40~13:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211081" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">97석</p>								<div class="play-time">					<p>13:30~16:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211082" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">97석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211083" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">82석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211084" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">95석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">9관</p>		<p class="chair">총 97석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1211" play-schdl-no="2208031211112" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">94석</p>								<div class="play-time">					<p>20:10~22:40</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1211" play-schdl-no="2208031211113" rpst-movie-no="21084100" theab-no="09" play-de="20220803" play-seq="7">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:00</p>				<p class="chair">97석</p>								<div class="play-time">					<p>23:00~25:30</p>					<p>7회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1331" title="성수 상세보기">성수</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 154석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1331" play-schdl-no="2208031331014" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:15</p>				<p class="chair">125석</p>								<div class="play-time">					<p>17:15~19:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331015" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:00</p>				<p class="chair">113석</p>								<div class="play-time">					<p>20:00~22:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">2관</p>		<p class="chair">총 170석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1331" play-schdl-no="2208031331083" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:00</p>				<p class="chair">143석</p>								<div class="play-time">					<p>09:00~11:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331084" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">159석</p>								<div class="play-time">					<p>13:30~16:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331085" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">158석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331106" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">156석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331088" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">168석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">소녀시대관(MX관)</p>		<p class="chair">총 279석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D ATMOS</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1331" play-schdl-no="2208031331108" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:20</p>				<p class="chair">269석</p>								<div class="play-time">					<p>11:20~13:50</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331109" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:10</p>				<p class="chair">262석</p>								<div class="play-time">					<p>14:10~16:40</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331110" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:00</p>				<p class="chair">273석</p>								<div class="play-time">					<p>17:00~19:30</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331111" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:50</p>				<p class="chair">268석</p>								<div class="play-time">					<p>19:50~22:20</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">5관</p>		<p class="chair">총 170석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1331" play-schdl-no="2208031331097" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:35</p>				<p class="chair">168석</p>								<div class="play-time">					<p>10:35~13:05</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331087" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:40</p>				<p class="chair">170석</p>								<div class="play-time">					<p>18:40~21:10</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331090" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:30</p>				<p class="chair">166석</p>								<div class="play-time">					<p>21:30~24:00</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">더부티크 101호 스위트</p>		<p class="chair">총 46석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1331" play-schdl-no="2208031331104" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:00</p>				<p class="chair">35석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1331" play-schdl-no="2208031331092" rpst-movie-no="21084100" theab-no="06" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">44석</p>								<div class="play-time">					<p>20:50~23:20</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1371" title="센트럴 상세보기">센트럴</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">더부티크 102호</p>		<p class="chair">총 159석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1371" play-schdl-no="2208031371006" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:00</p>				<p class="chair">131석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371007" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:50</p>				<p class="chair">139석</p>								<div class="play-time">					<p>12:50~15:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371008" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:40</p>				<p class="chair">151석</p>								<div class="play-time">					<p>15:40~18:10</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371009" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:30</p>				<p class="chair">154석</p>								<div class="play-time">					<p>18:30~21:00</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371010" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:20</p>				<p class="chair">153석</p>								<div class="play-time">					<p>21:20~23:50</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">더부티크 103호</p>		<p class="chair">총 175석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1371" play-schdl-no="2208031371001" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:00</p>				<p class="chair">134석</p>								<div class="play-time">					<p>09:00~11:31</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371002" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:50</p>				<p class="chair">159석</p>								<div class="play-time">					<p>11:50~14:21</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371003" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:40</p>				<p class="chair">135석</p>								<div class="play-time">					<p>14:40~17:11</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371004" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:30</p>				<p class="chair">124석</p>								<div class="play-time">					<p>17:30~20:01</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371005" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:20</p>				<p class="chair">157석</p>								<div class="play-time">					<p>20:20~22:51</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">더부티크 105호</p>		<p class="chair">총 118석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1371" play-schdl-no="2208031371053" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">108석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1371" play-schdl-no="2208031371054" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">117석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1381" title="송파파크하비오 상세보기">송파파크하비오</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 246석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1381" play-schdl-no="2208031381013" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:50</p>				<p class="chair">235석</p>								<div class="play-time">					<p>09:50~12:20</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381014" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:35</p>				<p class="chair">241석</p>								<div class="play-time">					<p>12:35~15:05</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381015" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:20</p>				<p class="chair">240석</p>								<div class="play-time">					<p>15:20~17:50</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381016" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:05</p>				<p class="chair">244석</p>								<div class="play-time">					<p>18:05~20:35</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381017" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">240석</p>								<div class="play-time">					<p>20:50~23:20</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 110석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1381" play-schdl-no="2208031381018" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:30</p>				<p class="chair">103석</p>								<div class="play-time">					<p>10:30~13:00</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381019" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:15</p>				<p class="chair">105석</p>								<div class="play-time">					<p>13:15~15:45</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381020" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:00</p>				<p class="chair">108석</p>								<div class="play-time">					<p>16:00~18:30</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381021" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:45</p>				<p class="chair">100석</p>								<div class="play-time">					<p>18:45~21:15</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381022" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:30</p>				<p class="chair">108석</p>								<div class="play-time">					<p>21:30~24:00</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">7관</p>		<p class="chair">총 46석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1381" play-schdl-no="2208031381023" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:10</p>				<p class="chair">43석</p>								<div class="play-time">					<p>11:10~13:40</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381024" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:55</p>				<p class="chair">46석</p>								<div class="play-time">					<p>13:55~16:25</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381025" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:40</p>				<p class="chair">46석</p>								<div class="play-time">					<p>16:40~19:10</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381026" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:25</p>				<p class="chair">36석</p>								<div class="play-time">					<p>19:25~21:55</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381027" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-moon"></i></div>				<p class="time">22:10</p>				<p class="chair">46석</p>								<div class="play-time">					<p>22:10~24:40</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">8관</p>		<p class="chair">총 126석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1381" play-schdl-no="2208031381007" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:10</p>				<p class="chair">120석</p>								<div class="play-time">					<p>09:10~11:40</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381008" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:55</p>				<p class="chair">121석</p>								<div class="play-time">					<p>11:55~14:25</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381009" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:40</p>				<p class="chair">120석</p>								<div class="play-time">					<p>14:40~17:10</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381010" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:25</p>				<p class="chair">126석</p>								<div class="play-time">					<p>17:25~19:55</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381011" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">102석</p>								<div class="play-time">					<p>20:10~22:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1381" play-schdl-no="2208031381012" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-moon"></i></div>				<p class="time">22:55</p>				<p class="chair">122석</p>								<div class="play-time">					<p>22:55~25:25</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1202" title="신촌 상세보기">신촌</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">프레드앤조지(컴포트1관)</p>		<p class="chair">총 400석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1202" play-schdl-no="2208031202001" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:30</p>				<p class="chair">364석</p>								<div class="play-time">					<p>09:30~12:01</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202002" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:20</p>				<p class="chair">381석</p>								<div class="play-time">					<p>12:20~14:51</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202003" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:10</p>				<p class="chair">368석</p>								<div class="play-time">					<p>15:10~17:41</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202004" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:00</p>				<p class="chair">383석</p>								<div class="play-time">					<p>18:00~20:31</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202005" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">385석</p>								<div class="play-time">					<p>20:50~23:21</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">프레드앤조지(2관)</p>		<p class="chair">총 218석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1202" play-schdl-no="2208031202009" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:20</p>				<p class="chair">217석</p>								<div class="play-time">					<p>13:20~15:51</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202011" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:10</p>				<p class="chair">214석</p>								<div class="play-time">					<p>16:10~18:41</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202013" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:00</p>				<p class="chair">210석</p>								<div class="play-time">					<p>19:00~21:31</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202015" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:50</p>				<p class="chair">216석</p>								<div class="play-time">					<p>21:50~24:21</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 319석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1202" play-schdl-no="2208031202008" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:30</p>				<p class="chair">310석</p>								<div class="play-time">					<p>11:30~14:01</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202010" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:20</p>				<p class="chair">316석</p>								<div class="play-time">					<p>14:20~16:51</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202012" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:10</p>				<p class="chair">306석</p>								<div class="play-time">					<p>17:10~19:41</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1202" play-schdl-no="2208031202014" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:00</p>				<p class="chair">307석</p>								<div class="play-time">					<p>20:00~22:31</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1561" title="이수 상세보기">이수</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 123석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1561" play-schdl-no="2208031561012" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:40</p>				<p class="chair">119석</p>								<div class="play-time">					<p>12:40~15:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561013" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:30</p>				<p class="chair">118석</p>								<div class="play-time">					<p>15:30~18:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561014" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:20</p>				<p class="chair">104석</p>								<div class="play-time">					<p>18:20~20:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561015" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:10</p>				<p class="chair">112석</p>								<div class="play-time">					<p>21:10~23:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 123석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1561" play-schdl-no="2208031561021" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:40</p>				<p class="chair">112석</p>								<div class="play-time">					<p>11:40~14:10</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561022" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:30</p>				<p class="chair">117석</p>								<div class="play-time">					<p>14:30~17:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561023" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:20</p>				<p class="chair">123석</p>								<div class="play-time">					<p>17:20~19:50</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561024" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">112석</p>								<div class="play-time">					<p>20:10~22:40</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">5관</p>		<p class="chair">총 198석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1561" play-schdl-no="2208031561016" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:40</p>				<p class="chair">130석</p>								<div class="play-time">					<p>10:40~13:10</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561017" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">164석</p>								<div class="play-time">					<p>13:30~16:00</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561018" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:20</p>				<p class="chair">172석</p>								<div class="play-time">					<p>16:20~18:50</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561019" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:10</p>				<p class="chair">111석</p>								<div class="play-time">					<p>19:10~21:40</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1561" play-schdl-no="2208031561020" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">183석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1321" title="창동 상세보기">창동</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 136석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1321" play-schdl-no="2208031321031" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:45</p>				<p class="chair">92석</p>								<div class="play-time">					<p>09:45~12:15</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321032" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:35</p>				<p class="chair">134석</p>								<div class="play-time">					<p>12:35~15:05</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321033" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:25</p>				<p class="chair">131석</p>								<div class="play-time">					<p>15:25~17:55</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321034" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:15</p>				<p class="chair">128석</p>								<div class="play-time">					<p>18:15~20:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321035" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:05</p>				<p class="chair">135석</p>								<div class="play-time">					<p>21:05~23:35</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">2관</p>		<p class="chair">총 136석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1321" play-schdl-no="2208031321027" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:05</p>				<p class="chair">136석</p>								<div class="play-time">					<p>12:05~14:35</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321028" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:55</p>				<p class="chair">133석</p>								<div class="play-time">					<p>14:55~17:25</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321029" rpst-movie-no="21084100" theab-no="02" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:45</p>				<p class="chair">136석</p>								<div class="play-time">					<p>17:45~20:15</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 136석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1321" play-schdl-no="2208031321065" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:20</p>				<p class="chair">97석</p>								<div class="play-time">					<p>09:20~11:50</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321064" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:15</p>				<p class="chair">129석</p>								<div class="play-time">					<p>20:15~22:45</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 136석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1321" play-schdl-no="2208031321059" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:15</p>				<p class="chair">128석</p>								<div class="play-time">					<p>14:15~16:45</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1321" play-schdl-no="2208031321061" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:15</p>				<p class="chair">136석</p>								<div class="play-time">					<p>17:15~19:45</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1351" title="코엑스 상세보기">코엑스</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">Dolby Cinema</p>		<p class="chair">총 378석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D ATMOS</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351001" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">07:30</p>				<p class="chair">286석</p>								<div class="play-time">					<p>07:30~10:01</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351002" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">10:30</p>				<p class="chair">279석</p>								<div class="play-time">					<p>10:30~13:01</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351003" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:30</p>				<p class="chair">268석</p>								<div class="play-time">					<p>13:30~16:01</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351004" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:30</p>				<p class="chair">260석</p>								<div class="play-time">					<p>16:30~19:01</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351005" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:30</p>				<p class="chair">188석</p>								<div class="play-time">					<p>19:30~22:01</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351006" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:30</p>				<p class="chair">333석</p>								<div class="play-time">					<p>22:30~25:01</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트 3관</p>		<p class="chair">총 348석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351007" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">08:10</p>				<p class="chair">314석</p>								<div class="play-time">					<p>08:10~10:41</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351008" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:10</p>				<p class="chair">209석</p>								<div class="play-time">					<p>11:10~13:41</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351009" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:10</p>				<p class="chair">187석</p>								<div class="play-time">					<p>14:10~16:41</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351010" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:10</p>				<p class="chair">248석</p>								<div class="play-time">					<p>17:10~19:41</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351011" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">150석</p>								<div class="play-time">					<p>20:10~22:41</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351012" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:10</p>				<p class="chair">334석</p>								<div class="play-time">					<p>23:10~25:41</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트 5관</p>		<p class="chair">총 281석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351036" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:00</p>				<p class="chair">237석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351037" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:00</p>				<p class="chair">245석</p>								<div class="play-time">					<p>13:00~15:30</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351038" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">16:00</p>				<p class="chair">233석</p>								<div class="play-time">					<p>16:00~18:30</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351039" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:00</p>				<p class="chair">170석</p>								<div class="play-time">					<p>19:00~21:30</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351040" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">269석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351041" rpst-movie-no="21084100" theab-no="05" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">25:00</p>				<p class="chair">279석</p>								<div class="play-time">					<p>25:00~27:30</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트 7관</p>		<p class="chair">총 285석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351024" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:30</p>				<p class="chair">271석</p>								<div class="play-time">					<p>09:30~12:00</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351025" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:30</p>				<p class="chair">263석</p>								<div class="play-time">					<p>12:30~15:00</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351026" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:30</p>				<p class="chair">250석</p>								<div class="play-time">					<p>15:30~18:00</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351027" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:30</p>				<p class="chair">243석</p>								<div class="play-time">					<p>18:30~21:00</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351034" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:30</p>				<p class="chair">278석</p>								<div class="play-time">					<p>21:30~24:00</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351035" rpst-movie-no="21084100" theab-no="07" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">24:30</p>				<p class="chair">283석</p>								<div class="play-time">					<p>24:30~27:00</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">컴포트 8관</p>		<p class="chair">총 255석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351028" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">08:50</p>				<p class="chair">250석</p>								<div class="play-time">					<p>08:50~11:20</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351029" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:50</p>				<p class="chair">238석</p>								<div class="play-time">					<p>11:50~14:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351030" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:50</p>				<p class="chair">208석</p>								<div class="play-time">					<p>14:50~17:20</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351031" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:50</p>				<p class="chair">238석</p>								<div class="play-time">					<p>17:50~20:20</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351032" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">234석</p>								<div class="play-time">					<p>20:50~23:20</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351033" rpst-movie-no="21084100" theab-no="08" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:50</p>				<p class="chair">253석</p>								<div class="play-time">					<p>23:50~26:20</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">더부티크 102호 스위트</p>		<p class="chair">총 36석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1351" play-schdl-no="2208031351013" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">08:30</p>				<p class="chair">28석</p>								<div class="play-time">					<p>08:30~11:01</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351014" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:35</p>				<p class="chair">25석</p>								<div class="play-time">					<p>11:35~14:06</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351015" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:40</p>				<p class="chair">14석</p>								<div class="play-time">					<p>14:40~17:11</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351016" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:45</p>				<p class="chair">15석</p>								<div class="play-time">					<p>17:45~20:16</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351017" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">1석</p>								<div class="play-time">					<p>20:50~23:21</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1351" play-schdl-no="2208031351018" rpst-movie-no="21084100" theab-no="12" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:55</p>				<p class="chair">29석</p>								<div class="play-time">					<p>23:55~26:26</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1212" title="홍대 상세보기">홍대</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">이솔로몬관 (7층 1관)</p>		<p class="chair">총 160석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1212" play-schdl-no="2208031212001" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">09:30</p>				<p class="chair">138석</p>								<div class="play-time">					<p>09:30~12:00</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212002" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:20</p>				<p class="chair">140석</p>								<div class="play-time">					<p>12:20~14:50</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212003" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:10</p>				<p class="chair">141석</p>								<div class="play-time">					<p>15:10~17:40</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212004" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:00</p>				<p class="chair">144석</p>								<div class="play-time">					<p>18:00~20:30</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212005" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:50</p>				<p class="chair">154석</p>								<div class="play-time">					<p>20:50~23:20</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">뮤수파싯관 (9층 3관)</p>		<p class="chair">총 113석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1212" play-schdl-no="2208031212018" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">13:25</p>				<p class="chair">104석</p>								<div class="play-time">					<p>13:25~15:55</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212019" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:05</p>				<p class="chair">98석</p>								<div class="play-time">					<p>19:05~21:35</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1212" play-schdl-no="2208031212017" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">22:00</p>				<p class="chair">113석</p>								<div class="play-time">					<p>22:00~24:30</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div><div class="theater-list"><div class="theater-area-click"><a href="/theater?brchNo=1571" title="화곡 상세보기">화곡</a></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">1관</p>		<p class="chair">총 198석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1571" play-schdl-no="2208031571007" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">08:50</p>				<p class="chair">170석</p>								<div class="play-time">					<p>08:50~11:21</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571008" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">11:40</p>				<p class="chair">178석</p>								<div class="play-time">					<p>11:40~14:11</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571009" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">14:30</p>				<p class="chair">174석</p>								<div class="play-time">					<p>14:30~17:01</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571010" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">17:20</p>				<p class="chair">179석</p>								<div class="play-time">					<p>17:20~19:51</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571011" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">20:10</p>				<p class="chair">167석</p>								<div class="play-time">					<p>20:10~22:41</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571012" rpst-movie-no="21084100" theab-no="01" play-de="20220803" play-seq="6">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">23:00</p>				<p class="chair">193석</p>								<div class="play-time">					<p>23:00~25:31</p>					<p>6회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">3관</p>		<p class="chair">총 210석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1571" play-schdl-no="2208031571013" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="1">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-sun"></i></div>				<p class="time">10:00</p>				<p class="chair">182석</p>								<div class="play-time">					<p>10:00~12:30</p>					<p>1회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571014" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="2">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">12:50</p>				<p class="chair">195석</p>								<div class="play-time">					<p>12:50~15:20</p>					<p>2회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571015" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="3">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">15:40</p>				<p class="chair">191석</p>								<div class="play-time">					<p>15:40~18:10</p>					<p>3회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571016" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="4">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">18:30</p>				<p class="chair">192석</p>								<div class="play-time">					<p>18:30~21:00</p>					<p>4회차</p>				</div>			</a>		</div>	</div></td><td class="" brch-no="1571" play-schdl-no="2208031571017" rpst-movie-no="21084100" theab-no="03" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">21:20</p>				<p class="chair">197석</p>								<div class="play-time">					<p>21:20~23:50</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div><div class="theater-type-box">	<div class="theater-type">		<p class="theater-name">4관</p>		<p class="chair">총 95석</p>	</div>	<div class="theater-time">		<div class="theater-type-area">2D</div>		<div class="theater-time-box">			<table class="time-list-table">				<caption>상영시간을 보여주는 표 입니다.</caption>				<colgroup>					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">					<col style="width:99px;">				</colgroup>				<tbody>				<tr><td class="" brch-no="1571" play-schdl-no="2208031571043" rpst-movie-no="21084100" theab-no="04" play-de="20220803" play-seq="5">	<div class="td-ab">		<div class="txt-center">			<a href="" title="영화예매하기">				<div class="ico-box"><i class="iconset ico-off"></i></div>				<p class="time">19:25</p>				<p class="chair">87석</p>								<div class="play-time">					<p>19:25~21:55</p>					<p>5회차</p>				</div>			</a>		</div>	</div></td></tr></tbody>			</table>		</div>	</div></div></div></div><div class="box-border v1 mt30" style="display: none;">	<ul class="dot-list gray"></ul></div>
			</div>
		</div>
	</div>
</div>

<!-- 		</div> -->
        



<section id="saw_movie_regi" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
	<input type="hidden" id="isLogin">
	<div class="wrap">
		<header class="layer-header">
			<h3 class="tit">본 영화 등록</h3>
		</header>

		<div class="layer-con">
			<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

			<div class="pop-gray mt10 mb30">
				<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label>
				<input type="text" id="movie_regi" class="input-text w280px numType" maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
				<button class="button gray ml05" id="regBtn">등록</button>
			</div>

			<div class="box-border v1 mt30">
				<p class="tit-box">이용안내</p>

				<ul class="dot-list">
                        <li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
                        <li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를 입력해주세요.(Yes24, 네이버, 인터파크, SKT, KT, 다음)</li>
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

<div class="quick-area" style="display: block;">
	<a href="" class="btn-go-top" title="top" style="position: fixed;">top</a>
</div>

<!-- footer -->
<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
                <li><a href="/support/lcinfo" title="위치기반서비스 이용약관 페이지로 이동">위치기반서비스 이용약관</a></li>
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
            </ul>

            <a href="#layer_looking_theater" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
        </div>
    </div>
    <!--// footer-top -->

    <!-- footer-bottom -->
    <div class="footer-bottom">
        <div class="inner-wrap">
            <div class="ci">MEGABOX : Life Theater</div>

            <div class="footer-info">
                <div>
                    <address>서울특별시 마포구 월드컵로 240, 지상2층(성산동, 월드컵주경기장)</address>
                    <p>ARS 1544-0070</p>
                </div>
                <p>대표자명 홍정인</p>
                <p>· 개인정보보호책임자 공성진</p>
                <p>· 사업자등록번호 211-86-59478</p>
                <p>· 통신판매업신고번호 제 2020-서울마포-4545 호</p>
                <p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</p>
            </div>

            <div class="footer-sns">
            	<a href="https://www.youtube.com/onmegabox" target="_blank" title="MEGABOX 유튜브 페이지로 이동"><i class="iconset ico-youtubeN">유튜브</i></a>
                <a href="http://instagram.com/megaboxon" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagramN">인스타그램</i></a>
                <a href="https://www.facebook.com/megaboxon" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebookN">페이스북</i></a>
                <a href="https://twitter.com/megaboxon" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitterN">트위터</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
<!--// footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile" style="display: none;">
	<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i class="iconset ico-go-mobile"></i></a>
</div>
    </div>
    <form id="mainForm">
    </form>

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div><div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div><div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>