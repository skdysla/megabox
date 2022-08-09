<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  ko_KR -->
        <!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<meta property="name" content=""/>
<meta property="keywords" content=""/>
<meta property="description" content=""/>

<meta property="fb:app_id" id="fbAppId" content=""/>
<meta property="fb:app_ver" id="fbAppVer" content=""/>
<meta property="og:site_name" content="메가박스"/>
<meta property="og:type" content="movie"/>
<meta property="og:title" content="" />
<meta property="og:description" content=""/>
<meta property="og:image" content="https://img.megabox.co.kr" />

<title></title>

</head>
<link rel="stylesheet" href="http://www.megabox.co.kr/static/pc/dist/megabox.min.css" media="all" />
	<script src="/static/pc/js/jquery-1.12.4.js"></script>
<script src="/static/pc/js/jquery-ui.1.12.1.js"></script>
<script src="/static/pc/js/gsaps.js"></script>
<script src="/static/pc/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/static/pc/js/bootstrap-custom.js"></script>
<script src="/static/pc/js/bootstrap-select.js"></script>

<!-- 넷퍼넬 -->
<script type="text/javascript" src="/js/netfunnel/netfunnel.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/netfunnel/netfunnel_skin.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/netfunnel/netfunnel_frm.js" charset="UTF-8"></script>

<script src="/js/megaboxCom.js"></script>
<script src="/js/common/mega.prototype.js"></script>
<script src="/js/common/commons.js"></script>

<!-- lib 추가 -->
<script src="/static/pc/js/swiper.min.js"></script>
<script src="/static/pc/js/masonry.pkgd.min.js"></script>

<script type="text/javascript">
    var _init = {
        cache   : Date.now(),
        path    : '/static/pc/js/'
    };
    document.write(
        '<script src="'+_init.path+'ui.common.js?v='+_init.cache+'"><\/script>'+
        '<script src="'+_init.path+'front.js?v='+_init.cache+'"><\/script>'
    );

    //링크 구분에 따라 url 이동을 한다.
    function fn_goMoveLink(link_gbn, link_url) {
        alert("준비중 입니다");
        return;
    }
</script>

<script type="text/javascript">
var debug = "N";
var fn_debugger = function(){ if ( debug == "") { debugger; }}
var localeCode = 'kr';
var entrpMbCd = "";
var tkeYn = "N";

var noTke = 'N';


var seat = {};  
seat.classCodeT = {

     "GERN_CLS"     :  [ "common"   ,  "일반석"         , "(영)일반석"         , "clsGernAmt"    , 1           ,1             ,'A0'        ,"Y"              , 'N'         , 'N'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ], 
     "DISABLED_CLS" :  [ "disabled" ,  "장애인/휠체어석", "(영)장애인/휠체어석", "clsDisabledAmt", 2           ,1             ,'A0'        ,"N"              , 'Y'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ], 
     "KIDS_CLS"     :  [ "kids"     ,  "키즈석"         , "(영)키즈석"         , "clsKidsAmt"    , 3           ,1             ,'A0'        ,"N"              , 'N'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "A,Y,N,S" ],
     "TABLE_CLS"    :  [ "table"    ,  "테이블석"       , "(영)테이블석"       , "clsTableAmt"   , 4           ,1             ,'D1'        ,"N"              , 'N'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ], 
     "2P_CLS"       :  [ "sofa2"    ,  "2인소파석"      , "(영)2인소파석"      , "cls2pAmt"      , 5           ,2             ,'E1'        ,"N"              , 'Y'         , 'Y'         , [1,2]               , "N,Y,C,S" ], 
     "4P_CLS"       :  [ "sofa4"    ,  "4인소파석"      , "(영)4인소파석"      , "cls4pAmt"      , 6           ,4             ,'F1'        ,"N"              , 'Y'         , 'Y'         , [1,2,3,4]           , "N,Y,C,S" ], 
     "BALCONY_CLS"  :  [ "balcony"  ,  "발코니석"       , "(영)발코니석"       , "clsBalconyAmt" , 7           ,4             ,'G1'        ,"N"              , 'Y'         , 'Y'         , [1,2,3,4]           , "N,Y,C,S" ], 
     "BALCONY2_CLS" :  [ "balcony-d",  "발코디럭스석"   , "(영)발코디럭스석"   , "clsBalcony2Amt", 8           ,4             ,'H1'        ,"N"              , 'Y'         , 'Y'         , [1,2,3,4]           , "N,Y,C,S" ], 
     "BALCONY2P_CLS" :  [ "balcony2p",  "발코디2인석"   , "(영)발코디2인석"   , "clsBalcony2pAmt", 9           ,2             ,'H1'        ,"N"              , 'Y'         , 'Y'         , [1,2]           , "N,Y,C,S" ], 
     "BALCONY3P_CLS" :  [ "balcony3p",  "발코디3인석"   , "(영)발코디3인석"   , "clsBalcony3pAmt", 10           ,3             ,'H1'        ,"N"              , 'Y'         , 'Y'         , [1,2,3]           , "N,Y,C,S" ], 
     "ROYAL_CLS"    :  [ "royal"    ,  "로얄석"         , "(영)로얄석"         , "clsRoyalAmt"   , 11           ,1             ,'I1'        ,"N"              , 'N'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ], 
     "SPECIAL_CLS"  :  [ "special"  ,  "스페셜석"       , "(영)스페셜석"       , "clsSpecialAmt" ,12           ,1             ,'J1'        ,"N"              , 'N'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ],
     "SWEET_CLS"    :  [ "sweet"    ,  "스위트석"       , "(영)스위트석"       , "clsSweetAmt"   ,13           ,1             ,'K1'        ,"N"              , 'N'         , 'Y'         , [1,2,3,4,5,6,7,8]   , "N,N,N,N" ], 
     "COUPLE_CLS"   :  [ "couple"   ,  "커플석"         , "(영)커플석"         , "clsCoupleAmt"  ,14           ,1             ,'L1'        ,"N"              , 'N'         , 'Y'         , [2,4,6,8]           , "N,N,C,N" ]  
};
seat.classCode = {};

seat.classCode.field = {};
seat.classCode.field.css              =  0;  
seat.classCode.field.nameKr           =  1;  
seat.classCode.field.nameUs           =  2;  
seat.classCode.field.amtName          =  3;  
seat.classCode.field.orderNo          =  4;  
seat.classCode.field.seatToCnt        =  5;  
seat.classCode.field.crsChoi          =  6;  
seat.classCode.field.zoneAdoptAt      =  7;  
seat.classCode.field.connExcp         =  8;  
seat.classCode.field.deadExcp         =  9;  
seat.classCode.field.choiAbleCnt      = 10;  
seat.classCode.field.notTicketAbleAt  = 11;  
seat.classCode.field.name = ( localeCode ==  'kr' ? seat.classCode.field.nameKr : seat.classCode.field.nameUs);



seat.classCode.deadExcp     = "";  
seat.classCode.connExcp     = "";  
seat.classCode.choiAbleList = [];  
seat.classCode.crsChoiMap   = {};  
seat.choiAbleCntArray       = {};  
seat.classCode.getCdList = function(index, ynAt) {
    ynAt = ynAt || "Y";
    return $(Object.entries(seat.classCode)).map(function(i,o) { if (o[1][index] == ynAt ) { return o[0] } else { return null;}});
}

seat.zoneCd = { 
    "GERN_ZONE" : [ "standard", "스탠다드" ,0                , "Y" ,],
    "ECON_ZONE" : [ "economy" , "이코노미" ,1                , "Y" ,],
    "PRIM_ZONE" : [ "premium" , "프리미엄" ,2                , "Y" ,]
};
seat.choiZoneMap   = {};    
seat.zoneList      = [];    
seat.zoneList_init = function() {
    seat.zoneList  = [];
    seat.zoneList = $(Object.entries(seat.zoneCd)).sort(function(b,a) { return a[1][2] - b[1][2]; }).map(function(i,o) {
        if (o[1][3] == "Y" ) {
            var rtnMap      = {};
            rtnMap.zoneCd   = o[0];
            rtnMap.orderNo  = o[1][2];
            rtnMap.totCount = 0;
            return rtnMap;
        } else {
            return null;
        }
    });
}


seat.sellTyCode = {
        "GERN_SELL"  : [""           , "판매가능"],
        "SPARE_SELL" : ["finish"     , "예약완료"],
        "STOP_SELL"  : ["impossible" , "선택불가"]
};


seat.gateTyCd = {
    "GTL"  : ["/static/pc/images/reserve/img-door-left.png"       , "좌측"    , "(영)좌측"    ],
    "GTR"  : ["/static/pc/images/reserve/img-door-right.png"      , "우측"    , "(영)우측"    ],
    "GTU"  : ["/static/pc/images/reserve/img-door-top.png"        , "상단측"  , "(영)상단측"  ],
    "GTD"  : ["/static/pc/images/reserve/img-door-bottom.png"     , "하단측"  , "(영)하단측"  ],
    "GTLR" : ["/static/pc/images/reserve/img-door-left-right.png" , "좌우측"  , "(영)좌우측"  ],
    "GTUD" : ["/static/pc/images/reserve/img-door-top-bottom.png" , "상하단측", "(영)상하단측"],
    _initDoorClass : "mCS_img_loaded"
};


seat.init = function(){
    seat.classCode.deadExcp     = seat.classCode.getCdList(seat.classCode.field.deadExcp).get().join(":");  
    seat.classCode.connExcp     = seat.classCode.getCdList(seat.classCode.field.connExcp).get().join(":");  
    seat.classCode.choiAbleList = [];  
    seat.choiAbleCntArray       = {};  
    seat.zoneList_init();              
    seat.choiZoneMap            = {};  
}

var ticket     = {};  
ticket.amtType = "";  
ticket.GERN_ZONE = [2  ,"zoneGernAmt"    ,2  ];   
ticket.ECON_ZONE = [3  ,"zoneEconAmt"    ,1  ];   
ticket.PRIM_ZONE = [4  ,"zonePrimAmt"    ,3  ];   
ticket.grpPayList       = [];                 
ticket.grpPayList_setTotCount = function(){   
    ticket.grpPayList.each(function(i,map) {
        map.totCount = parseInt($("div.number > button[ticketGrpCd='" + map.grpCd + "']").text());
    });
}

ticket.payQueue = [];


ticket.init = function(){
    ticket.payQueue = [];
}


var seatInitVal = {
    _initLeft      :110,                          
    _initTop       : 30,                          
    _width         : 20,                          
    _height        : 20,                          
    _stepWidth     : 20,                          
    _stepHeight    : 20,                          
    _reWidth       :  0,                          
    _colSize       :  0,                          
    _initClass     : "jq-tooltip seat-condition"  
};

var seatInitRowNm = {
    _left       : 85,                      
    _top        : 32,                      
    _stepHeight : seatInitVal._stepHeight  
};


var seatMapInfo  = {
    MAX_PERSON    : 8,             
    totCount      : 0,             
    selectedCount : 0,             
    selectedMap   : {},            
    fn_init       : function() {   
        this.totCount      = 0;
        this.selectedCount = 0;
        this.selectedMap   = {};
    },
    get activeCount() {            
        return this.totCount - this.selectedCount;
    }
}


var playTimesDivPopupMsg = "";



var seatTicketCdPopupMsg = [];


var movieAdmisClassCd = "";


  var fn_seatPolicy = function(List){
      var policy = List.SeatPolicyList;
      for (var i = 0; i < policy.length; i++) {
          policyInfo = policy[i];
          if ( policyInfo ) {
              //seat.classCode[policyInfo.classCode] = [policyInfo.class,    policyInfo.nameKor,     policyInfo.nameEng,        policyInfo.amtName, policyInfo.orderNo,    policyInfo.seatToCnt,   policyInfo.crsChoi,    policyInfo.zoneAdoptAt, policyInfo.connExcp,    policyInfo.deadExcp,    eval(policyInfo.choiAbleCnt),     policyInfo.notTicketAbleAt];
        	  seat.classCode[policyInfo.seatClassCd] = [policyInfo.classVal, policyInfo.seatClassNm, policyInfo.seatClassEngNm, policyInfo.pcNm,    policyInfo.sortOrdVal, policyInfo.seatPcntCnt, policyInfo.choiGrpVal, policyInfo.zoneAdoptAt, policyInfo.connExcpVal, policyInfo.choiExcpVal, eval(policyInfo.choiAbleSeatCnt), policyInfo.bnduntChoiAt];
          }
      }
  }

