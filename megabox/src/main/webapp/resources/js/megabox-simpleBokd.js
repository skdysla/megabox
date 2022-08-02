/**
 * 2019.07.29 hjchoi
 * 상영시간 체크 및 팝업확인
 * 1. 예매차단 팝업 (예매가능여부 체크)	- fn_getBrchBokdUnablePopup
 * 2. 상영시간 20분 미만 체크		- fn_valid20MinBlw
 * 3. 영화별 팝업				- fn_selectMovieChoiPopup
 * 4. 극장(지점)별 팝업			- fn_selectBrchChoiPopup
 * 5. 상영관별 팝업 				- fn_selectTheabChoiPopup
 * 6. 회차별 팝업
 * 7. 좌석도 Parameter전달
 */

//var scnType = ''; // 유입타입(네비게이션표시)

function fn_mainValidAndPopup(obj, scnType) {
	//scnType = $(obj).attr("scn-type");

	//상영시작시간 초과 여부 조회 / 이하 콜백처리
	fn_getPlayStartOverTime(obj, scnType);


}

//팝업없이 좌석도로 바로 진입
function fn_directSmapSeat(obj) {
	var playSchdlNo = $(obj).attr("play-schdl-no");
	var brchNo = $(obj).attr("brch-no");

	//좌석도로 파라메타 전달
	if (typeof $('#frameBokdMSeat').get(0) == 'undefined') { // 예매화면에서 호출
    	parent.fn_setSmapParam(obj);
    } else { // 기타화면에서 호출
    	fn_setSmapParam([playSchdlNo, 'default', brchNo]);
    }
}


//상영시작시간 초과 여부 조회
function fn_getPlayStartOverTime(obj, scnType){
	var paramData = { playSchdlNo : $(obj).attr("play-schdl-no")};

	$.ajaxMegaBox({
	        url: "/on/oc/ocz/commOn/selectPlayStartOverTime.do",
	        data: JSON.stringify(paramData),
	        success: function (data, textStatus, jqXHR) {
	        	var msg = "";
	            var callbackFuncName = "";
	            var callbackFuncParam = "";

	        	//예매가능
	            if(data.bokdAbleYn == "Y"){
	            	// 예매차단 팝업 (예매가능여부 체크)
	            	fn_getBrchBokdUnablePopup(obj, 'schdl')
	            }
	            //예매불가능
	            else {
	            	msg = gfn_charToHtml(data.msg);	//상영 시작시간이 지나 예매가 종료되었습니다. 다른 상영스케줄을 선택해주세요.

	            	//scnType 빠른예매면 재호출 함수
	            	if(scnType == "simpleBokd"){
	            		callbackFuncName = fn_selectMovieFormDeBokdList;
	            	}
	            	//scnType 극장이면 재호출 함수
	            	else if(scnType == "brch"){
	            		callbackFuncName = MegaboxUtil.Brch.fn_selectMovieFormDeBokdList;
	            	}

	            	var options = {};
                    options.msg	  = msg;
                    options.callback = callbackFuncName;
                    options.param	= {confirm:callbackFuncParam};
                    options.minWidth	 = 400;
                    options.minHeight	= 250;
                    if(options.msg.indexOf('img') != -1){
                   	    options.isImportant = "Y";
                    } else{
                    	options.isImportant = "N";
                    }
                    gfn_alertMsgBox(options);
	            }
	        }
	});


}


