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
	
		<label>취미 </label><input type="text" id="hobby"><br>
		<a href="#" onclick="send()"><button type="button" id="hobbyBTN">보내기</button></a><br>
	내 취미는 <label id="hobby"></label> 입니다.
</body>
</html>