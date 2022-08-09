<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:url var="root" value="/" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="${root }resources/css/calendar.css" >
<script>
    // 달력 생성
	  const makeCalendar = (date) => {
	    
	    // 현재의 년도와 월 받아오기
	    const nowYear = new Date(date).getFullYear();
	    const nowMonth = new Date(date).getMonth() + 1;
	
	    // 지난달의 마지막 요일
	    const prevDay = new Date(nowYear, nowMonth - 1, 1).getDay();
	
	    // 현재 월의 마지막 날 구하기
	    const lastDay = new Date(nowYear, nowMonth, 0).getDate();
	    
	    // 남은 박스만큼 다음달 날짜 표시
	    let nextDay = (prevDay + lastDay) % 7;
	    
	    if (nextDay == 0) nextDay = 7;
	
	    let htmlDummy = '';
	
	    // 전달 날짜 표시하기
	    for (let i = 0; i < prevDay; i++) {
	      htmlDummy += '<div class="noColor"></div>';
	    }
	
	    // 현재 날짜 표시하기
	    for (let i = 1; i <= lastDay; i++) {   
	      htmlDummy += '<div onclick="click_me(this)">' + i + '</div>';
	    }
	
	    // 다음달 날짜 표시하기
	    for (let i = nextDay; i < 7; i++) {
	      htmlDummy += '<div class="noColor"></div>';
	    }
	
	    document.querySelector('.dateBoard').innerHTML = htmlDummy;
	    document.querySelector('.dateTitle').innerText = nowYear + '년 ' + nowMonth + '월';
	  }
	  
	window.onload = () => {
	  const date = new Date();
	 
	  makeCalendar(date);
	  
	  // 이전달 이동
	  document.querySelector('.prevDay').onclick = () => {
	    makeCalendar(new Date(date.setMonth(date.getMonth() - 1)));
	  }
	  
	  // 다음달 이동
	  document.querySelector('.nextDay').onclick = () => {
	    makeCalendar(new Date(date.setMonth(date.getMonth() + 1)));
	  }
	};
</script>
<script>
function click_me(element){ 
	alert(element.innerHTML);
}
</script>
</head>
<body>
	<!-- style="display: none" -->
	<div class='rap'>
		<div class="header">
			<div class="btn prevDay"></div>
			<h2 class='dateTitle'></h2>
			<div class="btn nextDay"></div>
		</div>

		<div class="grid dateHead">
			<div>일</div>
			<div>월</div>
			<div>화</div>
			<div>수</div>
			<div>목</div>
			<div>금</div>
			<div>토</div>
		</div>

		<div class="grid dateBoard"></div>
	</div>
</body>
</html>