var fn_seatMapDisplay = function(result){
    seat.init();                                                                             
    ticket.init();                                                                           
    seatMapInfo.fn_init();                                                                   

    // 지점별 인원 SET
    seatMapInfo.MAX_PERSON = result.maxTicketCnt;
    // 기업회원
    if(typeof result.entrpInfo != "undefined"){
    	// 유효하고 정책에 맞는 요금이 존재
    	if(result.entrpInfo.useAt == "Y" && result.entrpInfo.entrpAmt != null){
    		result["seatTicketAmtList"].unshift(result.entrpInfo.entrpAmt);
    		entrpMbCd = result.entrpInfo.entrpMbCd;

    		// 일반요금이 존재 하는 경우( 0원 이상 )
    		if(result.seatTicketAmtList[1].clsGernAmt > 0){
        		// 군인요금이 일반성인요금보다 높으면...
        		if(result.seatTicketAmtList[0].clsGernAmt > result.seatTicketAmtList[1].clsGernAmt){
        			noTke = "Y";
        		}
    		}

    	}else if(result.entrpInfo.useAt == "N"){
    		// 기업회원이지만 유효기간만료.
	        gfn_confirmMsgBox('기업회원 유효기간이 만료되었습니다. 기업회원요금으로 예매하시려면 재 인증 해주세요.', function() {
	        	fn_deleteEntpInfo(result.entrpInfo);
        	});
    	}
    }

    fn_setSeatAmt(result["seatTicketAmtList"],result["seatClassCdList"]);                    

    fn_ticketDisplay();                                                                      
    fn_seatDisplaySD01(result["seatListSD01"],result["seatInfoSD01"]);                       
    fn_seatEvent();                                                                          
    fn_seatDisplaySD05(result["seatListSD05"]);                                              

    // 임시 안심띄어앉기석 이 존재하면 범례추가를 위해
    var pos = false;
    for (var i = 0; i < result.seatListSD01.length; i++){
    	if (result.seatListSD01[i].seatStatCd == "STOP_SELL"){
    		pos = true;
    		break;
    	}
    }

    fn_choiAbleListDisplay(pos);                                                                
    fn_myseat();                                                                             
    fn_choiZoneListDisplay();                                                                
    fn_movieDtlInfoDisplay(result["movieDtlInfo"],result["playSeqList"]);                    
    result.popUp.movieDtlInfo = result["movieDtlInfo"];                                      
    fn_popUp(result.popUp);                                                                  
}

var fn_popUp = function(popUp){
    
    if ( popUp.playTimesDivPopup != null ) {
        msg = localeCode == "en" ? popUp.playTimesDivPopup.popupEngMsg : popUp.playTimesDivPopup.popupKorMsg;
        if ( msg != null) {
        playTimesDivPopupMsg = msg;
        }
    }
    
    if ( popUp.seatClassCdPopUpMap != null ) {
        var seatClassPopupList = Object.entries(popUp.seatClassCdPopUpMap).map(function(o,i){ return { seatClassCd : o[0], popupWebKorMsg : localeCode ==  'kr' ? o[1].popupWebKorMsg : o[1].popupWebEngMsg };});
        if ( seatClassPopupList.length == 0 ) {
            if ( !$("div.seat-area").hasClass("has-alert") ) $("div.seat-area").removeClass("has-alert");
        } else {
            if ( !$("div.seat-area").hasClass("has-alert") ) $("div.seat-area").addClass("has-alert");
            $("div.seat-layout > div.alert").html("");
            var alertHtml = "";
            seatClassPopupList.forEach(function(o) {
                alertHtml += " <div class='box-alert'> <strong>[알림]</strong>";
                alertHtml += " <span>" + gfn_charToHtml(o.popupWebKorMsg) + "</span>";
                alertHtml += " <button type='button' class='btn-close-small'>삭제</button>";
                alertHtml += " </div>";
            });
            $("div.seat-layout > div.alert").html(alertHtml);
            $("div.seat-layout > div.alert").show();
        }
    }
    
    if ( popUp.seatTicketCdPopupMap != null ) {

        Object.entries(popUp.seatTicketCdPopupMap).forEach(function(o,i) {
            msg = localeCode == "en" ? o[1].popupEngMsg : o[1].popupKorMsg;

            seatTicketCdPopupMsg.push({ticketCd : o[1].ticketCd,  Msg : msg})
        });

    }
    
    if ( popUp.rfndDivPopup != null ) {
        msg = localeCode == "en" ? popUp.rfndDivPopup.popupEngMsg : popUp.rfndDivPopup.popupKorMsg;
        if ( msg != null) {
            var options = {};
            options.msg   = gfn_charToHtml(msg);
            options.minWidth     = 500;
            options.minHeight    = 250;
            gfn_alertMsgBox(options);
        }
        //$("div.wrap > div.layer-con").children("p").addClass("scroll");
        $("div.wrap > div.layer-con").children("p.txt-common").addClass("scroll");

    }
    
    if ( popUp.movieAdmisClassPopup != null ) {
        var alertAgeLayerHtml = "";
        var classNum = popUp.movieDtlInfo.admisClassCd ? ["all","12","15","19","",""][["AD01","AD02","AD03","AD04","AD05","AD06"].indexOf(popUp.movieDtlInfo.admisClassCd)] : "" ;
        var classNm = classNum;

        if ( classNum != "" ) {
			if(classNum == "all") classNm = "All";

            alertAgeLayerHtml += " <div class='alert-age-layer " + "age" + classNum + "'>";
            alertAgeLayerHtml +=     " <div class='age-box " + "age-" + classNum + "'>";
            alertAgeLayerHtml +=         " <div class='left'>";
            alertAgeLayerHtml +=             " <p class='circle'>" + classNm + "</p>";
            alertAgeLayerHtml +=         " </div>";
            alertAgeLayerHtml +=         " <div class='right'>";
            alertAgeLayerHtml +=             " <p class='tit'>" + popUp.movieDtlInfo.admisClassName + "</p>";
            alertAgeLayerHtml +=             " <p class='txt'></p>";
            alertAgeLayerHtml +=         " </div>";
            alertAgeLayerHtml +=     " </div>";
            alertAgeLayerHtml += " </div>";
            $("section#layer_age_alert > div.wrap > div.layer-con").html(alertAgeLayerHtml);
            $("section#layer_age_alert > div.wrap > div.layer-con > div.alert-age-layer > div.age-box > div.right > p.txt").html($.parseHTML( localeCode ==  'kr' ? popUp.movieAdmisClassPopup.popupWebKorMsg : popUp.movieAdmisClassPopup.popupWebEngMsg)[0].textContent);
            $("section#layer_age_alert").attr("style", "z-index: 900");
            $modal('layer_age_alert');
        }
    }
}



var fn_setSeatAmt = function(seatTicketAmtList,seatClassCdList){
    var amtName         = "";                            
    ticket.grpPayList   = [];
    ticket.grpPayList   = $(seatTicketAmtList.map(function(o,i){
        var rtnMap      = {};
        rtnMap.grpCd    = o.ticketKindCd;
        rtnMap.ticketOrder    = o.ticketOrder;
        rtnMap.grpNm    = ( localeCode ==  'kr' ? o.ticketTypeName : o.ticketTypeNameEng );
        rtnMap.totCount = 0;
        rtnMap[ticket.ECON_ZONE[1]] = o[ticket.ECON_ZONE[1]];   
        rtnMap[ticket.GERN_ZONE[1]] = o[ticket.GERN_ZONE[1]];   
        rtnMap[ticket.PRIM_ZONE[1]] = o[ticket.PRIM_ZONE[1]];   
        seatClassCdList.forEach(function(p,i) {
      
            amtName   = seat.classCode[p.seatClassCd         ][seat.classCode.field.amtName  ];
            rtnMap[amtName] = o[amtName] ;
           });
        return rtnMap;
    }));
}


var fn_ticketDisplay = function(){
    $("div.seat-count").html("");
    var ticketLayoutHtml = "";
    for ( var i = 0 ; i < ticket.grpPayList.length ; i ++ ) {
        var map = ticket.grpPayList[i];
        ticketLayoutHtml += "<div class='cell'>";
        ticketLayoutHtml += "<p class='txt'>" + map.grpNm + "</p>";
        ticketLayoutHtml += "<div class='count'>";
        ticketLayoutHtml += "<button type='button' class='down' title='" + map.grpNm + " 좌석 선택 감소'>-</button>";
        ticketLayoutHtml += "<div class='number'>";
        ticketLayoutHtml += "<button type='button' class='now' title='" + map.grpNm + " 현재 좌석 선택 수' ticketGrpCd='" + map.grpCd + "'>0</button>";
        ticketLayoutHtml += "<ul class='num-choice'>";
        ticketLayoutHtml += $(Array(seatMapInfo.MAX_PERSON + 1)).map(function(i){return "<li><button type='button' class='btn" + ( i == 0 ? " on" :"" )  + "'>" + i + "</button></li>";}).get().join(" ")
        ticketLayoutHtml += "</ul>";
        ticketLayoutHtml += "</div>";
        ticketLayoutHtml += "<button type='button' class='up' title='" + map.grpNm + " 좌석 선택 증가'>+</button>";
        ticketLayoutHtml += "</div>";
        ticketLayoutHtml += "</div>";
    }
    $("div.seat-count").html(ticketLayoutHtml);
    fn_ticketEvent();
}


