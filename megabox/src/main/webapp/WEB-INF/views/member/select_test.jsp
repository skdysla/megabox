<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" charEncoding="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function addressKindChange(e){
		var seoul = ["강남","홍대","영등포","여의도"];
		var gyeonggi = ["수원","평택","용인"];
		var chungcheongnam = ["천안","세종","논산"];
		var target = document.getElementById("addressKindD");
		
		if(e.value == "a") var d = seoul;
		else if(e.value == "b") var d = gyeongi;
		else if(e.value == "c") var d = chungcheongnam;
		
		target.options.length = 0;
		
		for(x in d){
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
	
	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radBokd]").click(function(){
	 
	        if($("input[name=radBokd]:checked").val() == "1"){
	            $("select[name=addressKindU]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radBokd]:checked").val() == "0"){
	              $("select[name=addressKindU]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});

	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radio]").click(function(){
	 
	        if($("input[name=radio]:checked").val() == "1"){
	            $("input:text[name=text]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radio]:checked").val() == "0"){
	              $("input:text[name=text]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
	
</script>
<script>
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
                        document.location.href="Membermain";
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

function send(){
	var hobby = document.getElementById('hobby').value;
	$.ajax({
		type: "post",
        url: "askhobby",
        data: {
            "hobby" : hobby
        },
        success: function(data){
        	console.log('통신결과');
        	console.log(data);
        }
	});
}
</script>
</head>
<body>
	<input type="radio" name="radBokd" id="radBokd" value="1" checked>지점 문의
	<div>
		<label for="addressKindU">도/특별시 선택</label>
		<select class="form-controll" id="addressKindU" name="addressKindU" onchange="addressKindChange(this)">
			<option>주소를 선택하세요</option>
			<option value="a">서울</option>
			<option value="b">경기도</option>
			<option value="c">충청남도</option>
		</select>
	</div>
	<div>
		<label for="addressKindD">주소 소분류</label>
		<select class="form-control" id="addressKindD" name="addressKindD">
			<option>선택해주세요.</option>
		</select>
	</div>
	<input type="radio" name="radBokd" id="radBokd" value="0">기타 문의
	
	<div style="width:200px;">
  <input type="radio" name="radio" id="r1" value="1" checked><label for="r1">활성화</label>
  <input type="radio" name="radio" id="r2" value="0"><label for="r2">비활성화</label>
</div>
<div style="width:200px;">
  <input type="text" name="text">
</div>

	<label>휴대폰 번호</label><input type="text" name="toNumber" id="toNumber" maxlength="11" placeholder="'-' 없이 입력"><button id="Authrequest" disabled>인증요청</button><br>
	<label>인증번호</label><input type="text" name="checkNumber" id="checkNumber"><button id="checkAuth">인증하기</button>
	
	
	<br><br><br><br><br>
	
	<input type="hidden" value="123">
	
	<br><br><br>
<script language="JavaScript">
    var SetTime = 60;      // 최초 설정 시간(기본 : 초)
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

<button type="button" onclick="TimerStart()">시작</button>
<div id="ViewTimer"></div>
<br><br>

<script>
$(document).ready(function(){
	$("input:radio[name=secondradio]").attr('disabled', 'disabled');
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=firstradio]").click(function(){
 
        if($("input[name=firstradio]:checked").val() == "Y"){
            $("input:radio[name=secondradio]").removeAttr("disabled");
        }else if($("input[name=firstradio]:checked").val() == "N"){
              $("input:radio[name=secondradio]").attr('disabled', 'disabled');
        }
    });
});
</script>

<input type="radio" name="firstradio" value="Y"><label>동의</label><br>
<input type="radio" name="firstradio" value="N"><label>미동의</label><br><br>
<div id="secondradiobox">
	<input type="radio" name="secondradio" id="secondradio" value="Y"><label>동의</label>
	<input type="radio" name="secondradio" id="secondradio" value="N" checked><label>미동의</label>
</div>

<br><br>

<script>
function selectAddress(e){
	var seoul = ["강남","강남대로(씨티)","강동","군자","동대문","마곡","목동","상봉","상암월드컵경기장","성수","센트럴","송파파크하비오","신촌","이수","창동","코엑스","홍대","화곡","ARTNINE"];
	var gyeonggi = ["고양스타필드","광명AK플라자","광명소하","금정AK플라자","김포한강신도기","남양주","남양주(P)","남양주현대아울렛 스페이스원","동탄","미사강변","백석","별내","부천스타필드시티","분당","수원","수원남문","시흥배곧","안산중앙","안성스타필드","양주","영통","용인기흥","용인테크노밸리","의정부민락","일산","일산벨라시타","킨텍스","파주금촌","파주운정","파주출판도시","하남스타필드","호매실"];
	var incheon = ["검단","송도","인천논현","청라지젤"];
	var dae_chung_sae = ["공주","논산","대전","대전신세계 아트앤사이언스","대전유성","대전중앙로","대전현대아울렛","세종(조치원)","세종나성","세종청사","오창","제천","진천","천안","청주사창","충주","홍성내포"];
	var bu_dae_gyeong = ["경북도청","경산하양","구미강동","김천","남포항","대구신세계(동대구)","대구이시아","덕천","마산","문경","부산극장","부산대","북대구(칠곡)","사상","삼천포","양산","양산라피에스타","울산","정관","창원","창원내서","해운대(장산)"];
	var gwang_jeon = ["광주상무","광주하남","목포하당(포르모)","송천","순천","여수웅천","전대(광주)","전주혁신","첨단"];
	var gangwon = ["남춘천","속초","원주","원주센트럴","춘천석사"];
	var jeju = [];
	var target = document.getElementById("secondAddress");
	
	if(e.value == "seoul") var d = seoul;
	else if(e.value == "gyeongi") var d = gyeongi;
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
<div>
		<label for="firstAddress">도/특별시 선택</label>
		<select class="form-controll" id="firstAddress" name="firstAddress" onchange="selectAddress(this)">
			<option>주소를 선택하세요</option>
			<option value="seoul">서울</option>
			<option value="gyeongi">경기</option>
			<option value="incheon">인천</option>
			<option value="dae_chung_sae">대전/충청/세종</option>
			<option value="bu_dae_gyeong">부산/대구/경상</option>
			<option value="gwang_jeon">광주/전라</option>
			<option value="gangwon">강원</option>
			<option value="jeju">제주</option>
		</select>
	</div>
		<div>
		<label for="secondAddress">주소 소분류</label>
		<select class="form-control" id="secondAddress" name="secondAddress">
			<option>선택해주세요.</option>
		</select>
	</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>asd
</body>
</html>