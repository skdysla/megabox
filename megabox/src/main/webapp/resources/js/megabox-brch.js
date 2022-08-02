/**
 * 극장
 */
var Brch = function() {

	var option = {};
	var vTheabKindCd;

	// 무대인사
	this.makeHtmlForMovieEventList = function(data) {

		var key, chkKey, rpstMovieNo;
		var $li, $title, $div;
		var arrList = new Array();

		var mh = new movieHtml();
		var $focus = $('.movie-greeting');

		$.each(data.megaMap.movieEventList, function(i, param) {

			// 키는 대표영화번호와 상영일자로 한다
			chkKey = param.rpstMovieNo + '|' + param.eventProgrsDe;

			// 무대인사 라인 생성
			if (key != chkKey) {

				key = chkKey;

				$li = $('<li>');
				$li.append($('<p class="greeting-date">').html(param.eventProgrsDe.maskDate()));

				arrList.push($li);
			}

			// 제목 생성
			if (option.movieData.masterType == 'brch' && rpstMovieNo != param.rpstMovieNo) {

				rpstMovieNo = param.rpstMovieNo;

				$title = $('<div class="theater-movie-tit">');

				switch(param.admisClassCd){
				case 'AD01' : $title.append('<p class="movie-grade age-all"></p>'); break; //전체 관람가
				case 'AD02' : $title.append('<p class="movie-grade age-12"></p>' ); break; //12세 이상 관람가
				case 'AD03' : $title.append('<p class="movie-grade age-15"></p>' ); break; //15세 이상 관람가
				case 'AD04' : $title.append('<p class="movie-grade age-19"></p>' ); break; //청소년 관람 불가
				case 'AD06' : $title.append('<p class="movie-grade age-no"></p>' ); break; //미정
				}

				$li.prepend($title.append($('<p>').html(param.movieNm)));
			}

			// 영화일때 상영관 부분에 영화관 추가
			if (option.movieData.masterType == 'movie') {
				param.theabNm = param.brchNm +' '+ param.theabNm;
			}

			// 무대인사 설명 부분 설정
			param.eventProgrsStartDt += '~' + param.eventProgrsEndDt;

			$div = $('<div class="greeting-infomation">');

			$div.append($('<p class="greeting-location">').html(param.theabNm));
			$div.append($('<p class="greeting-time"    >').html(param.eventProgrsStartDt));
			$div.append($('<p class="greeting-moment"  >').html(param.eventProgrsCdNm));
			$div.append($('<p class="greeting-person"  >').html(param.eventDesc));

			switch(param.soldoutAt){
			case 'Y': $div.append('<p class="btn"><span class="button gray">매진</span></p>'); break;
			default : $div.append('<p class="btn"><a href="" class="button purple" title="바로예매">바로예매</a></p>');
			}

			$div.attr({   'brch-no'      : param.brchNo
						, 'play-schdl-no': param.playSchdlNo
						, 'rpst-movie-no': param.rpstMovieNo
						, 'theab-no'     : param.theabNo
						, 'play-de'      : param.playDe
						, 'play-seq'     : param.playSeq
				});

			$li.append($div);
		});

		if (data.megaMap.movieEventList == undefined  || data.megaMap.movieEventList.length == 0) {

			$focus.prev().hide(); // 제목
			$focus.hide();        // 내용

		} else {

			$focus.prev().show(); // 제목
			$focus.show();        // 내용

			$focus.removeClass('off');
			$focus.html($('<ul>').html(arrList));
			$focus.append($(mh.getGreetingDef()));

			if (arrList.length <= 1) {
				$focus.find('.btn-more').hide();
			}
		}
	}

	// 상영시간표 날짜 생성
	this.makeHtmlForMovieFormDeList = function(data) {

		allPlayDates = []; //달력활성일자
		disdaysFromServer = [];

		option.crtDe           = data.megaMap.crtDe;
		option.playDe          = data.megaMap.playDe;
		option.movieData.crtDe = data.megaMap.crtDe;

		$.each(data.megaMap.movieFormDeList, function(i, param) {

			// 휴일일자셋팅
			if (param.scrdtDivCd == 'HLDY') {
				setHldyAdopt(param.playDe.maskDate());
			}
			// 편성여부
			if (param.formAt == 'Y') {
				setDisdyAdopt(param.playDe.maskDate());     //영화편성일자셋팅
				allPlayDates.push(param.playDe.maskDate()); //달력셋팅
			}
		});

		// 상영 날짜목록 생성
		mbThCalendar.arrCkFlag     = false;
		mbThCalendar.globalSvrDate = option.crtDe;
		mbThCalendar.tempMthd      = MegaboxUtil.Brch.tempMthd;
		mbThCalendar.setUI();

		// 달력 설정 및 날짜 설정
		MegaboxUtil.Brch.setDatePicker(option.playDe.maskDate());

		// 예매 가능일
		if (allPlayDates.length > 0) {

			var $obj = $(document.querySelector('[date-data="'+ option.playDe.maskDate() +'"]'));

			// 상영 시간표의 날짜 이동
			if ($obj.length == 0 || $obj.attr('tabindex') == '-1') {

				// 상영 시간표에 날짜 설정
				mbThCalendar.events.trimdate({'mnDate' : option.playDe.maskDate()});
			}

			// 상영 시간표에 조회 날짜 선택
			$(document.querySelector('[date-data="'+ option.playDe.maskDate() +'"]')).addClass('on');
		}
	}

	// 달력 선택시 일자 이동
	this.setFormDeOnclickCalendar = function() {

		var playDe = $('[name=datePicker]').val();

		// 상영대상일 여부
		if ($.inArray(playDe, allPlayDates) > -1) {

			// 상영 시간표의 날짜 이동
			mbThCalendar.events.trimdate({'mnDate' : playDe});

			// 상영 시간표에 날짜 선택
			$(document.querySelector('[date-data="'+ playDe +'"]')).addClass('on');

			// 상영목록 조회
			MegaboxUtil.Brch.callSchedule(playDe);

		} else {
			gfn_alertMsgBoxSize('예매가능일이 아닙니다.', 400, 170);
		}
	}

	// 상영시간표나, 달력에서 선택했을때 호출 됨
	this.tempMthd = function(opts, dates) {

		// 상영시간표에서 옴
		if (dates != undefined) {

			mbThCalendar.lastSavedDate = dates;

			// 상영관람가능일자 여부
			if ($.inArray(dates, allPlayDates) > -1) {

				// 달력날짜 설정
				$('[name=datePicker]').val(dates);

				// 일자 설정
				$(document.querySelector('[date-data="'+ dates +'"]')).addClass('on');

				// 상영목록 조회
				MegaboxUtil.Brch.callSchedule(dates);
			}
		}
	}

	// 상영시간표 > 달력 초기화
	this.setDatePicker = function(playDe) {

		// 달력 삭제
		$('[name=datePicker]').datepicker('destroy');

		// 달력 설정
		$('[name=datePicker]').datepicker({
			  tempHtmlShow         : true
			, allPlayDateClassName : 'meagBox-selected-day'
			, allPlayDates         : allPlayDates
			, showButtonPanel      : true
			, minDate              : mbThCalendar.globalSvrDate.maskDate()
			, showAnim             : 'fadeIn'
			, onSelect             : MegaboxUtil.Brch.setFormDeOnclickCalendar
			, beforeShow           : function(input, inst) {

				// 달력위치 변경
				var _cal = inst.dpDiv;

				setTimeout(function(){
					_cal.position({
						  of        : $('.time-schedule')
						, my        : 'right top'
						, at        : 'right top'
						, collision : 'none none'
					});
				}, 0);
			}
		});

		// 달력값 설정
		$('[name=datePicker]').val(playDe);
	}

	// 상영시간
	this.makeHtmlForMovieFormList = function(data) {

		var movieNm, rpstMovieNo, brchNo, theabNo, playKindCd, idx;
		var $list, $title, $body, $tr, $theab;

		var arrList = new Array();

		var mh = new movieHtml();

		// 지역리스트 제외 삭제
		$('.theater-list-box div.tab-layer').nextAll().remove();

		// 상영목록이 관련 내역 추가
		if (data.megaMap.movieFormList == undefined || data.megaMap.movieFormList.length == 0) {

			arrList.push(mh.getNoMovie());
		}

		// 상영목록 생성
		$.each(data.megaMap.movieFormList, function(i, param) {

			// 영화별일때 영화관변경
			if (option.movieData.masterType == 'movie' && brchNo != param.brchNo) {

				idx    = 0;
				brchNo = param.brchNo;

				$list  = $('<div class="theater-list">');
				$title = $(mh.getTitle());

				$title.find('a').attr({'href' : '/theater?brchNo='+param.brchNo, 'title' : param.brchNm + ' 상세보기'}).html(param.brchNm);

				arrList.push($list.html($title));
			}

			// 극장별일때 영화변경
			if (option.movieData.masterType == 'brch' && (rpstMovieNo != param.rpstMovieNo || movieNm != param.movieNm)) {

				idx         = 0;
				movieNm     = param.movieNm;
				rpstMovieNo = param.rpstMovieNo;

				$list  = $('<div class="theater-list">');
				$title = $(mh.getTitle());

				var arrObj = $title.find('p');

				// 영화 관람가 class 설정
				switch(param.admisClassCd){
				case 'AD01' : $(arrObj[0]).addClass('age-all'); break; //전체 관람가
				case 'AD02' : $(arrObj[0]).addClass('age-12' ); break; //12세 이상 관람가
				case 'AD03' : $(arrObj[0]).addClass('age-15' ); break; //15세 이상 관람가
				case 'AD04' : $(arrObj[0]).addClass('age-19' ); break; //청소년 관람 불가
				case 'AD06' : $(arrObj[0]).addClass('age-no' ); break; //미정
				}

				// 타이틀 설정
				$(arrObj[1]).find('a').html(param.movieNm).attr({'href' : '/movie-detail?rpstMovieNo='+ param.rpstMovieNo, 'title' : param.movieNm +' 상세보기'});
				$(arrObj[2]).find('span').html(param.movieStatCdNm);
				$(arrObj[2]).append('/상영시간 ' + param.moviePlayTime +'분');

				arrList.push($list.html($title));
			}

			// 제목 변경 || 상영관 변경
			if (idx == 0 || theabNo != param.theabNo) {

				idx        = 0;
				theabNo    = param.theabNo;
				playKindCd = param.playKindCd;

				$body  = $(mh.getBrch());
				$theab = $body;

				$body.find('.theater-name').html(param.theabExpoNm);
				$body.find('.chair').html('총 '+ param.totSeatCnt +'석');
				$body.find('.theater-type-area').html(param.playKindNm);

				$list.append($body);
			}
			// 상영종류 변경
			else if (playKindCd != param.playKindCd) {

				idx        = 0;
				playKindCd = param.playKindCd;

				$body = $(mh.getBrch()).find('.theater-time');
				$body.find('.theater-type-area').html(param.playKindNm);

				$theab.append($body);
			}

			// 영화 8개 여부
			if (idx == 0 || idx % 8 == 0) {
				$tr = $('<tr>');
				$body.find('tbody').append($tr);
			}

			// 매진
			if (param.restSeatCnt == 0) {

				$tr.append(mh.getEndMovie().replace('#1', param.playStartTime));

			} else {

				var $td = $(mh.getOngMovie());

				var arrObj = $td.find('p');

				// 시간 class 설정
				switch(param.playTyCd) {
				case 'ERYM'   : $td.find('.ico-box').html('<i class="iconset ico-sun"></i>'   ); break; //조조
				case 'BRUNCH' : $td.find('.ico-box').html('<i class="iconset ico-brunch"></i>'); break; //브런치
				case 'MNIGHT' : $td.find('.ico-box').html('<i class="iconset ico-moon"></i>'  ); break; //심야
				default       : $td.find('.ico-box').html('<i class="iconset ico-off"></i>'   ); break; //없음
				}

				// 이벤트 class 설정
				switch(param.eventDivCd) {
				case 'MEK01' : $td.find('.option').html('<li><i class="iconset ico-stage"></i></li>'    ); break; //무대인사
				case 'MEK02' : $td.find('.option').html('<li><i class="iconset ico-open"></i></li>'     ); break; //회원시사
				case 'MEK03' : $td.find('.option').html('<li><i class="iconset ico-user"></i></li>'     ); break; //오픈시사
				case 'MEK04' : $td.find('.option').html('<li><i class="iconset ico-goods"></i></li>'    ); break; //굿즈패키지
				case 'MEK05' : $td.find('.option').html('<li><i class="iconset ico-singalong"></i></li>'); break; //싱어롱
				case 'MEK06' : $td.find('.option').html('<li><i class="iconset ico-gv"></i></li>'       ); break; //GV
				default      : $td.find('.option').remove();
				}

				// 정보 설정
				$(arrObj[0]).html(param.playStartTime);
				$(arrObj[1]).html(param.restSeatCnt +'석');
				$(arrObj[2]).html(param.playStartTime + '~' + param.playEndTime);
				$(arrObj[3]).html(param.seq + '회차');

				// 값 설정
				$td.attr({'brch-no'      : param.brchNo
						, 'play-schdl-no': param.playSchdlNo
						, 'rpst-movie-no': param.rpstMovieNo
						, 'theab-no'     : param.theabNo
						, 'play-de'      : param.playDe
						, 'play-seq'     : param.seq
				});

				$tr.append($td);
			}

			idx++;
		});

		$('.theater-list-box').append(arrList);
	};

	// 유의사항 등록
	this.makeHtmlForPlaytimeGuide = function(data) {

		var data;
		var arrList = [];
		var $div    = $('.box-border:first');

		if (option.movieData.theabKindCd != null) {
			data = data.megaMap.spclBrchInfo; //특별관
		} else {
			data = data.megaMap.brchInfo;     //지점
		}

		if (data != undefined) {
			if (option.movieData.theabKindCd != null) {
				if (data.spclTheabPlayGuideMainCn != null) arrList.push('<li>'+ data.spclTheabPlayGuideMainCn +'</li>');
				if (data.spclTheabPlayGuideEtcCn  != null) arrList.push('<li>'+ data.spclTheabPlayGuideEtcCn  +'</li>');
			} else {
				if (data.playTimeGuideCn1 != null) arrList.push('<li>'+ data.playTimeGuideCn1 +'</li>');
				if (data.playTimeGuideCn2 != null) arrList.push('<li>'+ data.playTimeGuideCn2 +'</li>');
				if (data.playTimeGuideCn3 != null) arrList.push('<li>'+ data.playTimeGuideCn3 +'</li>');
			}
		}

		if (arrList.length == 0) {
			$div.hide();
		} else {
			$div.show();
			$div.html(arrList);
		}
	}

	// 특별관 정보
	this.makeHtmlForBrchInfo = function(data) {

		var data = data.megaMap.brchInfo;

		if (vTheabKindCd != undefined) {

			$('.brchNm').html(data.brchNm);
			$('.addr1' ).html(data.roadNmAddr);
			$('.addr2' ).html(data.laddrAddr+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
		}
	}

	// 무대인사, 상영시간표 조회
	this.callSchedule = function(val) {
		if (val != undefined) {
			if (val.indexOf('.') != -1) {
				option.movieData.playDe = val;
			}else {
				option.movieData.areaCd = val;
				option.movieData.playDe = $('[name=datePicker]').val();
			}
		}

		if (option.movieData.playDe != undefined && option.movieData.playDe.indexOf('.') != -1) {
			option.movieData.playDe = option.movieData.playDe.replaceAll('.', '');
		}

		if (option.movieData.masterType == 'movie' && option.movieData.areaCd == undefined) {
			option.movieData.areaCd = $('.theater-list-box .tab-layer li.on > a').data('areaCd');
		}

		$.ajaxMegaBox({
			url      : '/on/oh/ohc/Brch/schedulePage.do',
			data     : JSON.stringify(option.movieData),
			success  : function (data, textStatus, jqXHR) {

				// 상영시간표 목록 생성
				MegaboxUtil.Brch.makeHtmlForMovieFormList(data);

				if (option.movieData.firstAt == 'Y' || data.megaMap.firstAt == 'Y') {
					option.movieData.firstAt = 'N';

					// 극장정보
					MegaboxUtil.Brch.makeHtmlForBrchInfo(data);

					// 상영시간표 날짜 생성
					MegaboxUtil.Brch.makeHtmlForMovieFormDeList(data);

					// 무대인사
					MegaboxUtil.Brch.makeHtmlForMovieEventList(data);

					// 유의사항
					MegaboxUtil.Brch.makeHtmlForPlaytimeGuide(data);
				}
			}
		});
	}

	// Zone 정보
	this.getMakeHtmlForZoneInfo = function(data) {

		var html = '';
		var $div;

		// 지점여부 || Zone 정보 여부
		if (vTheabKindCd != undefined || data.brchZoneList.length == 0) {
			return $div;
		}

		// 값 설정
		$div = $(new movieHtml().getZoneHtml());

		$div.find('p').prepend(option.brchData.brchNm);

		$.each(data.brchZoneList, function(i, param){

			param.arr = param.massTrafDesc.split(':');

			switch(param.arr.length) {
			case 1  : html += '<p>'+ param.arr[0].trim() + '</p>'; break;
			default : html += '<p><span class="font-gblue">'+ param.arr[0].trim() +'</span> : '+ param.arr[1].trim() +'</p>';
			}
		});

		$div.find('.divide').append(html);

		return $div;
	}

	// 관람료
	this.getMakeHtmlForPriceFormList = function(data) {

		var key, chkKey;
		var divKey, chkDivKey;
		var $div, $table, $body, $tr, $th;

		var cnt = 0;

		var mh = new movieHtml();

		var arrList = new Array();

		$.each(data.priceList, function(i, param) {

			chkKey = param.theabKindCd + param.seatClassCd + param.movieKindCd;
			chkDivKey = chkKey + param.scrdtDivCd;

			$tr = $('<tr>');

			// 상영관|좌석|영화 변경 여부
			if (key != chkKey) {

				// 테이블을 2개씩 넣기 위해 확인
				if (cnt++ % 2 == 0) {
					arrList.push($div = $('<div class="fee-table-box">'));
				}

				// 일반 상영관일 때 상영관명 미노출 처리
				if (param.theabKindCd == 'NOR') param.theabKindNm = '';

				// 일반석일때 좌석명 미노출 처리
				if (param.seatClassCd == 'GERN_CLS') param.seatClassNm = '';

				// 포커스 생성
				$table = $(mh.getPriceHtml());
				$body  = $table.find('tbody');

				// 테이블 생성
				$div.append($table);

				// 키 변경
				key = chkKey;

				// 상영관|좌석|영화 명 노출
				$table.find('.fee-table-tit').html(param.theabKindNm +' '+ param.seatClassNm +' '+ param.movieKindNm);
			}

			// 상영요일 변경 여부
			if (divKey != chkDivKey) {

				// 키 변경
				divKey = chkDivKey;

				// 요일 생성 및 값 설정
				$th = $('<th scope="rowgroup" rowspan="1">');

				switch(param.scrdtDivCd){
				case 'WKDAY' : $tr.html($th.html('월~목'));            break;
				case 'WKEND' : $tr.html($th.html('금~일<br/>공휴일')); break;
				}

			} else {

				// 행 갯수 변경
				$th.attr('rowspan', $th.attr('rowspan').toNumber() +1);
			}

			// 값 설정
			$tr.append($('<td>').html(param.timesDivNm + ' ('+ param.timesAdoptStartTime.format("XX:XX") +'~)'));
			$tr.append($('<td>').html((param.tkaStdAmt <= 0)? '-' : param.tkaStdAmt.format()));
			$tr.append($('<td>').html((param.tkyStdAmt <= 0)? '-' : param.tkyStdAmt.format()));

			$body.append($tr);
		});

		return arrList;
	}

	// 관람료를 조회한다
	this.callPrice = function () {

		var arrList = new Array();

		$.ajaxMegaBox({
			url      : '/on/oh/ohc/Brch/viewAmPage.do',
			data     : JSON.stringify(option.brchData),
			success  : function (data, textStatus, jqXHR) {

				// Zone 정보
				arrList.push(MegaboxUtil.Brch.getMakeHtmlForZoneInfo(data));

				// 관람료 목록 생성
				arrList = arrList.concat(MegaboxUtil.Brch.getMakeHtmlForPriceFormList(data));

				// 관람기준 목록 생성
				$.each(data.brchCnList, function(i, param){
					if (param.brchCn == null) return true;
					arrList.push($.parseHTML(param.brchCn)[0].textContent);
				});

				option.priceObj.nextAll().remove();
				option.priceObj.after(arrList);
			}
		});
	}

	// 기본틀
	var movieHtml = function() {

		// 무대인사
		var greetingDefHtml  = '';
			greetingDefHtml += '<ul></ul>';
			greetingDefHtml += '<div class="btn-more">';
			greetingDefHtml += '	<button type="button" class="btn">';
			greetingDefHtml += '		<span>닫기</span>';
			greetingDefHtml += '		<i class="iconset ico-btn-more-arr"></i>';
			greetingDefHtml += '	</button>';
			greetingDefHtml += '</div>';

		this.getGreetingDef = function () {
			return greetingDefHtml;
		}

		// 상영시간표
		var movieDefHtml = '';
			movieDefHtml += '<div class="time-schedule mb30">';
			movieDefHtml += '	<div class="wrap">';
			movieDefHtml += '		<button type="button" title="이전 날짜 보기" class="btn-pre">';
			movieDefHtml += '			<i class="iconset ico-cld-pre"></i> <em>이전</em>';
			movieDefHtml += '		</button>';
			movieDefHtml += '		<div class="date-list">';
			movieDefHtml += '			<div class="year-area">';
			movieDefHtml += '				<div class="year" style="left:30px;"></div>';
			movieDefHtml += '				<div class="year" style="left:450px;"></div>';
			movieDefHtml += '			</div>';
			movieDefHtml += '			<div class="date-area">';
			movieDefHtml += '			</div>';
			movieDefHtml += '		</div>';
			movieDefHtml += '		<button type="button" title="다음 날짜 보기" class="btn-next">';
			movieDefHtml += '			<i class="iconset ico-cld-next"></i> <em>다음</em>';
			movieDefHtml += '		</button>';
			movieDefHtml += '		<div class="bg-line">';
			movieDefHtml += '			<input type="hidden" name="datePicker">';
			movieDefHtml += '			<button type="button" class="btn-calendar-large" title="달력보기"> 달력보기</button>';
			movieDefHtml += '		</div>';
			movieDefHtml += '	</div>';
			movieDefHtml += '</div>';
			movieDefHtml += '<div class="movie-option mb20">';
			movieDefHtml += '	<div class="option">';
			movieDefHtml += '		<ul>';
			movieDefHtml += '			<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>';
			movieDefHtml += '			<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>';
			movieDefHtml += '			<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>';
			movieDefHtml += '			<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>';
			movieDefHtml += '			<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>';
			movieDefHtml += '			<li><i class="iconset ico-gv" title="GV"></i>GV</li>';
			movieDefHtml += '			<li><i class="iconset ico-sun" title="조조"></i>조조</li>';
			movieDefHtml += '			<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>';
			movieDefHtml += '			<li><i class="iconset ico-moon" title="심야"></i>심야</li>';
			movieDefHtml += '		</ul>';
			movieDefHtml += '	</div>';
			movieDefHtml += '	<div class="rateing-lavel">';
			movieDefHtml += '		<a href="" class="" title="관람등급안내">관람등급안내</a>';
			movieDefHtml += '	</div>';
			movieDefHtml += '</div>';
			movieDefHtml += '<div class="reserve theater-list-box">';       //상영시간표
			movieDefHtml += '	<div class="tab-block tab-layer mb30">';
			movieDefHtml += '		<ul></ul>';
			movieDefHtml += '	</div>';
			movieDefHtml += '</div>';
			movieDefHtml += '<div class="box-border v1 mt30">';             //유의사항
			movieDefHtml += '	<ul class="dot-list gray"></ul>';
			movieDefHtml += '</div>';

		this.getMovieDef = function () {
			return movieDefHtml;
		}

		// 상영시간표 > 영화제목
		var titleHtml01  = '';
			titleHtml01 += '<div class="theater-tit">';
			titleHtml01 += '	<p class="movie-grade"></p>';
			titleHtml01 += '	<p><a></a></p>';
			titleHtml01 += '	<p class="infomation"><span></span></p>';
			titleHtml01 += '</div>';

		var titleHtml02 = '<div class="theater-area-click"><a href="" title="상영시간표"></a></div>';

		this.getTitle = function() {

			return (option.movieData.masterType == 'brch')? titleHtml01 : titleHtml02;
		}

		// 상영시간표 > 관틀
		var brchHtml  = '';
			brchHtml += '<div class="theater-type-box">';
			brchHtml += '	<div class="theater-type">';
			brchHtml += '		<p class="theater-name">관명</p>';
			brchHtml += '		<p class="chair">총 좌석수</p>';
			brchHtml += '	</div>';
			brchHtml += '	<div class="theater-time">';
			brchHtml += '		<div class="theater-type-area">영화타입</div>';
			brchHtml += '		<div class="theater-time-box">';
			brchHtml += '			<table class="time-list-table">';
			brchHtml += '				<caption>상영시간을 보여주는 표 입니다.</caption>';
			brchHtml += '				<colgroup>';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '					<col style="width:99px;" />';
			brchHtml += '				</colgroup>';
			brchHtml += '				<tbody>';
			brchHtml += '				</tbody>';
			brchHtml += '			</table>';
			brchHtml += '		</div>';
			brchHtml += '	</div>';
			brchHtml += '</div>';

		this.getBrch = function() {
			return brchHtml;
		}

		// 상영관 - 영화정보 : 매진
		var endMovieHtml  = '';
			endMovieHtml += '<td class="end-time">';
			endMovieHtml += '	<p class="time">#1</p>';
			endMovieHtml += '	<p class="chair">매진</p>';
			endMovieHtml += '</td>';

		this.getEndMovie = function() {
			return endMovieHtml;
		}

		// 상영관 - 영화정보
		var ongMovieHtml = '';
			ongMovieHtml += '<td class="">';
			ongMovieHtml += '	<div class="td-ab">';
			ongMovieHtml += '		<div class="txt-center">';
			ongMovieHtml += '			<a href="" title="영화예매하기">';
			ongMovieHtml += '				<div class="ico-box"></div>';
			ongMovieHtml += '				<p class="time">08:45</p>';
			ongMovieHtml += '				<p class="chair">45석</p>';
			ongMovieHtml += '				<ul class="option"></ul>';
			ongMovieHtml += '				<div class="play-time">';
			ongMovieHtml += '					<p>09:45~11:00</p>';
			ongMovieHtml += '					<p>1회차</p>';
			ongMovieHtml += '				</div>';
			ongMovieHtml += '			</a>';
			ongMovieHtml += '		</div>';
			ongMovieHtml += '	</div>';
			ongMovieHtml += '</td>';

		this.getOngMovie = function() {
			return ongMovieHtml;
		}

		// 상영시간표
		var noMovieHtml  = '';
			noMovieHtml += '<div class="no-location-result">';
			noMovieHtml += '	<div class="bg-film"></div>';
			noMovieHtml += '		해당 #에 상영 시간표가 없습니다.<br />다른#을 선택해 주세요.';
			noMovieHtml += '	</div>';
			noMovieHtml += '</div>';

		this.getNoMovie = function() {

			var text = '지역';

			if (option.movieData.detailType == 'area') text = '극장';
			if (option.movieData.detailType == 'spcl') text = '특별관';

			return noMovieHtml.replaceAll('#', text)
		};

		// 관람료
		var priceHtml  = '';
			priceHtml += '<div class="fee-table">';
			priceHtml += '	<p class="fee-table-tit">컴포트 2D</p>';
			priceHtml += '	<div class="table-wrap">';
			priceHtml += '		<table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">';
			priceHtml += '			<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>';
			priceHtml += '			<colgroup>';
			priceHtml += '				<col />';
			priceHtml += '				<col style="width:25%;" />';
			priceHtml += '				<col style="width:25%;" />';
			priceHtml += '				<col style="width:25%;" />';
			priceHtml += '			</colgroup>';
			priceHtml += '			<thead>';
			priceHtml += '				<tr>';
			priceHtml += '					<th scope="col">요일</th>';
			priceHtml += '					<th scope="col">상영시간</th>';
			priceHtml += '					<th scope="col">일반</th>';
			priceHtml += '					<th scope="col">청소년</th>';
			priceHtml += '				</tr>';
			priceHtml += '			</thead>';
			priceHtml += '			<tbody></tbody>';
			priceHtml += '		</table>';
			priceHtml += '	</div>';
			priceHtml += '</div>';

		this.getPriceHtml = function() {
			return priceHtml;
		}

		// 존정보
		var zoneHtml  = '';
			zoneHtml += '<div class="box-slash mb30">';
			zoneHtml += '	<p class="tit-pr font-28"> 가격 안내</p>';
			zoneHtml += '	<div class="divide"></div>';
			zoneHtml += '	<div class="mt05 font-gblue">※ 단, 조조 시간대는 Zone별 관람가격이 동일합니다.</div>';
			zoneHtml += '</div>';

		this.getZoneHtml = function() {
			return zoneHtml;
		}
	}

	// 영화 이벤트
	this.movieEvent = function() {

		// 영화별 - 지역선택
		$('.theater-list-box .tab-layer li').on('click', function(){

			// 조회
			MegaboxUtil.Brch.callSchedule($(this).find('a').data('areaCd').toString());
		});

		// 무대인사 > 열기닫기
		$('.movie-greeting').on('click', '.btn-more .btn', function() {

			var $this = $('.movie-greeting');

			// 닫힌상태
			if ($this.hasClass('off')) {

				$this.removeClass("off").find('span').html('닫기');
				$this.find('li:eq(0)').nextAll().show();

			} else {
				$this.addClass("off").find('span').html('전체일정보기');
				$this.find('li:eq(0)').nextAll().hide();
			}
		});

		// 상영시간표 > 달력 클릭
		$('.time-schedule').on('click', '.btn-calendar-large', function() {

			if (allPlayDates.length != 0) {
				$('[name=datePicker]').datepicker('show');
			}
		});

		// 관람등급안내
		$('.movie-option').on('click', '.rateing-lavel', function(e) {
			e.preventDefault();

			gfn_divLayPopUp({
				url       : '/on/oh/ohc/Brch/BrchRateingLavelPopup.do',
				height    : '470',
				width     : '640'
			});
		});

		// 무대인사 바로예매
		$('.movie-greeting').on('click', 'a.button', function(e) {
			e.preventDefault();
			MegaboxUtil.Brch.mainValidAndPopup($(this).closest('.greeting-infomation'));
		});

		// 상영시간표 바로예매
		$('.theater-list-box').on('click', '.theater-time-box td', function(e) {
			e.preventDefault();
			if (!$(this).hasClass('end-time')) MegaboxUtil.Brch.mainValidAndPopup($(this));
		});

		// 달력 오늘 선택
		$.datepicker._gotoToday = function(id) {

			var target = $(id);
			var inst   = this._getInst(target[0]);

			var arr    = option.crtDe.maskDate().split('.');

			inst.selectedDay = arr[2]
			inst.drawMonth   = inst.selectedMonth = arr[1] -1;
			inst.drawYear    = inst.selectedYear  = arr[0].toNumber();

			this._setDateDatepicker(target, new Date());
			this._selectDate(id, this._getDateDatepicker(target));
		}
	}

	// 예매하기
	this.mainValidAndPopup = function($obj) {

		var sampleObj = new Object();

		sampleObj['brch-no']       = $obj.attr('brch-no');       //지점번호
		sampleObj['play-schdl-no'] = $obj.attr('play-schdl-no'); //상영일정번호
		sampleObj['rpst-movie-no'] = $obj.attr('rpst-movie-no'); //대표영화번호
		sampleObj['theab-no']      = $obj.attr('theab-no');      //상영관번호
		sampleObj['play-de']       = $obj.attr('play-de');       //상영일자
		sampleObj['play-seq']      = $obj.attr('play-seq');      //상영회차

		// megabox-simpleBokd.js
		fn_mainValidAndPopup(sampleObj, 'brch');
	}

	// 예매시간 초과시 호출됨 - megabox-simpleBokd.js
	this.fn_selectMovieFormDeBokdList = function() {
		var playDe = $('[name=datePicker]').val();
		MegaboxUtil.Brch.callSchedule(playDe);
	}

	// 요기만 호출함
	// movieObj  : 상영시간표 제목 객체
	// priceObj  : 관람료 제목 객체
	// movieData : 영화정보
	// brchData  : 극장정보
	// list      : 영화별 지역리스트
	this.init = function(param) {

		if (param.list      != undefined) option.list      = param.list;
		if (param.movieObj  != undefined) option.movieObj  = param.movieObj;
		if (param.priceObj  != undefined) option.priceObj  = param.priceObj;
		if (param.movieData != undefined) option.movieData = param.movieData;
		if (param.brchData  != undefined) option.brchData  = param.brchData;
		if (param.tabChangeAt == undefined) param.tabChangeAt = "N";
		// 상영시간표 조회
		if (option.movieObj != undefined) {
			// 기본값 설정
			option.movieData.firstAt = 'Y';
			if(param.tabChangeAt == "N"){
				option.movieData.playDe  = $('[name=datePicker]').val();
			}

			// front.js window.onload 함수로 호출되나 속도 차이로 오류나 이사함
			if (option.movieData.playDe == undefined) {

				mbThCalendar.init({
					  target       : 'date-area'
					, fetchHoliday : setHldyAdopt
					, fetchDisday  : setDisdyAdopt
					, holidays     : 'holidaysFromServer'
					, disdays      : 'disdaysFromServer' });
			}

			// 상영영시간표 구조 설정
			if ($('.theater-list-box').length == 0) {

				// 기본틀
				param.movieObj.after(new movieHtml().getMovieDef());

				// 지역세팅
				$.each(option.list, function(i, data ){
					$('.theater-list-box .tab-layer ul').append('<li><a href="" class="btn" data-area-cd="'+ data.areaCd +'" title="'+ data.areaNm +' 선택">'+ data.areaNm +'</a></li>');
				});

				// 지역선택
				$('.theater-list-box .tab-layer li:first').addClass('on');

				// 이벤트 연결
				MegaboxUtil.Brch.movieEvent();
			}

			//  영화별일때 지역노출
			if (option.movieData.masterType == 'movie') {
				$('.theater-list-box .tab-layer').show();
			} else {
				$('.theater-list-box .tab-layer').hide();
			}

			// 필수값 확인
			if (option.movieData.masterType == 'movie' && option.movieData.movieNo == undefined) {
				return;
			}
			if (option.movieData.masterType == 'brch' && option.movieData.brchNo == undefined) {
				return;
			}

			// 영화
			if (option.movieData.masterType == 'movie') {
				option.movieData.movieNo1 = option.movieData.movieNo;
			}

			// 극장
			if (option.movieData.masterType == 'brch') {
				option.movieData.brchNo1 = option.movieData.brchNo;
			}

			// 특별관
			if (option.movieData.detailType == 'spcl') {

				if (option.movieData.theabKindCd == 'TBQ') option.movieData.theabKindCd = 'TB';

				option.movieData.spclbYn1     = 'Y';
				option.movieData.theabKindCd1 = option.movieData.theabKindCd;
			}

			// 값을 String으로 변경
			$.map(option.movieData, function(val, key){
				if (val != undefined) option.movieData[key] = val.toString();
			});
			$.map(option.brchData , function(val, key){option.brchData [key] = val.toString();});

			// 조회
			MegaboxUtil.Brch.callSchedule(option.movieData.playDe);
		}

		// 금액
		if (option.priceObj != undefined) {

			MegaboxUtil.Brch.callPrice();
		}
	}

	// 특별관 이벤트 연결
	this.bindSpclEvent = function(kindCd) {

		vTheabKindCd = kindCd;

		// 상영관 선택
		$('#contents').on('click', '.tab-sorting button', function() {

			var movieData = {};
			var brchData  = {};
			var option    = {'movieData' : movieData, 'brchData' : brchData};

			var arr = $('#contents div.sectionPlayTime h2');

			// 영화정보
			option.movieObj       = $(arr[1]);
			movieData.masterType  = 'brch';
			movieData.detailType  = 'spcl';
			movieData.theabKindCd = vTheabKindCd;
			movieData.brchNo      = $(this).data('cd');

			// 좌석정보
			option.priceObj      = $(arr[2]);
			brchData.brchNo      = $(this).data('cd');
			brchData.theabKindCd = vTheabKindCd;

			MegaboxUtil.Brch.init(option);
		});

		// 약도클릭
		$('#contents').on('click', '.box-slash-btn', function(e) {

			e.preventDefault();

			location.href = '/theater?brchNo=' + $('#contents .tab-sorting button.on').data('cd');
		});

		// 최초한번 조회
		$('#contents .tab-sorting button.on').click();
	}
};

MegaboxUtil.Brch = new Brch();