var fn_seatDisplaySD01 = function(seatList,info){
    var cellInfo;           
    seatInitVal._colSize    = info.colNoMax - info.colNoMin + 1;      
    seatInitVal._reWidth    = parseInt(($("div#seatLayout").width() - ( seatInitVal._colSize * seatInitVal._width ) ) / 2 ) - 0;  
    seatInitVal._initLeft   = seatInitVal._reWidth;                   
    seatInitRowNm._left     = seatInitVal._reWidth - 25;              

    var layoutHight         = info.rowNoMax * seatInitVal._stepHeight + seatInitVal._initTop+20; 
//                            + seatInitVal._initTop ;

    var _title              = "";                       
    var _class              = "";                       
    var _left               =  0;                       
    var _top                =  0;                       
    var _width              =  0;                       
    var _attr               = "";                       
    var _stylePosition      = "";                       
    var _stylePositionRowNm = "";                       
    var sd01Seat            = [];                       
    var choiAblefilterList  = [];                       
    var seatToCnt           =  0;                       
    seatList.forEach(function(cellInfo,i) {
        if ( cellInfo ) { 
            try {
               
                seatToCnt = seat.classCode[cellInfo.seatClassCd][seat.classCode.field.seatToCnt];

               
                choiAblefilterList = seat.classCode.choiAbleList.filter(function(o,i) { return o.seatClassCd == cellInfo.seatClassCd ;});
                if ( choiAblefilterList.length < 1 ) {
                    
                    seat.classCode.choiAbleList.push({ seatClassCd : cellInfo.seatClassCd , count : seatToCnt , selectCount : 0 , crsChoiGroup : seat.classCode[cellInfo.seatClassCd][seat.classCode.field.crsChoi]});
                } else {
                    
                    choiAblefilterList[0].count += seatToCnt;
                }
                
                if ( seat.choiZoneMap[cellInfo.seatZoneCd] ) {
                    seat.choiZoneMap[cellInfo.seatZoneCd].count += seatToCnt;
                } else {
                
                    seat.choiZoneMap[cellInfo.seatZoneCd] = {};
                    seat.choiZoneMap[cellInfo.seatZoneCd].count = seatToCnt;
                }
                
                _class              = seatInitVal._initClass              + " ";
                _class             += seat.zoneCd[cellInfo.seatZoneCd][0] + " ";
                
                 if ( cellInfo.seatStatCd == "GERN_SELL" ) {
                     _class        += seat.classCode[cellInfo.seatClassCd][seat.classCode.field.css];
                 } else if(cellInfo.seatStatCd == "STOP_SELL"){
                	 _class        += "finish pos";
                 } else {
                     _class        += "finish";
                 }
                _left               = seatInitVal._initLeft  + ( seatInitVal._stepWidth  * ( cellInfo.horzCoorVal ) );  
                _top                = seatInitVal._initTop   + ( seatInitVal._stepHeight * ( cellInfo.vertCoorVal ) );  
                _width              = seatInitVal._width * parseInt(cellInfo.horzSizeRt );                              
                if ( seatToCnt > 1 ) {
                    _width              = seatInitVal._width * parseInt( seatToCnt );
                    if ( cellInfo.seatChoiGrpSeq > 1 ) {
                        //return true;
                    }
                }
                
                _stylePosition      = "' style='position:absolute; left:" + _left + "px; top:" + _top + "px; width:" + _width + "px;' ";
                
                _left               = seatInitRowNm._left;
                _top                = ( ( seatInitRowNm._stepHeight * cellInfo.vertCoorVal ) + seatInitRowNm._top );
                _stylePositionRowNm = "' style='position:absolute; left:" + _left + "px; top:" + _top + "px;'";   
                _attr   = Object.entries(seat.classCode).filter(function(o,i) { return o[1][seat.classCode.field.seatToCnt] > 1 && o[0] == cellInfo.seatClassCd ;}).length > 0 ? seat.classCode[cellInfo.seatClassCd][seat.classCode.field.css] + "_seatGrpNo_" + cellInfo.seatGrpNo : "";
                _attr   = ( _attr ==  "" ) ? "" : " seatGrpNo="       + _attr;
                _attr  += " seatClassCd='"     + cellInfo.seatClassCd     + "'";    
                _attr  += " seatZoneCd='"      + cellInfo.seatZoneCd      + "'";    
                _attr  += " seatUniqNo='"      + cellInfo.seatUniqNo      + "'";    
                _attr  += " rowNm='"           + cellInfo.rowNm           + "'";    
                _attr  += " seatNo='"          + cellInfo.seatNo          + "'";    
                _attr  += " seatChoiDircVal='" + cellInfo.seatChoiDircVal + "'";    
                _attr  += " seatChoiGrpNo='"   + cellInfo.seatChoiGrpNo   + "'";    
                _attr  += " seatChoiGrpNm='"   + cellInfo.seatChoiGrpNm   + "'";    
                _attr  += " seatChoiRowCnt='"  + cellInfo.seatChoiRowCnt  + "'";    
                _attr  += " seatChoiGrpSeq='"  + cellInfo.seatChoiGrpSeq  + "'";    
                _attr  += " seatToCnt='"       + seatToCnt                + "'";    
                _attr  += ( cellInfo.seatNotiMsg != "" && cellInfo.seatNotiMsg != null ? " seatNotiMsg='" + cellInfo.seatNotiMsg + "'" : "" );

                
                _title  = cellInfo.rowNm + "" + cellInfo.seatNo + " (" + seat.zoneCd[cellInfo.seatZoneCd][1] + "/" + seat.classCode[cellInfo.seatClassCd][seat.classCode.field.name] + ")";
                
                if ( !sd01Seat[cellInfo.rowNo] ) sd01Seat[cellInfo.rowNo] = " <button type='button' class='btn-seat-row' title='" + cellInfo.rowNm + " 행" + _stylePositionRowNm + ">" + cellInfo.rowNm + "</button>"
                
                sd01Seat[cellInfo.rowNo] += "<button type='button' title='" + _title + "' class='" + _class + _stylePosition + _attr + ">";
                sd01Seat[cellInfo.rowNo] += "<span class='num'>" + cellInfo.seatNo + "</span>";
                sd01Seat[cellInfo.rowNo] += "<span class='kind'>" + seat.zoneCd[cellInfo.seatZoneCd][1] + "</span>";
                sd01Seat[cellInfo.rowNo] += "<span class='condition'>" + seat.sellTyCode[cellInfo.seatSellTyCd][1] + "</span>";
                sd01Seat[cellInfo.rowNo] += "<span class='rank'>" + seat.classCode[cellInfo.seatClassCd][seat.classCode.field.name] + "</span>";
                sd01Seat[cellInfo.rowNo] += "</button>";
            } catch (e) {
                console.log(e);
            }
        }
    });
    
    seat.classCode.choiAbleList.sort(function(a,b) {
        return seat.classCode[a.seatClassCd][seat.classCode.field.orderNo] - seat.classCode[b.seatClassCd][seat.classCode.field.orderNo];
    });

    //$("div#seatLayout").css("height" , "600px");
    $("div#seatLayout").css("height" , layoutHight + "px");
    $(".seat-select-section .seat-section .seat-area .seat-layout .scroll .mCSB_container").css("height" , layoutHight+"px");
    $("div#seatLayout").children().not("[alt='screen']").remove();                  
    $("div#seatLayout").append("<div class'row'>" + sd01Seat.join(" ") + "</div>"); 
    $("div#seatLayout").show();

    $('.m-scroll').mCustomScrollbar('update');

};

var fn_seatDisplaySD05 = function(list){
    var cellInfo;                    
    var _alt           = " 출입구";  
    var _src           = "";         
    var _left          =  0;         
    var _top           =  0;         
    var _width         =  0;         
    var stylePosition  = "";         
    var doorLayoutHtml = "";         
    for (var i = 0; i < list.length; i++) {
        cellInfo = list[i];
        if ( cellInfo ) {
            _alt   = seat.gateTyCd[cellInfo.gateTyCd][1] + _alt;
            _src   = seat.gateTyCd[cellInfo.gateTyCd][0];
            
            _left  = seatInitVal._initLeft + ( seatInitVal._stepWidth  * ( cellInfo.horzCoorVal + cellInfo.horzPosiRt) );
            _top   = seatInitVal._initTop  + ( seatInitVal._stepHeight * ( cellInfo.vertCoorVal + cellInfo.vertPosiRt) );
            _width = seatInitVal._width    * parseInt(cellInfo.horzSizeRt );
            stylePosition = "' style='position:absolute; left:" + _left + "px; top:" + _top + "px; width:16px; height: 16px;'";
            doorLayoutHtml += " <img src='" + _src + "' alt='" + _alt + stylePosition + "/>";
        }
    }
    $("div#seatLayout").append(doorLayoutHtml);
};


var fn_choiAbleListDisplay = function(pos){
    var choiAbleHtml = "";
    $("div.choice-seat-area div.legend ul.list").html(choiAbleHtml);
    choiAbleHtml += " <li><div class='seat-condition choice'     title='선택한 좌석'></div> <em>선택</em></li>";
    choiAbleHtml += " <li><div class='seat-condition finish'     title='예매 완료'  ></div> <em>예매완료</em></li>";
    choiAbleHtml += " <li><div class='seat-condition impossible' title='선택 불가'  ></div> <em>선택불가</em></li>";
    if(pos){
    	choiAbleHtml += "<li><div class='seat-condition pos' title='띄어앉기석'></div> <em>띄어앉기석</em></li>";
    }
    choiAbleHtml += seat.classCode.choiAbleList.map(function(o,i) { return " <li><div class='seat-condition " + seat.classCode[o.seatClassCd][seat.classCode.field.css] + "' title='" + seat.classCode[o.seatClassCd][seat.classCode.field.name] + "'></div> <em> " + seat.classCode[o.seatClassCd][seat.classCode.field.name] + "</em></li>"}).join(" ");
    $("div.choice-seat-area div.legend ul.list").html(choiAbleHtml);
}

var fn_movieDtlInfoDisplay = function(moveInfo,playSeqList){
    var brchNo = moveInfo.brchNo;
    $('#brchNo').val(brchNo);	//블랙리스트 체크를 위한 파라메타

    var classID = moveInfo.admisClassCd ? ["age-all","age-12","age-15","age-19","age-no","age-no"][["AD01","AD02","AD03","AD04","AD05","AD06"].indexOf(moveInfo.admisClassCd)] : "age-no" ;
    var admisClassName , movieNm, playKindName, brchNm,theabNm,movieEventTyName,areaName,playDowNm;

    //전역 변수 (영화관람등급 Setting)
    movieAdmisClassCd = moveInfo.admisClassCd;


    if ( localeCode ==  'kr' ) {
        admisClassName   = moveInfo.admisClassName  ;
        movieNm          = moveInfo.movieNm         ;
        childMovieNm          = moveInfo.childMovieNm         ;
        playKindName     = moveInfo.playKindName    ;
        brchNm           = moveInfo.brchNm          ;
        theabNm          = moveInfo.theabExpoNm     ;
        movieEventTyName = moveInfo.movieEventTyName;
        areaName         = moveInfo.areaName        ;
        playDowNm        = moveInfo.playDowNm       ;
    } else {
        admisClassName   = moveInfo.admisClassNameEng  ;
        movieNm          = moveInfo.movieNmEng         ;
        playKindName     = moveInfo.playKindNameEng    ;
        brchNm           = moveInfo.brchEngNm          ;
        theabNm          = moveInfo.theabNmEng         ;
        movieEventTyName = moveInfo.movieEventTyNameEng;
        areaName         = moveInfo.areaNameEng        ;
        playDowNm        = moveInfo.playDowNmEng       ;
    }

    $("div.tit-area  > span.movie-grade").addClass(classID).text(admisClassName);
    $("div.tit-area  > p.tit"           ).html(childMovieNm);
    $("div.tit-area  > p.cate"          ).text((localeCode ==  'kr' ? gfn_charToHtml(moveInfo.playKindName) : gfn_charToHtml(moveInfo.playKindNameEng) ) + ( moveInfo.movieEventTyCd != null ? "/" + movieEventTyName :"" ));
    $("div.info-area > p.theater"       ).text(gfn_charToHtml(brchNm));
    $("div.info-area > p.special"       ).text(gfn_charToHtml(theabNm));
    $("div.info-area > p.date"          ).html("<span>" + moveInfo.playDe.maskDate() + "</span>" + "<em>(" +  playDowNm + ")</em>");
    $("div.info-area > div.other-time > button.now").html(moveInfo.playStartTime.maskTime() + "~" + moveInfo.playEndTime.maskTime() + "<i class='arr'></i>");
    $("div.info-area > div.other-time > ul.other").html(playSeqList.reduce(function(a,o){
        a += "<li><button type='button' choiCnt='" + o.choiCnt + "' playSchdlNo='" + o.playSchdlNo + "' class='btn" + ( o.playSchdlNo == moveInfo.playSchdlNo ? " on" : "" )  + " '>" + o.playStartTime.maskTime() + "~" + o.playEndTime.maskTime() + "</button></li>";
        return a;
    },""));
    $("div.seat-result p.poster img").attr({'src': nvl(moveInfo.imgPath).posterFormat('_150'),'alt': childMovieNm});

/*
    for ( var i = 0 ; i < $('.seat-select-section .seat-section .seat-area .seat-count').children().length ; i ++) {
        var ticketGrpCd     = $(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count > div.number").children("button").attr("ticketGrpCd");
        var ticketGrpCnt    = parseInt($(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count > div.number").children("button").text());
        if (movieAdmisClassCd == 'AD04' && (ticketGrpCd=='TKY' || ticketGrpCd=='TKC') ){
            $(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count").children("button").attr("disabled","disabled");
        	$(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count > div.number").children("button").attr("disabled","disabled");
        }
    }
*/
    
    $("div.info-area > div.other-time > ul.other > li > button.btn").unbind("click").bind("click",function(){
        $("#playSchdlNo").val($(this).attr("playSchdlNo"));;
        if ( parseInt($(this).attr("choiCnt")) < seatMapInfo.totCount ) {
            gfn_alertMsgBox("해당 회차의 잔여 좌석수가 부족합니다.");
        } else {
            $("div.info-area > div.other-time > ul.other > li > button.btn").removeClass("on");
            $("div.info-area > div.other-time > button.now").html(" " + $(this).text() + "<i class='arr'></i>");
            $("div.info-area > div.other-time > button.now > i.arr").click();
            $(this).addClass("on");
            fn_search();
        }
    });
}