//지점차단팝업조회
function fn_getBrchBokdUnablePopup(obj, type){
    var brchNo	= $(obj).attr("brch-no");
    var paramData = { brchNo:brchNo, sellChnlCd:parent.sellChnlCd};
    $.ajaxMegaBox({
     //	  url: "/on/oh/ohb/SimpleBooking/selectPlayScheduleList.do", 변경
        url: "/on/oh/ohb/SimpleBooking/selectBrchBokdUnablePopup.do",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            var msg = "";
            var callbackFuncName = "";
            var callbackFuncParam = "";
            var bokdAbleAt = data.brchBokdUnablePopup != null ? data.brchBokdUnablePopup.bokdAbleAt : "";
            if(bokdAbleAt == "N"){
                msg = localeCode == "en" ? data.brchBokdUnablePopup.popupEngMsg : data.brchBokdUnablePopup.popupKorMsg;
				if(typeof msg == 'undefined' || msg == null || msg == ''){
                    // 몹마일과 같은 메시지 처리 추가
                    gfn_alertMsgBox("극장 점검 중 입니다.\n잠시후 다시 이용해 주세요.");
                }
                else {
                    var options = {};
                    options.msg	  = msg;
                    options.callback = callbackFuncName;
                    options.param	= {confirm:callbackFuncParam};
                    options.minWidth	 = 400;
                    options.minHeight	= 250;
                    if(options.msg.indexOf('img') != -1){
                   	    options.isImportant = "Y";
                    } else{
                    	options.isImportant = "N";
                    }
                    gfn_alertMsgBox(options);
                }
            } else {
            	// 2019.07.29 hjchoi 상영시간표 > 예매가능여부 체크 후 20분미만 확인
            	if (type == "schdl") {
            		fn_valid20MinBlw(obj)
            	}
            	else if (type == "playTimeBrchChoi"){
            		fn_selectPlayTimeDetailList([obj,"brch",$(obj).attr("brch-type")]);
            	}
            	else { // 지점인 경우 빠른일자 검색
                	fn_selectMinBokdAbleDe(obj);
            	}
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}

//상영시간 20분 미만 체크
function fn_valid20MinBlw(obj){
    var playSchdlNo = $(obj).attr("play-schdl-no");
    var paramData = {'playSchdlNo' : playSchdlNo.toString()};

    $.ajaxMegaBox({
        url      : "/on/oc/ocz/commOn/selectBokdInfo.do"
       ,data     : JSON.stringify(paramData)
       ,success  : function (data, textStatus, jqXHR) {
            if (data.bokdInfo.bokdAt != 'Y') {
            	var options = {};
                options.msg	  = gfn_charToHtml(data.msg);//'<spring:message code="msg.ch.ohb.bokdCancelFieldGuide"/>';  //영화상영시간이 20분 미만으로 남아있어 예매 취소는 현장에서만 가능합니다. 예매하시겠습니까?
                options.confirmFn  = fn_selectMovieChoiPopup;
                options.cancelFn   = '';
                //options.okBtnTxt	 = "${SimpleBokdM_msg25}";
                //options.cancelBtnTxt = "${SimpleBokdM_msg26}";
                options.okBtnTxt	 = data.confirm;
                options.cancelBtnTxt = data.cancel;
                options.param	  = {confirm:obj, cancel:""} ;
                options.minWidth	 = 400;
                options.minHeight	= 250;

                if(options.msg.indexOf('img') != -1){
               	    options.isImportant = "Y";
                } else{
                	options.isImportant = "N";
                }
                gfn_confirmMsgBox(options);
                $('.layer-con').scrollTop(0);

            } else {
            	fn_selectMovieChoiPopup(obj);
            }
        }
        ,error   : function(xhr,status,error){
            gfn_alertMsgBox(xhr.status);
        }
    });
}

//영화선택팝업조회
function fn_selectMovieChoiPopup(obj){
    //var movieNo	 = $(obj).attr("movie-no");
    var rpstMovieNo = $(obj).attr("rpst-movie-no");
    var paramData = { movieNo:rpstMovieNo, mobileAt:"N"};

    $.ajaxMegaBox({
    //		url: "/on/oh/ohb/SimpleBooking/selectPlayScheduleList.do", 변경
        url: "/on/oh/ohb/PlayTime/selectMovieChoiPopup.do",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if(data.movieChoiPopup != null && typeof data.movieChoiPopup != 'undefined'){
                var msg = localeCode == "en" ? data.movieChoiPopup.popupEngMsg : data.movieChoiPopup.popupKorMsg;
                if(localeCode == "en" && (typeof msg == 'undefined' || msg == null || msg == '')){
                	// 2019.07.29 hjchoi
                    //fn_setMovieChoi([obj,"N"]);
                	fn_selectBrchChoiPopup(obj);
                }
                else {
                    var options = {};
                    options.msg	  = gfn_charToHtml(msg);

                 	// 2019.07.29 hjchoi
                    //options.callback = fn_setMovieChoi
                    //options.param	= {confirm:[obj,"N"]};
                    options.callback = fn_selectBrchChoiPopup
                    options.param	= {confirm:obj};

                    options.minWidth	 = 400;
                    options.minHeight	= 250;
                    if(options.msg.indexOf('img') != -1){
                   	    options.isImportant = "Y";
                    } else{
                    	options.isImportant = "N";
                    }
                    gfn_alertMsgBox(options);
                    $('.layer-con').scrollTop(0);
                }
            }
            else {
            	// 2019.07.29 hjchoi
            	//fn_setMovieChoi([obj,"N"]);
            	fn_selectBrchChoiPopup(obj);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}

//지점선택팝업조회
function fn_selectBrchChoiPopup(obj){
    //var spclbYn = typeof $(obj).attr("spclb-yn")  != 'undefined' ? $(obj).attr("spclb-yn") : "";
    //var areaCd  = spclbYn == "Y" ? $(obj).attr("ori-area-cd") : $(obj).attr("area-cd");
    //var type	= spclbYn == "Y" ? 'spcl' : 'area';
    var brchNo  = $(obj).attr("brch-no");

    // 2019.07.29 hjchoi 지역코드 검색조건 삭제
    //var paramData = { areaCd:areaCd, brchNo:brchNo, mobileAt:"N"};
    var paramData = { brchNo:brchNo, mobileAt:"N"};

    $.ajaxMegaBox({
    //		url: "/on/oh/ohb/SimpleBooking/selectPlayScheduleList.do", 변경
        url: "/on/oh/ohb/PlayTime/selectBrchChoiPopup.do",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if(data.brchChoiPopup != null && typeof data.brchChoiPopup != 'undefined'){
                var msg = localeCode == "en" ? data.brchChoiPopup.popupEngMsg : data.brchChoiPopup.popupKorMsg;
                if(localeCode == "en" && (typeof msg == 'undefined' || msg == null || msg == '')){
                	// 2019.07.29 hjchoi 상영관별 팝업 조회로 이동
                    //fn_setBrchChoi([obj, type,"Y"]);
                	fn_selectTheabChoiPopup(obj);
                }
                else {
                     var options = {};
                     options.msg	  = gfn_charToHtml(msg);

                  	 // 2019.07.29 hjchoi 상영관별 팝업 조회로 이동
                     //options.callback = fn_setBrchChoi
                     //options.param	= {confirm:[obj,type,"Y"]};
                     options.callback = fn_selectTheabChoiPopup
                     options.param	= {confirm:obj};

                     options.minWidth	 = 600;
                     options.minHeight	= 450;
                     if(options.msg.indexOf('img') != -1 || options.msg.length > 600){
                	    options.isImportant = "Y";
                     } else{
                     	options.isImportant = "N";
                     }
                     gfn_alertMsgBox(options);
                     $('.layer-con').scrollTop(0);
                }
            }
            else {
            	// 2019.07.29 hjchoi 상영관별 팝업 조회로 이동
                //fn_setBrchChoi([obj, type,"Y"]);
            	fn_selectTheabChoiPopup(obj);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}

//상영관선택팝업조회
function fn_selectTheabChoiPopup(obj){
    var brchNo  = $(obj).attr("brch-no");
    var theabNo = $(obj).attr("theab-no");

    var paramData = {brchNo:brchNo, theabNo:theabNo, mobileAt:"N"};
    $.ajaxMegaBox({
        url: "/on/oh/ohb/PlayTime/selectTheabChoiPopup.do",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if(data.theabChoiPopup != null && typeof data.theabChoiPopup != 'undefined'){
                var msg = localeCode == "en" ? data.theabChoiPopup.popupEngMsg : data.theabChoiPopup.popupKorMsg;
                if(localeCode == "en" && (typeof msg == 'undefined' || msg == null || msg == '')){
                	fn_selectPlaySeqChoiPopup(obj);
                }
                else {
                	var options = {};
                    options.msg	  = gfn_charToHtml(msg);
                    options.callback = fn_selectPlaySeqChoiPopup
                    options.param	= {confirm:obj};

                    options.minWidth	 = 600;
                    options.minHeight	= 450;
                    if(options.msg.indexOf('img') != -1 || options.msg.length > 600){
                   	    options.isImportant = "Y";
                    } else{
                    	options.isImportant = "N";
                    }
                    gfn_alertMsgBox(options);
                    $('.layer-con').scrollTop(0);
                }
            }
            else {
            	fn_selectPlaySeqChoiPopup(obj);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}


//상영관 회차 팝업조회
function fn_selectPlaySeqChoiPopup(obj){
	var playSchdlNo = $(obj).attr("play-schdl-no");
	var brchNo  = $(obj).attr("brch-no");
    var theabNo = $(obj).attr("theab-no");
    var playDe = $(obj).attr("play-de");
    var playSeq = $(obj).attr("play-seq");

    var paramData = {brchNo:brchNo, theabNo:theabNo, playDe:playDe, playSeq:playSeq, mobileAt:"N"};

    $.ajaxMegaBox({
        url: "/on/oh/ohb/PlayTime/selectPlaySeqChoiPopup.do",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if(data.playSeqChoiPopup != null && typeof data.playSeqChoiPopup != 'undefined') {
                var msg = localeCode == "en" ? data.playSeqChoiPopup.popupEngMsg : data.playSeqChoiPopup.popupKorMsg;
                if(localeCode == "en" && (typeof msg == 'undefined' || msg == null || msg == '')){
                    return;
                }
                else {
                    var options = {};
                    options.msg	  = gfn_charToHtml(msg);

                    //좌석도로 파라메타 전달
                    if (typeof $('#frameBokdMSeat').get(0) == 'undefined') { // 예매화면에서 호출
                    	options.callback = parent.fn_setSmapParam
                    	options.param	= {confirm:obj};
                    } else { // 기타화면에서 호출
                    	options.callback = fn_setSmapParam
                    	options.param        = {confirm : [playSchdlNo,'brch',brchNo]};
                    }

                    options.minWidth	 = 400;
                    options.minHeight	= 250;
                    if(options.msg.indexOf('img') != -1){
                   	    options.isImportant = "Y";
                    } else{
                    	options.isImportant = "N";
                    }
                    gfn_alertMsgBox(options);
                    $('.layer-con').scrollTop(0);
                }
            }
            else {
            	//좌석도로 파라메타 전달
            	if (typeof $('#frameBokdMSeat').get(0) == 'undefined') { // 예매화면에서 호출
                	parent.fn_setSmapParam(obj);
                } else { // 기타화면에서 호출
                	//fn_setSmapParam([playSchdlNo, 'brch']);
                	//fn_setSmapParam([playSchdlNo, scnType]);
                	fn_setSmapParam([playSchdlNo, 'default', brchNo]);
                }
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}