var fn_choiZoneListDisplay = function(){
    var choiZoneHtml = "";
    $("div.zone-legend").hide();
    $("div.zone-legend").html(choiZoneHtml);
    if ( Object.entries(seat.choiZoneMap).length <= 1 ) {
        if ( !$("div.seat-area").hasClass("has-zone-legend") ) $("div.seat-area").removeClass("has-zone-legend");
        return;
    } else {
        choiZoneHtml += Object.entries(seat.choiZoneMap).sort(function(a,b){ return seat.zoneCd[a[0]][2] - seat.zoneCd[b[0]][2];}).map(function(o,i) { return "<div class='label " + seat.zoneCd[o[0]][0] + "'>" + seat.zoneCd[o[0]][1] + "</div>" }).join(" ");
        $("div.zone-legend").html(choiZoneHtml);
        if ( !$("div.seat-area").hasClass("has-zone-legend") ) $("div.seat-area").addClass("has-zone-legend");
        $("div.zone-legend").show();
        $('.m-scroll').mCustomScrollbar('update');
    }
}


var fn_seatEvent = function(){
     
    $('button.seat-condition').unbind('mouseenter focus').bind('mouseenter focus', function(){
        if ( seatMapInfo.totCount == 0 || seatMapInfo.activeCount == 0) return false;   
        var seatClassCd = $(this).attr("seatClassCd");                                  
        if ( typeof(seat.choiAbleCntArray[seatClassCd]) == "undefined" ) {              
            seat.choiAbleCntArray[seatClassCd] = seat.classCode[seatClassCd][seat.classCode.field.choiAbleCnt];
        }
        var choiAbleCnt = seat.choiAbleCntArray[seatClassCd];

        if ( choiAbleCnt.indexOf(seatMapInfo.activeCount) < 0 ) return false;

        if( !$(this).hasClass('finish') && !$(this).hasClass('impossible') ){
            $(this).addClass('on');
            if ( seatMapInfo.activeCount > 1 ) {   
                if ($(this).is("[nextOrd]") ) {
                    var nextObj = fn_nextObject($(this));
                    if ( nextObj ) {
                        nextObj.addClass('on');
                    }
                }
            }
        }
    });
 
    $('button.seat-condition').unbind('mouseleave blur').bind('mouseleave blur', function(){
        if ( !$(this).hasClass('choice') ) {    
            $(this).removeClass('on');
            if ( $(this).is("[seatNextUniqNo]") ) {    
                var nextObj = fn_nextObject($(this),$(this).attr("seatNextUniqNo"));
                if ( nextObj ) {
                        nextObj.removeClass('on');
                        nextObj.removeAttr("seatNextUniqNo");
                        $(this).removeAttr("seatNextUniqNo");
                }
            }
        }
    });
    
    $('button.seat-condition').unbind('click').bind ('click','button.seat-condition', function(){
        var _grpCount       = 1;
        var _selectSeatList = [];

        var _seatNo      = $(this).attr("seatNo"     );          
        var _rowNm       = $(this).attr("rowNm"      );          
        var _seatZoneCd  = $(this).attr("seatZoneCd" );          
        var _seatClassCd = $(this).attr("seatClassCd");          
        var _seatUniqNo  = $(this).attr("seatUniqNo" );          
        var _seatToCnt   = parseInt($(this).attr("seatToCnt"));  
        var _sumTotCnt   = 0;                                    
        var _title       = "";                                   
        if ( $(this).hasClass('choice') ) {
            
            $(this).removeClass('choice');
            
            _title = _rowNm  + "" + _seatNo +  "(" + seat.zoneCd[_seatZoneCd][1] + "/" + seat.classCode[_seatClassCd][seat.classCode.field.name]  + ")";
            
            $(this).attr("title", _title ).children("span.condition").text("판매가능");
            /*  */
            $(this).removeAttr("selected");
            _selectSeatList = [{seat : [ _rowNm + _seatNo,_seatClassCd , _seatZoneCd , _seatUniqNo ,_seatToCnt ]}];
            
            if ( $(this).is("[seatNextUniqNo]") ) {
                var nextObj = fn_nextObject($(this),$(this).attr("seatNextUniqNo"));
                if ( nextObj) {
                    nextObj.removeClass('choice');
                    nextObj.removeAttr("selected");
                    _selectSeatList.push({seat : [ nextObj.attr("rowNm") + nextObj.attr("seatNo"),nextObj.attr("seatClassCd") , nextObj.attr("seatZoneCd") , nextObj.attr("seatUniqNo") , nextObj.attr("seatToCnt") ]});
                }
            }
            
            _sumTotCnt = _selectSeatList.reduce(function(a,o) { return a += Number(o.seat[4]);},0);
            
            seat.zoneList.filter(function(i,o) { return o.zoneCd == _seatZoneCd;})[0].totCount -= _sumTotCnt;
            
            seat.classCode.choiAbleList.filter(function(o) { return o.seatClassCd == _seatClassCd;})[0].selectCount -= _sumTotCnt;
            
            //seatMapInfo.selectedCount -= _selectSeatList.length;
            seatMapInfo.selectedCount -= _sumTotCnt;

            
            for ( var i = 0 ; i < _selectSeatList.length ; i ++) {
                delete seatMapInfo.selectedMap[_selectSeatList[i].seat[0]];
            }
        } else {
            /* 좌석 선택 */
            // 좌석 선택시 체크 항목
            // 1. 선택불가및 예매완료 종료
            if( $(this).hasClass('finish') || $(this).hasClass('impossible') ) return false;
            // 2. 구매가능좌석수가 0 인 경우 종료
            if ( seatMapInfo.totCount == 0 ) {
                gfn_alertMsgBox("관람하실 인원을 먼저 선택해주세요.");
                return false;
            }
            // 3. 선택 가능 건수가 0 인 경우 종료
            if ( seatMapInfo.activeCount == 0) {
                gfn_alertMsgBox("좌석 선택이 완료되었습니다. ");
                return false;
            }

            var _grpCount = 1;
            // 4. 2인,4인 소파석 일때 초과되는 경우 종료
            if ( seatMapInfo.activeCount < _grpCount) {
                gfn_alertMsgBox("선택가능한 좌석수가 초과되었습니다. ");
                return false;
            }

            // 99. 선택된 좌석의 메세지가 있을경우 보여 준다.
            if ( $(this).is('[seatNotiMsg]') ) {
                var msg = $(this).attr("seatNotiMsg");
                gfn_alertMsgBox(msg);
            }
            $(this).addClass('choice');
            _title = _rowNm + "" + _seatNo +  "(" + seat.zoneCd[_seatZoneCd][1] + "/" + "선택됨"  + ")";
            $(this).attr("title",_title).children("span.condition").text("선택됨");
            $(this).attr("selected","Y");
            _selectSeatList = [{seat : [ _rowNm + _seatNo,_seatClassCd , _seatZoneCd, _seatUniqNo, _seatToCnt ]}];
            if ( seatMapInfo.activeCount > 1 ) {   // 2건 이상
                var nextObj = fn_nextObject($(this));
                if ( nextObj) {
                    nextObj.addClass('choice');
                    nextObj.attr("selected","Y");

                    nextObj.attr("title",nextObj.attr("rowNm") + "" + nextObj.attr("seatNo") +  "(" + seat.zoneCd[nextObj.attr("seatZoneCd")][1] + "/" + "선택됨"  + ")" ).children("span.condition").text("선택됨");
                    _selectSeatList.push({seat : [ nextObj.attr("rowNm") + nextObj.attr("seatNo"),nextObj.attr("seatClassCd") , nextObj.attr("seatZoneCd") , nextObj.attr("seatUniqNo") , nextObj.attr("seatToCnt") ]});
                }
            }
            
            _sumTotCnt = _selectSeatList.reduce(function(a,o) { return a += Number(o.seat[4]);},0);
            
            seat.zoneList.filter(function(i,o) { return o.zoneCd == _seatZoneCd;})[0].totCount += _sumTotCnt;
            
            seat.classCode.choiAbleList.filter(function(o) { return o.seatClassCd == _seatClassCd;})[0].selectCount += _sumTotCnt;
            
            //seatMapInfo.selectedCount += _selectSeatList.length;
            seatMapInfo.selectedCount += _sumTotCnt;

            
            for ( var i = 0 ; i < _selectSeatList.length ; i ++) {
                seatMapInfo.selectedMap[_selectSeatList[i].seat[0]] = [ _selectSeatList[i].seat[1] , _selectSeatList[i].seat[2] , _selectSeatList[i].seat[3], _selectSeatList[i].seat[4], seat.classCode[_seatClassCd][seat.classCode.field.crsChoi]];
            }
        }
        
        seat.classCode.crsChoiMap = seat.classCode.choiAbleList.filter(function(o) { return o.seatClassCd == _seatClassCd;})[0];

        fn_reSeatProc();
        fn_seatCountDivCheck();
	    fn_myseat();
    });
};


var fn_ticketEvent = function(){
    $('.seat-select-section .seat-section .seat-area .seat-count .cell .count .number .now').on('click', function(){
        $(this).closest('.number').find('.num-choice').toggleClass('on');
    });
    $('div.cell > div.count').on('mouseleave blur',function(){
        $(this).find(".num-choice").removeClass('on');
    });

    
    $("ul.num-choice > li > button").unbind("click").bind("click" , function(){
        var value       = parseInt($(this).text());
        var _oldValue   = parseInt($(this).parents("div.number").children("button").text());
        var curGrpCd    = $(this).parents("div.number").children("button").attr("ticketGrpCd");

        
        if(curGrpCd == "TKE"){
			if(noTke == "Y"){
				gfn_alertMsgBox("일반요금이 군인요금보다 저렴하여 선택불가합니다.");
	        	return;
			}
        }

        
        if (!fn_checkDisable(curGrpCd, value)) return false;

        

        //권종 팝업
        if(_oldValue == 0)
        {
            for ( var i = 0 ; i < seatTicketCdPopupMsg.length ; i ++ ) {
                map = seatTicketCdPopupMsg[i];
                if(curGrpCd == map.ticketCd){
                    /////////////////////////////////////////////
                    ///  전체관람가인 경우 어린이 권종팝업 생략 ///
                    /////////////////////////////////////////////
                    /*
                    console.log("curGrpCd : " + curGrpCd + ", admisClassCd : " + movieAdmisClassCd);
                    */
                    // 어린이 권종 선택은 전체관람가 영화가 아닌경우만 팝업
                    if(((curGrpCd == "TKC") && (movieAdmisClassCd != "AD01")) || (curGrpCd == "TKA") || (curGrpCd == "TKY") || (curGrpCd == "TKS")){
                        //alert("권종:"+$(this).parent().parent().children("p").text()+", ticketCd:"+map.ticketCd+", Msg:"+map.Msg);
                        var options = {};
                        options.msg   = gfn_charToHtml(map.Msg);
                        options.minWidth     = 400;
                        options.minHeight    = 250;
                        gfn_alertMsgBox(options);
                    }
                }
            }
        }

        
        var  rtnVal = fn_ticketCheck(value - _oldValue);
        if ( rtnVal ==  -1 ) return false;
        if ( rtnVal ==  -2 ) {
            $(this).parents("div.number").children("ul").removeClass('on').find("button").removeClass('on');
            $(this).parents("div.number").children("ul").find("button:contains('" + _oldValue + "')").addClass("on");
            return false;
        }
        seatMapInfo.totCount += ( value - _oldValue );
        $(this).parents("ul.num-choice").find("li > button").removeClass('on');
        $(this).addClass("on");
        $(this).parents("div.number").children("button").text(value);
        $(".seat-count-before").click();
        fn_reSeatProc();

        fn_activeCountAndSeatCntValid(curGrpCd);

        fn_myseat();

    });
    
    $("div.cell > div.count").children("button.up , button.down ").unbind("click").bind("click",function(){
        var inDe        = ( $(this).text() == "+" ) ? 1 : -1;
        var value       = parseInt($(this).parent().children("div.number").children("button").text()) + inDe;

        if ( value < 0 ) return false;

        //권종 팝업
        var _oldValue = parseInt($(this).parent().children("div.number").children("button").text());
        var curGrpCd    = $(this).parent().children("div.number").children("button").attr("ticketGrpCd");

        
        if(curGrpCd == "TKE"){
			if(noTke == "Y"){
				gfn_alertMsgBox("일반요금이 군인요금보다 저렴하여 선택불가합니다.");
	        	return;
			}
        }

        
        if (!fn_checkDisable(curGrpCd, value)) return false;

        

        if(_oldValue == 0)
        {
            for ( var i = 0 ; i < seatTicketCdPopupMsg.length ; i ++ ) {
                map = seatTicketCdPopupMsg[i];
                if(curGrpCd == map.ticketCd){
                	/////////////////////////////////////////////
                    ///  전체관람가인 경우 어린이 권종팝업 생략 ///
                    /////////////////////////////////////////////
                    /*
                    console.log("curGrpCd : " + curGrpCd + ", admisClassCd : " + movieAdmisClassCd);
                    */
                    // 어린이 권종 선택은 전체관람가 영화가 아닌경우만 팝업
                    if(((curGrpCd == "TKC") && (movieAdmisClassCd != "AD01")) || (curGrpCd == "TKA") || (curGrpCd == "TKY") || (curGrpCd == "TKS")){
                        var options = {};
                        options.msg   = gfn_charToHtml(map.Msg);
                        options.minWidth     = 400;
                        options.minHeight    = 250;
                        gfn_alertMsgBox(options);
                    }
                }
            }
        }

        
        if ( fn_ticketCheck(inDe) < 0 ) return false;
        seatMapInfo.totCount += inDe;

        
        if ( value < 0 || value > seatMapInfo.MAX_PERSON ) return false;

        $(this).parent().children("div.number").children("button").text( value );
        $(this).parent().children("div.number").children("ul").find("button").removeClass('on');
        $(this).parent().children("div.number").children("ul").find("button:contains('" + value + "')").addClass("on");
        $(".seat-count-before").click();

        fn_reSeatProc();
        fn_activeCountAndSeatCntValid(curGrpCd);;
        fn_myseat();
    });
    $(".seat-count-before").on("click",function(){
         $(".seat-count-before").addClass("off");
    });
}


var fn_activeCountAndSeatCntValid = function(grpCd){
	var grpCdNm = ticket.grpPayList.filter(function(i,o) { return o.grpCd == grpCd; })[0].grpNm;
    
    var activeSeatCnt = $("button.seat-condition:not(.impossible):not(.finish):not(.choice)").size();
    
    if(activeSeatCnt<seatMapInfo.activeCount){
  		gfn_alertMsgBox(grpCdNm+"으로 선택가능한 좌석이 존재하지 않아 좌석도를 초기화 합니다.");
    	fn_display_init();
    	return;
    }
}


var fn_ticketCheck = function(inDe){
    
    if ( seatMapInfo.totCount + ( inDe ) < seatMapInfo.selectedCount ) {
        gfn_confirmMsgBoxSize("선택하신 좌석을 모두 취소하고 다시 선택하시겠습니까?",400,200,fn_display_init);
        return -1;
    }
    
    var checkMap = Object.entries(seat.classCode.choiAbleList.reduce(function(a,o) { if ( !a[o.crsChoiGroup] ) a[o.crsChoiGroup] = {}, a[o.crsChoiGroup].count = o.count,a[o.crsChoiGroup].selectCount  = o.selectCount;
                   else a[o.crsChoiGroup].count += o.count,a[o.crsChoiGroup].selectCount += o.selectCount; return a; },{}));
    if ( checkMap.filter(function(o,i) { return o[1].selectCount > 0 && o[1].selectCount == o[1].count               }).length +
         checkMap.filter(function(o,i) { return o[1].selectCount > 0 && o[1].count < seatMapInfo.totCount + ( inDe ) }).length   > 0) {
        gfn_confirmMsgBoxSize("선택하신 좌석을 모두 취소하고 다시 선택하시겠습니까?",400,200,fn_display_init);
        return -1;
    }
    
    if ( seatMapInfo.totCount + inDe > seatMapInfo.MAX_PERSON ) {
        gfn_alertMsgBox("인원선택은 총 `MAX_PERSON`명까지 가능합니다.".replaceAll("`MAX_PERSON`",seatMapInfo.MAX_PERSON));
        return -2;
    }
    return 0;
}

var keyListCaseArray = [];

var fn_myseat_doPermutation = function(arr, startIdx){
	var length = arr.length;
	for(var i=startIdx; i<length; i++){
		var temp = arr[startIdx];
		arr[startIdx] = arr[i];
		arr[i] = temp;
		if(startIdx+1 == length-1){
			var rArray = arr.slice();
			keyListCaseArray.push(rArray);
		}else {
			fn_myseat_doPermutation(arr, startIdx+1);
		}
		temp = arr[startIdx];
		arr[startIdx] = arr[i];
		arr[i] = temp;
	}
}

var fn_keyListCaseArray_reset = function(){
	keyListCaseArray = [];
}


var fn_myseat = function() {
    
    // 권종별 티켓 배열의 각 요소별 선택 권종건수 셋팅(totCount)
    ticket.grpPayList_setTotCount();
    ticket.payQueue = [];

    var zoneCd      = "";
    var totCount    = 0;
    var pay         = 0;
    // 선택된 좌석번호 리스트 (ex: [N17, N15])
    var keyList     = Object.keys(seatMapInfo.selectedMap);
    var seatUniqNo  = "";
    var seatClassCd = "";
    var seatToCnt   = "";
    var zoneList    = null;
    var classList   = null;
    var gernZoneClassList   = null;
    // 정책 리스트에서 zone 적용 여부가 Y인 리스트를 가져온다.
    var zoneAdoptClassList = seat.classCode.getCdList(seat.classCode.field.zoneAdoptAt);
    
    // 선택된 좌석들중에 존 적용여부가 Y인 좌석이 존재하는지 확인
    var zoneAmtAt = Math.sign(ticket.grpPayList.filter(function(i,o) { return (o[ticket.ECON_ZONE[1]]>0 || o[ticket.PRIM_ZONE[1]]>0) } ).length);

    
	keyList.sort(function(a,b) {
		for(var i=0; i<ticket.grpPayList.length;i++)
		{
			var aAmtName = "";
			var bAmtName = "";
			if(seatMapInfo.selectedMap[a][1]!="GERN_ZONE") aAmtName = ticket[seatMapInfo.selectedMap[a][1]][1];
			else aAmtName = seat.classCode[seatMapInfo.selectedMap[a][0]][seat.classCode.field.amtName];

			if(seatMapInfo.selectedMap[b][1]!="GERN_ZONE") bAmtName = ticket[seatMapInfo.selectedMap[b][1]][1];
			else bAmtName = seat.classCode[seatMapInfo.selectedMap[b][0]][seat.classCode.field.amtName];

			if(ticket.grpPayList[i][bAmtName] != ticket.grpPayList[i][aAmtName] || (ticket.grpPayList[i][bAmtName]==ticket.grpPayList[i][aAmtName] && aAmtName==aAmtName) ){
				return ticket.grpPayList[i][bAmtName] - ticket.grpPayList[i][aAmtName];
			}
		}
	});
//    var keyListParam = keyList.slice();
    //console.log("before call" + keyListParam);
    //fn_myseat_doPermutation(keyListParam, 0);
    //console.log("after call" + keyListCaseArray);
    //fn_keyListCaseArray_reset();
    
    for ( var i = 0 ; i < keyList.length ; i ++ ){
        seatClassCd = seatMapInfo.selectedMap[keyList[i]][0]; 
        zoneCd      = seatMapInfo.selectedMap[keyList[i]][1]; 
        seatUniqNo  = seatMapInfo.selectedMap[keyList[i]][2]; 
        seatToCnt   = seatMapInfo.selectedMap[keyList[i]][3]; 
        zoneList    = $.unique(Object.entries(seatMapInfo.selectedMap).filter(function(o,i) { return o[1][3] > 0 && o[1][1]!="GERN_ZONE"; }).map(function(o,i) { return o[1][1];}).sort(function(a,b) { return ticket[b][2] - ticket[a][2];}));
        classList   = $.unique(Object.entries(seatMapInfo.selectedMap).filter(function(o,i) { return o[1][3] > 0; }).map(function(o,i) { return o[1][0];}).sort(function(a,b) { return ticket.grpPayList[0][seat.classCode[a][seat.classCode.field.amtName]] - ticket.grpPayList[0][seat.classCode[b][seat.classCode.field.amtName]]}));
        gernZoneClassList   = $.unique(Object.entries(seatMapInfo.selectedMap).filter(function(o,i) { return (o[1][3] > 0 && o[1][1]=="GERN_ZONE") ; }).map(function(o,i) { return o[1][0];}).sort(function(a,b) { return ticket.grpPayList[0][seat.classCode[a][seat.classCode.field.amtName]] - ticket.grpPayList[0][seat.classCode[b][seat.classCode.field.amtName]]}));
		if(gernZoneClassList.length>0) zoneList = zoneList.concat(gernZoneClassList);
        if ( zoneAmtAt > 0 ) {  
            var payList = ticket.grpPayList.filter(function(i,o) { return o.totCount > 0; }).map(function(i,map) {
                for ( var i = 0 ; i < zoneList.length ; i ++ ) {
					if(zoneList[i].match("ZONE$")){
						map[ticket[zoneList[i]][1] + "List"] = [];
					}else{
						map[seat.classCode[zoneList[i]][seat.classCode.field.amtName] + "List"] = [];
					}

                    
                    for ( var j = 0 ; j < zoneList.length ; j ++ ) {
						var iVal=0;
						var jVal=0;
						var iAmtName="";
						var jAmtName="";
						if(zoneList[i].match("ZONE$")) {
							iVal = map[ticket[zoneList[i]][1]];
							iAmtName = ticket[zoneList[i]][1];
						}
						else {
							iVal = map[seat.classCode[zoneList[i]][seat.classCode.field.amtName]];
							iAmtName = seat.classCode[zoneList[i]][seat.classCode.field.amtName];
						}
						if(zoneList[j].match("ZONE$")) {
							jVal = map[ticket[zoneList[j]][1]];
							jAmtName = ticket[zoneList[j]][1];
						}
						else {
							jVal = map[seat.classCode[zoneList[j]][seat.classCode.field.amtName]];
							jAmtName = seat.classCode[zoneList[j]][seat.classCode.field.amtName];
						}

                        if ( iVal - jVal >= 0 ) map[iAmtName + "List"].push([ jAmtName , map[iAmtName] - map[jAmtName] ]);
                    }
                    
                    map[iAmtName + "Sort"] = map[iAmtName + "List"].sort(function(a,b) { return b[1] - a[1]; } )[0];
                }
                return map;
            }).get();

            var amtName = "";
            if(zoneCd != "GERN_ZONE") amtName = ticket[zoneCd][1];
			else amtName = seat.classCode[seatClassCd][seat.classCode.field.amtName];
            if ( payList.length > 1 ) {
                payList.sort(function(a,b) {
                    
                    if ( a[amtName+"Sort"][1] == b[amtName+"Sort"][1] ) {
                        if ( a[amtName] == b[amtName] ) {
                        	// 성인, 청소년, 이런이, 우대 순
                            return a["ticketOrder"] - b["ticketOrder"];
                        } else {
                            return b[amtName] - a[amtName];
                        }
                    } else {
                        return a[amtName+"Sort"][1] - b[amtName+"Sort"][1];
                    }
                });
            }
            if ( payList.length > 0 ) {
                var payMap = payList.shift();
                if ( payMap.totCount > 0 ) {
                    payMap.totCount--;
                   	pay = payMap[amtName];
                    
                    ticket.payQueue.push({pcGrpDivCd : "MBX",  zoneCd : zoneCd , grpCd : payMap.grpCd ,grpNm : payMap.grpNm , pay : pay , seatUniqNo : seatUniqNo , seatClassCd : seatClassCd , seatRowNm : keyList[i]});
                }
            }
        } else {
            
            var payList = ticket.grpPayList.filter(function(i,o) { return o.totCount > 0; }).map(function(i,map) {
                for ( var i = 0 ; i < classList.length ; i ++ ) {
                    
                    map[seat.classCode[classList[i]][seat.classCode.field.amtName] + "List"] = [];
                    for ( var j = 0 ; j < classList.length ; j ++ ) {
                        if ( map[seat.classCode[classList[i]][seat.classCode.field.amtName]] - map[seat.classCode[classList[j]][seat.classCode.field.amtName]] >= 0 ) {
                            map[seat.classCode[classList[i]][seat.classCode.field.amtName] + "List"].push([ seat.classCode[classList[j]][seat.classCode.field.amtName] , map[seat.classCode[classList[i]][seat.classCode.field.amtName]] - map[seat.classCode[classList[j]][seat.classCode.field.amtName]]]);
                        }
                    }
                    
                    map[seat.classCode[classList[i]][seat.classCode.field.amtName] + "Sort"] = map[seat.classCode[classList[i]][seat.classCode.field.amtName] + "List"].sort(function(a,b) { return b[1] - a[1]; } )[0];
                }
                return map;
            }).get();
            if ( payList.length > 1 ) {
                payList.sort(function(a,b) {
                    
                    if ( a[seat.classCode[seatClassCd][seat.classCode.field.amtName]+"Sort"][1] == b[seat.classCode[seatClassCd][seat.classCode.field.amtName]+"Sort"][1] ) {
                        if ( a[seat.classCode[seatClassCd][seat.classCode.field.amtName]] == b[seat.classCode[seatClassCd][seat.classCode.field.amtName]] ) {
                        	// 성인, 청소년, 이런이, 우대 순
                            return a["ticketOrder"] - b["ticketOrder"];
                        } else {
                            return b[seat.classCode[seatClassCd][seat.classCode.field.amtName]] - a[seat.classCode[seatClassCd][seat.classCode.field.amtName]];
                        }
                    } else {
                        return a[seat.classCode[seatClassCd][seat.classCode.field.amtName]+"Sort"][1] - b[seat.classCode[seatClassCd][seat.classCode.field.amtName]+"Sort"][1];
                    }
                });
            }

            if ( payList.length > 0 ) {
                var payMap = payList.shift();
                if ( payMap.totCount > 0 ) {
					var paySeatToCnt = 0;
					if(seatToCnt > payMap.totCount){
						paySeatToCnt = payMap.totCount;
						payMap.totCount=0;
					}
					else {
						paySeatToCnt = seatToCnt;
						payMap.totCount -= seatToCnt;
					}

                    pay = payMap[seat.classCode[seatClassCd][seat.classCode.field.amtName]];
                    
                    ticket.payQueue.push({pcGrpDivCd : "MBX",  zoneCd : zoneCd , grpCd : payMap.grpCd ,grpNm : payMap.grpNm , pay : pay , seatUniqNo : seatUniqNo , seatClassCd : seatClassCd , seatRowNm : keyList[i], paySeatToCnt : paySeatToCnt });
                }
            }
        }
        
        seatMapInfo.selectedMap[keyList[i]][3] = 0;
    }
    
    ticket.grpPayList_setTotCount();
    
    keyList.sort(function(a,b) { return (a.substring(0,1) + a.substring(1).lpad(2,'0')).localeCompare(b.substring(0,1) + b.substring(1).lpad(2,'0'))});
    $("div.my-seat > div.seat").removeClass("possible").removeClass("choice").addClass("all").text("-").attr("title","구매가능 좌석");
    $("div.my-seat > div.seat:lt(" + seatMapInfo.totCount + ")").removeClass("all").addClass("possible").attr("title","선택할 수 있는 좌석");
    for ( var i = 0 ; i < keyList.length ; i ++) {
        seatMapInfo.selectedMap[keyList[i]][3] = seat.classCode[seatMapInfo.selectedMap[keyList[i]][0]][seat.classCode.field.seatToCnt];
        $("div.my-seat > div.seat:eq(" + i + ")").removeClass("possible").addClass("choice").text(keyList[i]).attr("title","선택한 좌석");
    }

    
    var payCountLayoutHtml = "";
    var cntPay             = 0;
    var totPay             = 0;
    for ( var i = 0 ; i < ticket.grpPayList.length ; i ++ ) {
        map = ticket.grpPayList[i];
        cntPay = 0;
        $(ticket.payQueue).each(function(i,o) {
            if ( o.grpCd == map.grpCd ) {
           		cntPay += parseInt(o.paySeatToCnt);
                totPay += parseInt(o.pay);
            }
        });
        if ( cntPay > 0 ) {
            payCountLayoutHtml += "<span>" + map.grpNm + " <em>" + cntPay + "</em></span>";
        }
    }

    ticket.payQueue.totalPay = totPay;
    $("div.pay-area > p.count").html(payCountLayoutHtml);
    $("div.pay-area > div.pay > div.money > em").html(totPay.format());

    
    //if ( seatMapInfo.totCount > 0 && seatMapInfo.activeCount == 0 ){
    if ( seatMapInfo.totCount > 0 && seatMapInfo.activeCount <= 0 ){

        $("a#pageNext").bind("click",function(){

            var tkaCnt, tkyCnt, tkcCnt, tksCnt = 0, tkeCnt = 0;
        	for ( var i = 0 ; i < $('.seat-select-section .seat-section .seat-area .seat-count').children().length ; i ++) {
        	    var ticketGrpCd     = $(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count > div.number").children("button").attr("ticketGrpCd");
        	    var ticketGrpCnt    = parseInt($(".seat-select-section .seat-section .seat-area .seat-count > div.cell:eq(" + i + ") > div.count > div.number").children("button").text());
        	    switch(ticketGrpCd){
        	        case 'TKA'   : tkaCnt = ticketGrpCnt;  break;
        	        case 'TKY'   : tkyCnt = ticketGrpCnt;  break;
        	        case 'TKC'   : tkcCnt = ticketGrpCnt;  break;
        	        case 'TKS'   : tksCnt = ticketGrpCnt;  break;
        	        case 'TKE'   : tkeCnt = ticketGrpCnt;  break;
        	    }
        	}

            // 기업회원 요금으로 결제를 했다면
            if(parseInt(tkeCnt) > 0){
            	tkeYn = "Y";
            }else{
            	tkeYn = "N";
            }

            if (movieAdmisClassCd != 'AD01' && tkcCnt>0 && tkaCnt<= 0 ){
                gfn_alertMsgBoxSize(gfn_charToHtml("본 영화는 &#039;12/15세 관람가&#039;로 어린이는 보호자 없이 관람이 불가능하며, &lt;br&gt; 어린이 요금과 성인 요금을 같이 선택하셔야 진행이 가능합니다."),480,250);
                return;
            }

            
            if ( playTimesDivPopupMsg != null && playTimesDivPopupMsg != '') {
                var options = {};
                options.msg   = gfn_charToHtml(playTimesDivPopupMsg);
                options.confirmFn  = setBookingParam;
                options.cancelFn   = '';
                options.okBtnTxt     = "확인";
                options.cancelBtnTxt = "취소";
                options.param     = {confirm:ticket.payQueue, cancel:""} ;
                options.minWidth     = 400;
                options.minHeight    = 250;
                gfn_confirmMsgBox(options);
            }
            else
            {
            var payUrl = "/on/oh/ohz/PayBooking/completeSeat.do";
            //console.log(ticket.payQueue);
            setBookingParam(ticket.payQueue);
            }
            //parent.fn_goNextPagePcntSeatChoi(ticket.payQueue);
        });
        $("a#pageNext").removeClass("disabled").addClass("active");
    } else {
        $("a#pageNext").unbind("click");
        $("a#pageNext").removeClass("active").addClass("disabled");
    }
}


function fn_deleteEntpInfo(entrpInfo){

    $.ajax({
        url: "/on/oh/ohk/deleteEntpInfo.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(entrpInfo),
        success: function (data, status, xhr) {

        },
        error: function(xhr, status, error){
            AppHandler.Common.stopLoadingBar();
            var oData = { message: xhr.responseJSON.msg };
            AppHandler.Common.alert(oData);
        }
    });
}

//기업회원 일반권종 비활성화
function fn_checkDisable(curGrpCd, value){
    // 기업요금을 제한 나머지 인원수의 합
    var totCnt = 0;
    var tkeCnt = 0;
    var re = true;

    // 기업회원
    if (entrpMbCd != ""){
    	tkeCnt = parseInt($(".count .now")[0].innerText);
    }

    for (var i = 1; i < $(".count .now").length; i++){
    	totCnt += parseInt($(".count .now")[i].innerText);
    }

	// 기업회원과 일반권종 비활성화
	if (curGrpCd == "TKE") {
		if( value > 4){
			gfn_alertMsgBox("군인요금은 최대 4매까지 가능합니다.");
			re = false;
		}

		if(totCnt > 0){
			gfn_alertMsgBox("일반요금과 군인요금을 같이 선택할 수 없습니다.");
			re = false;
		}
	}else{
		if(tkeCnt > 0){
			gfn_alertMsgBox("일반요금과 군인요금을 같이 선택할 수 없습니다.");
			re = false;
		}
	}

	return re;
}

//예매 param 세팅
function setBookingParam(paramList) {
    var paramText = "";
    for(var i=0;i<paramList.length;i++) {
        if (i > 0) {
            paramText += ";";
        }
        paramText += paramList[i].seatUniqNo+","+paramList[i].grpCd+","+paramList[i].pay;
        paramText += ","+paramList[i].pcGrpDivCd+","+paramList[i].zoneCd+","+paramList[i].seatClassCd+","+paramList[i].paySeatToCnt;
    }

    var options = {};
    options.playSchdlNo	  = $("#playSchdlNo").val();
    options.brchNo        = $("#brchNo").val();
    options.bokdCnt       = paramList.length;
    options.seatOccupText = paramText;
    options.totalAmt	  = paramList.totalPay;
    options.entrpMbCd	  = entrpMbCd;
    options.tkeYn	      = tkeYn;

    //parent.fn_setBookingParam(options);
    parent.fn_goNextPagePcntSeatChoi(options);
}



var fn_reSeatProc = function(){
    
    var rowNmArray      = $.unique($("button.seat-condition").map(function(){ return $(this).attr("rowNm" );}));
    var seatRowArray    = null;
    var seatArray       = null;
    $("button.seat-condition").removeClass("impossible");

    $.each(rowNmArray,function(i,rowNm){
        var seatChoiGrpNmArray = $.unique($("button.seat-condition[rowNm='" + rowNm + "']").map(function(){ return $(this).attr("seatChoiGrpNm");}));
        $.each(seatChoiGrpNmArray,function(i,seatChoiGrpNm) {
            seatRowArray = $("button.seat-condition[rowNm='" + rowNm + "'][seatChoiGrpNm='" + seatChoiGrpNm + "']");
            
            var selectorArray    = ["choice", "finish"];
            seatArray    = fn_seatGroupSplit(seatRowArray, selectorArray);
            
            $.each(seatArray[1],function() { $(this).removeAttr("nextOrd"); });
            
            $(seatArray[0]).each(function(n,seat){
                var seatLength = seat.length;
                seat.each(function(i,o){
                    fn_seatDeadCheck(o,i+1,seatLength); 
                    fn_setConnSeat  (o,i+1,seatLength); 
                });
            });
        });
    });
}

var fn_seatGroupSplit = function( array , selectorArray) {
    var splitSeat    = [];   
    var splitEtcSeat = [];   

    var idxArray     = array.map(function(i,o) {
        var rtVal = null;
        for(var selector in selectorArray){
            if($(o).hasClass(selectorArray[selector])) {
                rtVal = i+1;
                break;
            }
        }
        return rtVal;
    }).add(array.length + 1);

    var idx          = 0;
    var idxPrev      = 0;
    for ( var i = 0 ; i < idxArray.length  ; i++) {
        idx = idxArray[i];
        splitSeat   .push(array.slice(idxPrev,idx - 1));
        splitEtcSeat.push(array.slice(idx - 1,idx    ));
        idxPrev = idx;
    }
    return [splitSeat,splitEtcSeat];
}

var fn_setConnSeat = function(cell,seatChoiGrpSeq,seatChoiRowCnt){
    var seatChoiDircVal    = parseInt($(cell).attr("seatChoiDircVal"));  
    if ( seat.classCode.connExcp.indexOf($(cell).attr("seatClassCd")) < 0 && seatChoiRowCnt > 1 ) {   
        if ( seatMapInfo.activeCount > 1 ) {   

            var finishObj;
            if ( seatChoiGrpSeq % 2 == 1 ) {
                finishObj = $(cell).next().hasClass("finish");

                if(finishObj == true){
                    console.log($(cell).next().attr("rowNm") + $(cell).next().attr("seatNo") + "이미 예약됨");
                    $(cell).attr("nextOrd","P");
                }else{
                    $(cell).attr("nextOrd","N");
                }
                //$(cell).attr("nextOrd","N");
            } else {
                finishObj = $(cell).prev().hasClass("finish");

                if(finishObj == true){
                    console.log($(cell).prev().attr("rowNm") + $(cell).prev().attr("seatNo") + "이미 예약됨");
                    $(cell).attr("nextOrd","N");
                }else{
                    $(cell).attr("nextOrd","P");
                }
                //$(cell).attr("nextOrd","P");
            }

            if ( seatChoiRowCnt == seatChoiGrpSeq && $(cell).attr("nextOrd") == "N") {
                $(cell).attr("nextOrd","P");
            }

            /////////////////////////////////////////////////////
            /////////////////////////////////////////////////////
            /////////////////////////////////////////////////////
            if(seatChoiGrpSeq == 1 && $(cell).attr("nextOrd") == "P"){
                $(cell).attr("nextOrd","N");
            }
            /////////////////////////////////////////////////////
            /////////////////////////////////////////////////////
            /////////////////////////////////////////////////////

        } else {
            
            $(cell).removeAttr("nextOrd");
        }
    }
}


var fn_seatDeadCheck = function(cell,seatChoiGrpSeq,seatChoiRowCnt) {

    var seatChoiDircVal   = parseInt($(cell).attr("seatChoiDircVal")); 
    var seatClassCd       = $(cell).attr("seatClassCd");               

    var seatCheckFlg      = true;
    var seatCrsChoiGrpFlg = true;
    var seatToCnt         = $(cell).attr("seatToCnt");                 
    //if ( $(cell).attr("seatUniqNo")   == '00901401') fn_debugger();

    
    if ( typeof(seat.choiAbleCntArray[seatClassCd]) == "undefined" ) {              
        seat.choiAbleCntArray[seatClassCd] = seat.classCode[seatClassCd][seat.classCode.field.choiAbleCnt];
    }
    var choiAbleCnt = seat.choiAbleCntArray[seatClassCd];

    var isSelectable = true;
    /*if ( choiAbleCnt.indexOf(seatMapInfo.totCount) < 0 && seatMapInfo.totCount > 0) {
        isSelectable = false;
        seatCheckFlg = false;
    }*/

    if ( choiAbleCnt.indexOf(seatMapInfo.activeCount) < 0 && (seatMapInfo.activeCount) > 0) {
        isSelectable = false;
        seatCheckFlg = false;
    }

    
    var crsChoiGroupNm = seat.classCode[seatClassCd][seat.classCode.field.crsChoi];
    var keyList     = Object.keys(seatMapInfo.selectedMap);
    if ( keyList.length > 0 ) {
        if ( keyList.filter(function(key,i){
            return seatMapInfo.selectedMap[key][4] == seat.classCode[seatClassCd][seat.classCode.field.crsChoi];
        }).length <= 0  ) {
            isSelectable = false;
            seatCheckFlg = false;
        }
    }

    
    if ( Object.entries(seat.classCode.choiAbleList.reduce(function(a,o) {
            if ( !a[o.crsChoiGroup] ) a[o.crsChoiGroup] = {}, a[o.crsChoiGroup].count = o.count,a[o.crsChoiGroup].selectCount  = o.selectCount;
            else a[o.crsChoiGroup].count += o.count,a[o.crsChoiGroup].selectCount += o.selectCount;
            return a;
        },{})).filter(function(o,i) { return o[1].count >= seatMapInfo.totCount && o[0] == crsChoiGroupNm } ).length == 0 ) {
        isSelectable = false;
        seatCheckFlg = false;
    }
    
    var notTicketAbleAtList = seat.classCode[seatClassCd][seat.classCode.field.notTicketAbleAt].split(",").filter(function(o,i){ return o != 'N';});
    if ( notTicketAbleAtList.length > 0 ) {
    	ticket.grpPayList_setTotCount();
    	// 인원수가 올라가있는 권종 리스트 중 해당 셀의 좌석등급에 해당 권종은 앉을수 없다는게 한건이라도 확인되면 비활성화 처리
        if ( ticket.grpPayList.filter(function(i,o) { return o.totCount > 0; }).filter(function(i,o) { return notTicketAbleAtList.filter(function(b,j) { return o.grpCd == "TK" + b; }).length > 0 ;}).length > 0 ) {
            isSelectable = false;
            seatCheckFlg = false;
        }
    }
    if ( seatCheckFlg ) {
        if ( seatMapInfo.activeCount == 1 ) {   
            isSelectable = false;
            if ( seatChoiDircVal == 0 ) {
                if ( seatChoiGrpSeq % 2 == 1 ) {
                    isSelectable = true;
                }
            } else {
                if ( seatChoiRowCnt % 2 == 0 ) {
                    if ( seatChoiGrpSeq % 2 == 0 ) {
                        isSelectable = true;
                    }
                } else {
                    if ( seatChoiGrpSeq % 2 == 1 ) {
                        isSelectable = true;
                    }
                }
            }
            if ( seatChoiRowCnt <= 2 ) {
                isSelectable = true;
            } else {
                if ( seatChoiGrpSeq == 2 || seatChoiGrpSeq == seatChoiRowCnt - 1 ) {
                    isSelectable = false;
                }
                if ( seatChoiGrpSeq == 1 || seatChoiGrpSeq == seatChoiRowCnt ) {
                    isSelectable = true;
                }
            }
            
            if ( seat.classCode.deadExcp.indexOf($(cell).attr("seatClassCd")) >= 0  ) {
                isSelectable = true;
            }
        }
    }
    if ( !isSelectable ) {  
        /////////////////////////////////////////////
        // TODO 소스원본
        // if( !$(cell).hasClass('finish') ){
        /////////////////////////////////////////////
        if( $(cell).hasClass('finish') == false && $(cell).hasClass('choice') == false ){
            /*
            if($(cell).attr("rowNm") == "G"  && $(cell).attr("seatNo") == "16"){
                alert($(cell).attr("class"));
                alert("G16 impossible view 추가");
            }
            */
            $(cell).addClass("impossible view");
	    }
        $(cell).css("width",20 * seatToCnt);
    }
}


var fn_seatCountDivCheck = function() {
	
	fn_seatCountDivInit();

	
	var seatClassCdArray = $.unique($("button.seat-condition:not(.impossible):not(.finish):not(.choice)").map(function(){ return $(this).attr("seatclasscd" );}).sort(function(a,b){return seat.classCode[a][policyInfo.sortOrdVal]-seat.classCode[b][policyInfo.sortOrdVal];}));
	var nTKACnt = 0, nTKYCnt=0, nTKCCnt=0, nTKSCnt=0, nTKECnt=0;
	for(var i=0;i<seatClassCdArray.length;i++){
		var notTicketAbleAtList = seat.classCode[seatClassCdArray[i]][seat.classCode.field.notTicketAbleAt].split(",").filter(function(o,i){ return o != 'N';});
		for(var j=0;j<notTicketAbleAtList.length;j++){
			if(notTicketAbleAtList[j]=="A"){
				nTKACnt++;
				nTKECnt++;
			}
			else if(notTicketAbleAtList[j]=="Y") nTKYCnt++;
			else if(notTicketAbleAtList[j]=="C") nTKCCnt++;
			else if(notTicketAbleAtList[j]=="S") nTKSCnt++;
		}
	}
   	ticket.grpPayList.each(function(i,map) {
        if(eval("n"+map.grpCd+"Cnt")==seatClassCdArray.length && Number($("div.seat-count p:contains('"+map.grpNm+"')").siblings("div.count").find("button.now").text())==0){
        	$("div.seat-count p:contains('"+map.grpNm+"')").siblings("div.count").find("button").prop("disabled",true);
        }
   	});
}


var fn_seatCountDivInit = function() {
	$("div.seat-count").find("button").prop("disabled",false);
}




var fn_nextObject = function(obj,seatNextUniqNo) {
    var seatChoiGrpNm   = obj.attr("seatChoiGrpNm");
    if ( !obj.is("[seatUniqNo]") ) {
        return null;
    }
    if ( seat.classCode.connExcp.indexOf(obj.attr("seatClassCd")) > -1 ) {
        return null;
    }

    if ( seatNextUniqNo ) {
        return $('button.seat-condition[seatUniqNo="' + seatNextUniqNo + '"]');
    }
    var nextOrd  = obj.attr("nextOrd");

    var nextObj;
    if ( !nextOrd ) {
        return null;
    } else if ( nextOrd == "N") {
        nextObj = obj.next("[seatChoiGrpNm='" + seatChoiGrpNm + "']");
    } else {
        nextObj = obj.prev("[seatChoiGrpNm='" + seatChoiGrpNm + "']");
    }
    if (nextObj.is(".choice")) {
        return null;
    }
    if (nextObj.is(".finish")) {
        return null;
    }
    obj.attr("seatNextUniqNo",nextObj.attr("seatUniqNo"));
    nextObj.attr("seatNextUniqNo",obj.attr("seatUniqNo"));
    return nextObj;
}


var fn_search = function(popYn){
    if(typeof $("#playSchdlNo").val() == 'undefined' || $("#playSchdlNo").val() == ''){
        return;
    }
    var paramData = {
        playSchdlNo : $("#playSchdlNo").val(),
        brchNo : $("#brchNo").val()
    }

    $.ajaxMegaBox({
        url    : "/on/oh/ohz/PcntSeatChoi/selectSeatList.do",
        data   : JSON.stringify(paramData),
        success: function(result){
            if ( result.seatListSD01.length > 0 ) {
            	if (popYn == 'N') {
            		//popYn 전달시 최초진입 팝업 삭제(결제화면에서 좌석선점 등으로 이동시 팝업띄우지 않음)
            		if (result.popUp.rfndDivPopup != null) {
            			result.popUp.rfndDivPopup = null;
            		}
            		if (result.popUp.movieAdmisClassPopup != null) {
            			result.popUp.movieAdmisClassPopup = null;
            		}
            	}
            	fn_seatPolicy(result.seatPolicyList);

                fn_seatMapDisplay(result);
            } else {
                gfn_alertMsgBox("상영정보가 없습니다.");
                $("a#pagePrevious").click();
            }
        },
        complete: function() {
        	parent.$('.bg-loading').hide();
        }
    });
}


var fn_display_init = function(){
    $("div.number").children("ul").removeClass('on').find("button").removeClass('on');
    $("div.number").children("ul").find("button:contains('" + 0 + "')").addClass("on");
    $("div.number").children("button").text(0);
    seatMapInfo.fn_init();
    $("button.seat-condition.choice").removeClass("choice on");
    seat.classCode.choiAbleList.forEach(function(o) { o.selectCount = 0;} );
    seat.zoneList_init();
    seat.zone
    ticket.init();
    fn_reSeatProc();
    fn_seatCountDivInit();
    fn_myseat();
}


function shwoBlackListPopup(param){
    //gfn_alertMsgBoxSize('원활한 극장 운영을 위하여 개인별 예매 수량 및 예매 가능 지점 수에 대해 부분적인 제한(1일 '+param.bokdAbleBrch+'회, 최대 '+param.bokdAbleCnt+'매까지, 최대 '+param.bokdAbleQty+'개 지점)을 실시하고 있습니다.\n\n또한, 이틀 연속 예매 가능매수를 초과 하실 경우 익일엔 예매가 불가능하오니 참고 부탁드립니다.\n\n단체 관람을 위해 예매 하시는 경우 드림센터 또는 관람 예정 지점 문의를 통해 단체 할인을 받으실 수 있사오니 별도 문의 부탁 드리겠습니다.\n\n고객님의 양해 부탁 드리며 관련 문의는 1544-0070으로 부탁 드립니다.',400,250);	//원활한 극장 운영을 위하여 개인별 예매 수량 및 예매 가능 지점 수에 대해 부분적인 제한(1일 {0}회, 최대 {1}매까지, 최대 {2}개 지점)을 실시하고 있습니다. 또한, 이틀 연속 예매 가능매수를 초과 하실 경우 익일엔 예매가 불가능하오니 참고 부탁드립니다. 단체 관람을 위해 예매 하시는 경우 드림센터 또는 관람 예정 지점 문의를 통해 단체 할인을 받으실 수 있사오니 별도 문의 부탁 드리겠습니다. 고객님의 양해 부탁 드리며 관련 문의는 1544-0070으로 부탁 드립니다.
    if (param.type == "entpr"){
    	gfn_alertMsgBoxSize(param.entrpBookingLimitMsg + "\n제한 횟(매)수 : "+param.limitCnt + "회(매)",400,250);
    }else{
	    gfn_alertMsgBoxSize('원활한 극장 운영을 위하여 개인별 예매 수량 및 예매 가능 지점 수에 대해 부분적인 제한(1일 '+param.bokdAbleCnt+'회, 최대 '+param.bokdAbleQty+'매까지, 최대 '+param.bokdAbleBrch+'개 지점)을 실시하고 있습니다.\n\n또한, 이틀 연속 예매 가능매수를 초과 하실 경우 익일엔 예매가 불가능하오니 참고 부탁드립니다.\n\n단체 관람을 위해 예매 하시는 경우 드림센터 또는 관람 예정 지점 문의를 통해 단체 할인을 받으실 수 있사오니 별도 문의 부탁 드리겠습니다.\n\n고객님의 양해 부탁 드리며 관련 문의는 1544-0070으로 부탁 드립니다.',400,250);
    }
    //$modal('layer_member_grade');
}


function shwoDataRevisnPopup(arguments,param){
    var options = {};
    options.msg        = '고객님의 생년월일, 전화번호가 정상적으로 등록되지 않았습니다.\n해당정보는 현장에서 예매정보 확인시 필요한 정보이므로 업데이트 바랍니다.\n(' + arguments + ')\n\n예매를 계속 진행하시겠습니까?\n';
    options.confirmFn  = parent.fn_mvPage;
    options.cancelFn   = parent.fn_vlaidBlackList;
    options.okBtnTxt     = "지금변경";
    options.cancelBtnTxt = "계속진행";
    options.minWidth  = 400;
    options.minHeight = 300;
    options.param      = {confirm:"/on/oh/ohh/Mypage/mainPage.do" ,cancel:param};
    gfn_confirmMsgBox(options);
}



$(function(){
 
    $("button#seatMemberCntInit").off("click").on("click" , function(){
        //$("button#seatMemberCntInit").hide();
        $("button#seatMemberCntInit").attr("disabled", true);
        fn_search('N');
        Timers.call(5,"s",null,function(param){
            //$("button#seatMemberCntInit").show();
            $("button#seatMemberCntInit").attr("disabled", false);
        });
    });
    
    $("a#pagePrevious").off("click").on("click",function(){
        //window.history.back();
           parent.fn_goPrePagePcntSeatChoi();
    });
    fn_search();
});
</script>
<body class="body-iframe">
    <input type="hidden" id="playSchdlNo" name="playSchdlNo" value="" />
    <input type="hidden" id="brchNo" name="brchNo" value="" />
    <section id="layer_age_alert" class="modal-layer">
        <div class="wrap" style="width:750px; height:350px;">
            <header class="layer-header"> <h3 class="tit">알림</h3> </header>
            <div class="layer-con"> </div>
            <div class="btn-group-fixed">
                <button type="button" class="button purple close-layer">확인</button>
            </div>
            <button type="button" class="btn-modal-close">레이어 닫기</button>
        </div>
    </section>
        <div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
            <div class="quick-reserve">
                <h2 class="tit">빠른예매</h2>
                <!-- cti 일때만 출력 -->
                






<script type="text/javascript">
var requestPayAt = "N";

$(function(){
	//RIA의 경우
    if(parent.sellChnlCd != ""){
        $('.inner-wrap')
        	.css('padding-bottom','')
        	.css('padding-top','');	//하단 상단 공백 제거
//         $('#btnLangChg').hide();    //언어전환 버튼숨김

        //로그인 되었으면
        if(parent.riaLoginAt == "Y"){
        	$('.cti-area input[name=riaName]').attr('value',parent.riaParamName);	//고객명
            $('.cti-area input[name=riaMobileNo]').attr('value',parent.riaParamMobileNo);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr('value',parent.riaParamBirthday);	//고객생년월일
        	$('.cti-area input[name=riaMemberYn]').attr('value',parent.riaMemberYn == "Y" ? "회원" : "비회원");	//회원여부

        	$('.cti-area input[name=riaName]').attr("readonly",true);		//고객명
            $('.cti-area input[name=riaMobileNo]').attr("readonly",true);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr("readonly",true);	//고객생년월일

            $('.cti-area input[name=riaMemberYn]').attr("readonly",true);	//회원여부

        	$('.cti-area button').attr('login-at',"Y");

            //결제화면이 아니면
            if("N" == requestPayAt){
            	$('.cti-area button').html('재인증');
            }
        }
        //로그인 되지 않았으면
        else {
        	$('.cti-area input[name=riaName]').attr('value',parent.riaParamName);	//고객명
            $('.cti-area input[name=riaMobileNo]').attr('value',parent.riaParamMobileNo);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr('value',parent.riaParamBirthday);	//고객생년월일
            $('.cti-area input[name=riaMemberYn]').attr('value','');	//회원여부

        	$('.cti-area input[name=riaName]').attr("readonly",false);		//고객명
            $('.cti-area input[name=riaMobileNo]').attr("readonly",false);	//고객전화번호
            $('.cti-area input[name=riaBirthday]').attr("readonly",false);	//고객생년월일

            $('.cti-area input[name=riaMemberYn]').attr("readonly",true);	//회원여부

            $('.cti-area button').attr('login-at',"N");	//회원여부
          	//결제화면이 아니면
            if("N" == requestPayAt){
        		$('.cti-area button').html('인증요청');
            }
        }

        //드림센터의 경우
		if(parent.sellChnlCd == "TELLER"){
			$('.cti-area').show();	//cti 로그인창 표시
		}
		else {
			$('.cti-area').hide();	//cti 로그인창 표시
		}


		//회원정보 확인을 위한 초기 파라메타 셋팅

		//파라메타 셋팅후
		//회원여부확인				부모창
		//나머지 화면 disable 처리	부모창

	}
    else {
        $('.quick-reserve-ad-area').show();	//광고영역 표시
//         $('#btnLangChg').show();	//언어전환 버튼표시 사용안함 20200106 김민영
    }

    /* RIA 재인증 버튼 클릭 */
    $('.cti-area button').on("click", function(){

		//입력값 검증
		if($('.cti-area button').attr('login-at') == "N"){

// 			if($(".cti-area input[name=riaName]").val().length == 0){
// 				gfn_alertMsgBoxSize('이름은  필수 입력 항목 입니다.',400,250);	//{0} 필수 입력 항목 입니다.
// 				return;
// 			}

			if(!fn_validateDateYn($(".cti-area input[name=riaBirthday]").val())){
				gfn_alertMsgBoxSize('생년월일을 정확히 입력해주세요.',400,250);	//생년월일을 정확히 입력해주세요.
				return;
			}

			if($(".cti-area input[name=riaMobileNo]").val().length < 10){
				gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',400,250);	//휴대폰번호를 정확히 입력해주세요.
				return;
			}

			if($(".cti-area input[name=riaMobileNo]").val().substr(0,2) != "01"){
				gfn_alertMsgBoxSize('휴대폰번호를 정확히 입력해주세요.',400,250);	//휴대폰번호를 정확히 입력해주세요.
				return;
			}
		}
		parent.fn_setRiaLoginToggle( [$('.cti-area button').attr('login-at')
    								 ,$(".cti-area input[name=riaName]").val()
    								 ,$(".cti-area input[name=riaBirthday]").val()
    								 ,$(".cti-area input[name=riaMobileNo]").val()]
    								);
    });


    /* 이름 숫자를 제외한 입력 여부판단 */
	$(".cti-area input[name=riaName]").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
 	});
	$(".cti-area input[name=riaName]").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
	});

    /* 생년월일 숫자만 입력 여부판단 */
	$(".cti-area input[name=riaBirthday]").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	$(".cti-area input[name=riaBirthday]").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});

    /* 휴대폰번호 숫자만 입력 여부판단 */
	$(".cti-area input[name=riaMobileNo]").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
    });
	$(".cti-area input[name=riaMobileNo]").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
});


/*날짜 형태 확인*/
function fn_validateDateYn(param) {
	try
	{
		var yearFront = "";
		var year = "";
		var month = "";
		var day = "";

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < 6 || param.length == 7) {
			return false;
		}

		if(param.length == 6){
			year = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day = Number(param.substring(4, 6));
		}
		else if (param.length == 8){
			var date = new Date();
			yearFront = Number(param.substring(0, 4));
			year = Number(param.substring(2, 4));
			month = Number(param.substring(4, 6));
			day = Number(param.substring(6, 8));

			if(yearFront > date.getFullYear()){
				return false;
			}
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

</script>
<!-- cti 일때만 출력 -->
<div class="cti-area" style="display:none">
    <p>이름</p>
    <input maxlength="20" name="riaName" type="text" title="이름 출력" class="input-text a-c w120px" placeholder="이름" value="" />

    <p>생년월일</p>
    <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력" class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="" />

    <p>휴대폰번호</p>
    <input maxlength="11" name="riaMobileNo" type="text" title="휴대폰번호 출력" class="input-text a-c w150px" placeholder="- 없이 입력" value="" />

    <p>회원</p>
    <input name="riaMemberYn" type="text" title="회원여부 출력" class="input-text a-c w100px" value="" readyonly="readyonly" />

	
		<button type="button" class="button gray ml10" login-at="N"></button>
	
</div><div class="seat-select-section">
                    <div class="seat-section">
                        <div class="tit-util">
                            <h3 class="tit small"> 관람인원선택</h3>
                            <div class="right">
                                <button type="button" class="button gray-line small" id="seatMemberCntInit"> <i class="iconset ico-reset-small"></i>초기화</button>
                            </div>
                        </div>
                        <div class="seat-area">
                            <div class="seat-count" style="min-height: 52px"></div>
                            <div class="seat-layout">
                                <div class="alert" style="display: none;"></div>
                                <div class="seat-count-before" style="top: 0px">관람인원을 선택하십시요</div>
                                <div class="scroll m-scroll">
                                    <div id="seatLayout" style="width: 100%; height: 1000px; display: none">
                                        <img src="/static/pc/images/reserve/img-theater-screen.png" alt="screen" style="position: absolute; left: 62px; top: 10px;" />
                                    </div>
                                </div>
                            </div>
                            <div class="zone-legend" style="display: none">
                                <div class="label standard">스탠다드</div>
                                <div class="label economy">이코노미</div>
                                <div class="label premium">프리미엄</div>
                            </div>
                        </div>
                    </div>
                    <div class="seat-result">
                        <div class="wrap">
                            <div class="tit-area">
                                <span class="movie-grade small age-all">&nbsp;</span>
                                <p class="tit">&nbsp;</p>
                                <p class="cate">&nbsp;</p>
                            </div>
                            <div class="info-area">
                                <p class="theater">&nbsp;</p>
                                <p class="special">&nbsp;</p>
                                <p class="date"> <span>&nbsp;</span><em>&nbsp;</em> </p>
                                <div class="other-time">
                                    <button type="button" class="now"> &nbsp; <i class="arr"></i>
                                    </button>
                                    <ul class="other"> </ul>
                                </div>
                                <p class="poster">
                                    <img src="" onerror="noImg(this);" alt="영화제목 출력" />
                                </p>
                            </div>
                            <div class="choice-seat-area">
                                <div class="legend">
                                    <ul class="list"> </ul>
                                </div>
                                <div class="seat-num">
                                    <p class="tit">선택좌석</p>
                                    <div class="my-seat">
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                    </div>
                                </div>
                            </div>
                            <div class="pay-area">
                                <p class="count"></p>
                                <div class="pay">
                                    <p class="tit">최종결제금액</p>
                                    <div class="money">
                                        <em>0</em> <span>원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group">
                                <a href="javaScript:void(0)" class="button"          id="pagePrevious" title="이전">이전</a>
                                <a href="javaScript:void(0)" class="button disabled" id="pageNext"     title="다음">다음</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>

</body>
</html>