<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.id }">
	<script>
		location.href='login'
	</script>
</c:if>
<!DOCTYPE html>
<c:import url="../header.jsp" charEncoding="utf-8" />
<div class="container has-lnb">
            <div class="page-util">
                 <div class="inner-wrap" id="myLoaction"><div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/moviestory" title="나의 무비스토리 페이지로 이동">나의 무비스토리</a>
	<a href="/mypage/moviestory?cd=tl" title="무비타임라인 페이지로 이동">무비타임라인</a></div></div>
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
				<li class="on"><a href="MovieStory" titel="나의 무비스토리">나의 무비스토리</a></li>
				<li><a href="/mypage/myevent" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
				<li><a href="MyInquiry" title="나의 문의내역">나의 문의내역</a></li>
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

<script src="/js/megabox-movieStory.js"></script>
<script src="/static/pc/js/swiper.min.js"></script>

<form id="movieForm" method="post">
	<input type="hidden" id="currentPage" value="1">
	<input type="hidden" id="recordCountPerPage" value="10">
</form>

<!-- contents -->

<div id="myLoactionInfo" style="display: none;">
	<div class="location">
		<span>Home</span>
		<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
		<a href="/mypage/moviestory" title="나의 무비스토리 페이지로 이동">나의 무비스토리</a>
	</div>
</div>

<div id="contents" class="">
	<h2 class="tit">나의 무비스토리</h2>

	<script>
	$(document).on("click","#tab",function(){
		$(this).addClass('on').siblings().removeClass('on');
	})
	</script>
	<!-- 버튼 클릭 시 각 li 클래스 on으로 변경 / display : none 에서 block으로 변경 -->
	<div class="tab-block mb30">
		<ul>
			<li id="tab" data-url="/mypage/moviestory?cd=tl"><a id="movieTimeLineTab" href="#" class="btn" data-type="tl" title="무비타임라인 탭으로 이동">무비타임라인</a></li>
			<li id="tab" data-url="/mypage/moviestory?cd=mp"><a href="#" class="btn" data-type="mp" title="무비포스트 탭으로 이동">무비포스트</a></li>
			<li id="tab" data-url="/mypage/moviestory?cd=one"><a href="#" class="btn" data-type="one" title="관람평 탭으로 이동">관람평</a></li>
			<li id="tab" data-url="/mypage/moviestory?cd=sm"><a href="#" class="btn" data-type="sm" title="본영화 탭으로 이동">본영화</a></li>
			<li id="tab" data-url="/mypage/moviestory?cd=lm"><a href="#" class="btn" data-type="lm" title="보고싶어 탭으로 이동">보고싶어</a></li>
		</ul>
	</div>

	<!-- 나의 무비타임라인 -->
	<div class="my-timeline myTimeline myMovieStory" style="display: block;">
		
			
			

			<button type="button" class="btn-year year-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 년도 선택</button>

			<div class="time-year swiper-container-initialized swiper-container-horizontal">
				<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
					
						<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
						<div class="cell swiper-slide swiper-slide-active" style="width: 86.2222px;">
							<button type="button" class="btn on" data-no="2021">2021</button>
						</div>
					
						<!-- <div class="cell swiper-slide"><button type="button" class="btn">2007</button></div> -->
						<div class="cell swiper-slide swiper-slide-next" style="width: 86.2222px;">
							<button type="button" class="btn" data-no="2022">2022</button>
						</div>
					
				</div>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

			<button type="button" class="btn-year year-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 년도 선택</button>
		
	</div>

	<!-- my-timeline-list -->
	<div class="my-timeline-list myTimeline myMovieStory" style="display: block;">
		<ol>
		<!-- for문으로 날짜별 받아오기 -->
			<li>    
				<div class="date"><p>2021.07.29</p></div>    
				<ul class="movie">
					<li>
					<a href="javaScript:void(0)" title="영화제목" class="img posterImg btn-modal-open2" w-data="850" h-data="auto" data-no="86609766" data-cd="ADMIS" data-mno="21042000">
						<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSExIVFRUXFRcVFRUVFxcVFRUVFRgXFxgVFRcYHSggGBolHRUVITEhJSkrLjAuFx8zODMsNygtLisBCgoKDg0OGhAQGi0lHyUtLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQ0AuwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAgMEBQYHAQj/xABOEAABAwIDAwgFBwkFBgcAAAABAAIRAwQSITEFBkEHEyJRYXGBkTJzobHBFDRScpKy0SMzQlNUYoLS8EOTosPhFiREY8LxCBclg6Oz4v/EABoBAAIDAQEAAAAAAAAAAAAAAAEDAAIEBQb/xAA8EQACAQIDBQQHBgQHAAAAAAAAAQIDESExcQQFElGxMkFhwRMzNIGRofAjJDVy0eEGFSLxJUJSYpKisv/aAAwDAQACEQMRAD8A2ix9FOU12f6KdK0s2Vh2UBZtyybcqUaDbei/C6oHOe6YIpiBhB4SSfsnrWkrKuWCx53pAgFmEcMw70czoAW1PNGmv6itVtRdjD+YgZkdgAJPwSBy4efHyUlUZmeMGJ6PnkII7k2fSWh4CoyGJXITxzBGcz70hzJOgJVGNTEWuggjUEHyTuo4wXNJAnOZyJ0AhNnMIOYI71M2IbVaQThIEHPUHv7kibsOhjgJUQ6qwtdmcLi1x66YxCfAubPaOpIt2Y4EYx0dTHEdSk7C3DX4HYjia5oI4EtIkoUJFem12mIa9mfwSlJ3wHTirJsc70XHNUhQaIyDXkaucZc/+GTHiqipze+pNYAcGz4uJ/BQkLUjJHxOLiBXFCwFxGhBQJxdBQQRAGS1tdPpuFSm9zHNMtc0lrmkcQRokAutOY70b2JY3Dk55WucLbbaDgHGG07nJrXHg2sNGn94ZHjHHY5XjfaY6Z7hkRGXirPsvlN2nQpMo06zCxgwtNRoc/DwBcdY07gFRwviiXPTFhonSaWGidqk+0wQ7KAq7vjsgV6WhnQ4ci5upaezJWJEdw7/AIFBOzuSSurGaO3Isq1GKTCx2HokknMZQ7rE5HIRkcuOV7RsQ08zUa5j2ktmJBDSRDh1g8R3r0HtSz5t3OMADXHpN4Yjq4/WEg/9opu9e7ra7w8NMVMnjRzKreiSO8Dx6PYnxlgJdPHDMxd9q4GNfMg+xSlpZsYBnJOsjTwT7b+zalN4pCoXE4mZjpDCYIJGqjxTcHCmTJBhx6pVJq6GU5WYrd2Ifk4eSbm2a0Q0KcvmwB2j8FGkLLjY22Q2o3TmTCi7q86YfOYOfjI+KfXh4BRF0OCMFiUnLuDbddNY9wTAp1fODnggfoNnvj/UJq5a45GYKgV0IBvEqFjhXF1CFCAhcXQg5vFQlwLrURqOFCDi+BD4JnIZ9iQhONoHp6zkOEexIq0XgBnsax0TtNLL4J2kSzJHJARXajv+BRkjUqtBAJEzpx46BVLMNUphwIIkHUKPfsprgQ6YMZjI5RBMcRA+yE/FdsxMHqOR8ilUU2gNJmO747uPp1n1S14aHAtqw5wOLSXNkgiOPHvVXZsgtqY3PDsWZOsiZnqXod7QRBEg8Doqnv3sEVaXO02jHTbBaBqwdQHV7pTPSXwFqnwu5ll8GkSCPBQtVilto2xqvaaVLosaJeTEuaBIb9I8SBwTLaTnkZATlM5RMDj3jJVVFjXXiRNy1Q12CrVb2ZcOlGmaR2Vu268umWzJGN3SeBOBgzc7yB8YQUbOwZTwuVdoDoHHm/u/9imTgtH5Sm2NpXZbWduxvMfn6mbqlR7hBpl5MmGkz2uGmFUfaNDA7o5hwlp7D/pCeleNxF7St9eI0wwiOEpZ9PDkUVFq2AYvvCBoC4UbAgWIBCQjCEF0AdahBEiCjgZhKml/XFJQQYQtYsncX2iwNfADYj9HTim6cX5cXnEM/wCs0igsgnsiz+CdJrZ/BOkmWZI5AUJd2j3Ym4zTkuONocS7ETq4HIBpDYPVIOQUpc0A9sGesQSM47D2qJZaVBhOFwI/e48CRzufFAsgltZ1hAdcOqtjNgYCHGONQ6Z8ZU3QaQ1ocZIABPWYzKhm2VWI6XZBI4aH8tJUhs21wNk4sREGXE6Exq53vQQZD5BBBEqIvtmEYSxpGsEAieuFGXe7FpUBBoMBP6TRhcDBEyO8qZQRTayA0mULa/J8zD/uziHR6LyIPcYyKbbJ2O7ZNpc3VTC6uR0eoTAaCeOZnKVonFYxytb2Cs75LTnBTccbpye8ZZdgzHf4J1Pim7fERVagr/AynalUuJLiXOcS5xOpJzJPaSShs28YIp1R0ZJY76M8D1t49nipTbexBQpU6lRxx1AHYBAwtOgM6nyhVh8cPamekx4kRUrQ4ZEpcWpl5PDMHgR1hMCClbO/LRhd0mdXEDsTm9FOQWHoxI8c4VnaWKKpuLsxjmikIxqBDn+xLdhuIkWoQlOfPUuc+VMC2JxpIShbihJ88ezyXRUkqXQLMV2nlU4aA6zrmmuJPdo0IdEQQPNMFW1i2Z6Lst9qzCMVNrhx6RGXkpM8oQ/Znf3g/lWaurmdUbnslVxvmKTtkaMOUVv7Of7wfyppfcoFQgClRa0yCS52KQDJEACJ0lUwtYAJcdelDmnL90DPz/7kpBmP0oENImc5GefeiorMnE+ZexyjH9nH95/+UV3KQf2cfbP8qpTGM/Ka5E4c8oh0T16Dy8+BlMkCdWnQmSeGZHWD7FOGPInE+ZcDyiVeFCn4ucUb/wAxKsfmafm5Ua5IDiG6Tl3JPGjZciXlzL+3lFf+oZ9o/giP5Q6vCjTHeXH4hUMVFx1TJThXIF5cy5bQ38rc298NZDC0YZjE7IETxH9arM9g23yq7Yx2bBNSpx6DOkR45DxSu8FR2BkSQejlrizgR4nT4CX+4dmWsrVHAtLyKEEEOAjE4R401eclTpNopSg6tZcQw3rtLm8quqBhFNuZe7JgaOri49gVSuWU2jCwOf8AvkH/AAgf6rStvbQihgnIDCBwzy+Ko7ScBpDideIWWnJtG+pFXIAiNckrQeNHae5GvrYU3loMxGfadQm6en3iWr4D8WZOnVkUf5BGvwTFtU6I+Mpl1yEuMuYrUoxq1IOLV3nEDV7EG7lkmFMLkI3OFEKBYVuq2J0gR2IvOdYCNdnpZ/RZr1YWwkkEw2NMdTKVo0pnFp3gGTxzIyH9QrGzYpI/0XRu3XOYpPP8JVLirkI21ZhMuzkZ68Dl3SNRMdqMyxbnEnoyNZ1dnAOuTclPM3buP1L/ALJRjuzX/VP8iomQrlrbMIOKZh0eAkRnnp8E5ds6niAOWQ4mCZg5+B7FLO3Yuf1R8l0brXX6ko4kIJ1kwNMGTEjzAiPP2Jr8mKtP+yl1+qPsQ/2Tu/1R8x+KNgXKt8lK6LUq1s3RuuNP2j8UjfbuV6LC99Mho1ORjvgqEuVets9rmlrmtcDGomADOXecP2VK7PsqjbYvcWn/AHipmJyBbTwg5dX9ZIop9qfWN0OarUfpBrgeohzQfYT5KlSN4sZRnaaKpt2DiHDEq9XOGOvXuVm2syelGp9yqu0jDkumjRVkQt8c5TZOLt0pun2ErICO16IjqEY5ZRkSEm63KJSruYZBhOflhIzAPhBV7xeZR8SeAiKC5UZwhCpXJ0yRObdElTQKv3h7wy6f3WfcaEilbr0vBv3QkVQueuLJrSRlxCr+194K7HGg65tW1YzFKlcVHsmD+jiE9/krBYajvVY2TRqWN7cPq0KtRlQuLK1NhqZFxfwzE8e1oyjNZtt4rxSyeb5fB/2NW6owcZtpNpJpYY4+KeWbVsQljvHXpkMqXVIlxydXoXDI0EYmtaAO06dae74bw3VnTtyDSxvx4iGksOHDBbJkZOXd6drVbikKNtQuucLwcZpvphoBn0jGunVEqv777CfSpW3Sq1qkO5yXOqtDgGTgB9EST5Bc+rOcYSUG3a2Pvy77nYoUqVStTdSKTbd42jjaLxwSste9XyLFvNty8pGh8nZjFSkHPik6oA7Kc26a6dikvk20/wBotv7p/wCKqHKHTeTaYWvMUWzhDjGmsdxUnzmyv2at9iv+Kv6T7SabytnK3d3YMWqCVCnKMcXe9oKTz77yXu/YnTbbS/aLb+6f/MpXZgqim0VnMc/PE5gIaczhgHTox4yqcamyf2at9iv+KtewqlN1CmaIc2nBDA8FrgGEtzDs+HHhC0UpXln/ANr+SMW1wkoJ8LWPfBR+abJRN722bVY6m70XDCY1gpwgnmAgxunafqf8T/xVO3z2zsywD6LfnBbnTYHvcGnMBzj0WnIGCQVphXm3lLof+p3R66g+40JtNcTxYqdo2aQxut7ZiKAgfSfJ8gMlB7Q2m6qSS1jfqg/EpCvASBORy4R7E3hSyBdvMSiUnCO1B4zKDLoKuroCBCAThCNScWmdezguBGCgBd+GRh0PsPUm9SUZpjRCD5/FG5VKwLr0v4W8ZzwiUil7nXwH3Qm8qpc9dWOo71WKOwL+jeVLimKbml9Qta+ocOF5OcDQqwU8eE82W446OOS2f3ozhU265RLum9zHUaIc1xa4Q/VpIP6fWFj2+VOMoud1ya5m7dEK0ozVJRd1Zp8vkWv5Vtb9Ra/bd/Mh8q2r+otftu/mXNzdsXN4w1qjaTaUlrQ0Pxlww55uIDdVFb0713dlVwFlBzHS6m6Kk4ZIh3S9IZTwSHOKh6Rylb68DRGlN1nRVOHEtff32uidu620QW83St3Dm2Fxe5wPOR0gIOk6JOhcbTLmh1K1aJGJ2N+Q4wAcyoPdve+8vKvNNp0GwMTnEPyaCJjpa5gLQkylJVVxRlK3w8hVeEtnfBOEL+9vqVb5VtX9Ra/bf/MpfY77gsJuGU2PxGBTJIwwIzJ11Tm7x4Hc2Wh8dHGCWz2gZws1vOUK7pPdTfRohzHFrsnxLTBjp6IVKkaOM5PqGlRntaapwircsH83kamgqpubti5u2uq1G0m05LWhocHl4iTmSA3OP6zY747zXVlUaMNF1N+I0zDsXRiQ7PM9Iadau68VD0jvbQUtjqOs6Ktxa/K+Vy8rznyiOm/uT/zSPKB8FpG7m+F3eVxRbToDIuc4h+TQRMdLM5gLL99a4feXLhoaryO6SFo2SrGpeUcjPtuzToNRna+eDuVKuOrNNn9Unu4DLv7k+OZGKcPGNY7JUvT2HRc0EOqQQCPR49fR7VbaNphQtx3x8C2x7FU2m/o2rrubsyqAI1wMz5qS2va06TgxheXiCZiADwyGuie7N2O2qzG8uEmBEaADrHXKrLaqcaXpXdLTH4fWAyOw1ZV3QjbiSd8cMLXx8LkcNkuFZ1Go+lSLJLnVXYWRkRhIBLpDgQACSDKbXraYMUnueIzc5oZLpObGyTh01g9g0Vo3lpU3tZUe1+JlKnQBbHS5puFrnzxwgAnsVQcrUa0aseKN7Cto2aezy4Z2vyTvbUIjApWzo46jGfScB4Tn7FZTu1R+lU8x+CVW2unRaU748kP2bYK20xcqdrJ2x/syssGYSjmw5o/eHvVjG7tHrf5j8F1+71EmZf5j8Er+Z7PzfwHfyTar/wCX4/sVi7HSJ7B7gmsqV3gshSe1rZwls555gkH4KKWmFSM4qUcmYatGVGbpyzR63sRmsh3k+d3Hrav33LYbULHt5Pndx62r98rBvjsx1fQ6f8Odqei6mn8mHzIetf8ABV3ld/PUPVn7ysPJh8xHrH/BV7lcP5ah6s/eSqy+5rRD9n/FJaz6Mb8lHzqp6k/eprWFlHJP86q+pP36a1dN2D1K1Zl3v7U9F0AsH3t+e3Hrn/eK3hYNvZ89uPXP+8lby7EdfJmncfrJ6eZpXJf8xHrH+4KH5YP+F76v+Wpjkv8AmI9a/wCCh+WDS176v+WpV9i90eqJQ/FHrL/yyN5J/nVT1J+/TWbbWYXOe8SW43QTxbJzWm8l1EtuXTlioOcPql7IPjB/orPt72m3rvtyQeb6HR0MD/X3rZuvCjZ8zFvvHabrkiqVVatn/maf1G+5VKtKt1h+ap/Ub7ilb39XHXyNO4PWT0XUre3KZdclo1IpgeLGK00mBrQ0aAAeSjqNrN1UqHRoY0fWNMT5D3qTXN2utxU6dNZKMfi0uiyOvsOzcFStVecpytopPq764EzsbYny2heUgJeKTalP67HtIA7xLfFZTWbBW2cmF8Kd4KZ/tab2jtcyKnua7yVD5VthfI7+o1oinU/LU+rC8mWjucHCOqF1t2v7BLV/M4G+Pa5PwXQquyq7adZr3TAk5dcED3p2/earnDGAdUOPtlQ5RXrRPZ6dSfFNX7sfrxM1PbK1Gm405Wxb7uSXkaKDkD2KC2ptqpTqOptDIERIM6A9anW8PBVTbzZrkTElufV0QuHu6nCpUamrqzfzSPSb3rVKNGLpuzckvk/0Edr7SFdrCRD2lwdGkGII8tFFJWrSiMwZnQg5cDkcu4wUSF3KcIwjwxy/e55itVnVnxzzw+SS8j1zbBY7vH87uPW1PvlbDarHd4vnVf1tT75WHe/Zjr5HS/hztz0XUZMtnuza157QCfbC5UoluoLe8Ee9a9yYfMh61/wVd5XPz1D1Z+8udPZFGiqt+XdzOzT3i57U9n4cFfG/K/dbwG/JP86q+pP32LWFk/JR86qepP3qa1hdHYPULVnE3x7U9EBYVvhUabyvhZh/KukySSZzPUO5bqsG3s+e3Hrn/eKVvL1a18h+419pPTzNK5L/AJiPWv8AgojleqENtmg5HnSRwJHNwfafNTHJh8xHrHfBQvLDpa99X/LRq+x+5dUSjZ70esujIXcG+5qpcVnGebtajpOfoFsD2ALMtoVjUc57zLnEucTxJzJ81b7Kvgt7w9dDB9utSafYSqXcuWzda+738WY9+e1W/wBqGVUQMlatm/mqf1G+5VKrKtuzfzVP6jfckb49XDXyNW4PWT0XUcBv4n3fBMNm3HOPrOGk0w36oDsvOT4pPeK85ukQD0n9Ed36R8vvBI7tHoO7qf8A1/iudTo22WdV80l8Vf8AT4nWq7R98p0Y8pN/8Xb5Y+9E/su/+T3tlVOguQ091QGmfY8q+8uuwuesRcsHTtnYjAkmi/ovHgcLu5pWRb1uIp0yNQ+R3gEhel7Ooy7tWOcA6nXotJHBzarASPIrp7A7UIvxfU4e+Panouh5KbdtY0BtJpfHSfUipBnLm2EYWiPpBx7QmDtFLby7FdZ3Na1fmaTy0H6TdWO8Wlp8VEvXRWZynkzRm6DwVV22Juso1brpoNVaA7IeCqe2XD5Ucp9HI6aDVcDdi+0l+V9Ueo3216KH510kNdoEnCXA5gwXODnEdcgAR1ZdaZSlbkRAwFh1IdqZ6pAMZcZ45pFduOWH19anm53csfrp0PXlssb3i+dV/W1PvlbLQWMbeeHXNdwMg1ahBGhBeYMrn737MdfI6n8O9uei6mpcmHzEesf8FXeV389Q9WfvKwcl7wbKJEiq6RxEgET4KucrVQGtRaCJFPMcRLsp8ilVfY1ouo/Z/wAUlrLoxLkn+c1PUn71Nawsk5KagF24EgE0XAdpD2mB4LW03YPUrVmbfHtT0QFg29nz249c/wC8VvKw/fTZlajdVH1G5VHuc1w0cHGYB6xMEdnUl7xT9GtfIfuOSVWSvi1gaDyX/MR6x/wUPywf8L31v8tVTd3eqvaBzWYXMcZLXgkA9bYIg6eSa7c25Vu6gfVIyENa0Q1o1IHxKzT2qD2b0ffh8nc20thqx2513bhu3njimsveRtepFCqPpBo8ntPwVVuCrpc7Lq/JnVy0imXBgccsbiCeiOIy10z74p9yutuxNbOr82cXfTT2x2fcvjyGFVWzZ35qn9RvuVRrlW/Z8ijTn6Dfcs+9+xHXyNe4PWT0XUrG9NQmthOjWiP4m4j7/YpTdj0H/wDt+5yh95fnDu5n3GqT3be4YgKZIOHpHJogadp7AhVj9wVuUf1JQl/ikm/9U1z5pCm9n5pn1/8ApK3Lkd2jz2yqAnOkXUT2YD0Z/hcw+IWHb1tPNsPU/PxBWk/+Hm8/JXdCfRqU6o/jaWH/AOoJmwY7MtX1Eb49qeiGf/iA3fg0b5o1/IVY683U3Hq/Sb9lYtVC9f70bGbeWta2d/aMIB+i8Zsd4OAPgvJm0rJ9N7qb2kPa4sc3iHAwR5rdTxOVJ2uXlvDwVR227/eyZj0czw6IVuzy8JVR240/KTkcywiDhJ6I0J071wd2esl+V9Uer336mP510kM9oxLQHNIg5Nzg5TJxOz8eGXWWaXu6YbEDKNQ8PB8QBCQXbjkvr9TzNTtM9cut21Gmm8S1wgjMSPBJt3PsiPm7fN34rENh8rN3Sqg1C2rT6RcHwHEZloaWAYXaCYIPV1aVsflQo3L2UaNNznuicQwtZP6LjnJ7QI7s1Wqoyd2vkChUqUk1GTWjsXDZuwLe3cX0aQY4jCSC4yJnQnsSFxurZ1HF76Ac5xLiSXZk5k6qXoVcQnTsOo7ClktQg1aytoN9PVUnLjd8r3ZAU90rJpBbQAIMghz5BHHVT6CCMYRjkrFZ1Z1O3JvVtgTW8s6dVhZUY17Tq1wBHfnx7U6QVhadsUU265OrN5kc5T7GuBb/AImk+1L7N3Ds6RxFrqp/5pDh9kAA+IKtaCStnpJ3UV8DU9u2lrhdSVtTOeVuv+Rp2zQGtnnHO4NazotA6pJPksM2jUaMmSf3jl7Fs/LPbsHM1DVLXODmYAJxBpnF2RiI8QscumgyAc+6Fvp9kwSzIeXSCNQZHeMwnbttV/1v+Bn4JCrIySAYOtUnShN/1RT1SfUdTrVKa/ok1o2uh24ruqOLnmSYk5DTLgnz9qVmYWtfADWwMLTw7QmVGnJAVz3z3IrWrKVyBjoVKVI4x/ZucxvQeOEk5HQ9+SDpQaUWl4YL5EVepGTlGTTebTavrjiVkbWruBBqSCIPQb+C0vkDLm3dZoBLXUOkRoC17cMnxes42Vs59aqykxpc97g1rRxJ4L05uZuzT2fbik3N56VV/wBN8cP3RoB+JUcIU4tRilfkrAlVqVGuOTdubb6ssKwvlq2E63uW31Loitk8iIFVoA0P0mie9rjxW6KC302EL6zq25jE5s0yf0arc2HunI9hKWrZPJ5ku07xdmsjyy/bVcf2h+wz8E4q213Xotqk42hzoAgOGHLEIAymePBRt1Sc17mOBa5ri1zTqHNJBB7QQQtF2PaRa0O2m0+YB+KpUpwp2cYpPRGiNatUTjKcmvzP9TNrgvJ6ZcT+8SfekoV329YNdicMjlHUfwVX+RO6j5K0KiaKTptMGyNlurvgZAanOO7vWpbvc3YjFSpUsRbDnODi4jI5yetrTA6govZPMMt6fNEYjJeCRkf9RxR/lrSfSB46pNSpJuw2nCKV3iXajvpXa17xTpiGguIDphogZYomMp7k/wBjb/jmmV7ljmsfUNJpbD4I0c4AAjQ5STpqqLRvSA5v0mkQe1QbnAllKDBdJzyBAcATGuRyRhN2xBUpq6sbdV36tB6BfU+q2B44iEk7fmkHMxU3NY5+DGSMjlnHVmOKzWk9zWtBAaOHWmlV1WWADE1rsQmIDpmT1jIZIKbuB0klkegkJWdUOUOoKUuoc48FrThJEzizENPFvtTeryn1QY+RkHqLnT9xPUW8jK5WdmabK6stPKbcHS0H+M/AIo5Q713o2w+w8/FX9FLl1KurFfSIjlV2g2pdOa5wApNbTGpP0nEAaSSAfqhZlc82TlUE/vAhWDfK4qPrvqVGYXVIe5pBEEgDIHhkqncEEJyVlYpm7hLuiQJmRPXKZIz/AGLgQY1DizPSB7V6t3WqNuNn0MQDmuohjgRIcGjAQRx0XlO2aS4BoLiSA0DMucTAAHEkmIXo/d1m07W1o0G2lI4GAEuqwZOZyHaVSeSBkx5uzuFbWNzVuKckuypNdmKLT6QadTPWdBl1zb1UTf7W/Y7f++Rra82qZx21u3q/KEhLs3i2TiS7vky2IKnsudsHWjaj+NyVY/ax1bajxcVOEnH4P4GbcqW7FvR2ky5rEi3uQTUa0O/PMwh0OGTcTSDrqCYKIH9BjYADKbGYRoMLQNeuRx6025SN9K9YusqgYW03/lGtEY3sP05JYAZHRM8SROEI31QF0MJhzGubh1OIYsh1CQM+pLq9lGihmxtXpOeHGJ7s+OqjOYTq5vGQWvMOB4kiYUc7acH9A9vWk4mllZpXDm6OInWDkUoLp30j36QmyNK2swWL7se95ym0nXMO7wpa3w0+nhB7Ss2sdo1KR6LsuIOYVgstpmq2SCI8vBZZ07aGunUTw7ywXl0XmZRKNw4ZTkeCiBcFLtvOtVSLORJOucgMUYcWWkh+HXrgt/xFS+zd8HUGgOZTqtbl029KBwD/AMVSbu6kppWuy84W5k5ADMknIADiexaKfF3My1OHJnp/ZPMVqTK1NjcL2yMh4jzlPm0GDRrR4BR26uzTbWdCgdWU2h31jm72kp1tPaVK3pmrWeGMGpJjPqHWUW2+8Wkkef8AlW2kau0awILebIpAHLJg18SSe4hUev1q5cpG06d7dfKKTMNNzGsxZdNzXOGInSSMI8NTqqTUBaYP9di0JYWF5sbvCKUtUSSDGIn9wdq07XaFtXqgGm2pDif0Q8FmP+HFi8CvWIK8XEL09yS7b+VbMoFzpqUgaL85P5M4WuPHNoaZ65SprvCXRBdQSwnEEnXrNY0vcQGtBJJ0AGpWcbw8pj6VKpUpWxawZMqVTJcSYB5oEGO8j4K0YuWRVySzKbywbsm2ri4aS5lUucSQJDnOJLcgMgXd/S4woxty4W9vWpmC1vNk5H0CWwQe5Wmrt2ptKxqUr3mw5wFS3exsEOE9F7cxJEwRxjqlUTY1Zxp1rUmHtcXNHaMngeQPiq1ItLEbQkr6hbqqy7cQ4NZVbIjRtWM5HUezyTFziMuZZl2H8E3vqcOfGZhpbmJygGBxOS7T2hVAGKqJ4yGn4KcPIs6mOJCrrWkkACSTAAzJJ0AXE52dcc3Ua/qnvEgiR2iU1i0rsdW+zNcZAI1bIJHfClLSm1gygfFMfkoIlkAzMgjPuPUepObTZ+c1n/k25iXQ2O3yAj+jmk75s0qFskK1akJq+7SF25mIim4lvXnHgmpVowFTkHr3Uq7cjex23O0WueJbQaa8cMbXNDB5uxfwqguKl9lbarWTXmjULH1mYMtRTmZPVJGS0pYCGehd99/rfZwLCecuCJbRadAdHVD+iPafasB3m3mr39YVK7i7OGsboxpOjG9agnVXPcSSXOcSXOJzPWSSlaQwwdXE5Hg3LIjrJ6+xGMUgPHMXvLougYei0BrWzMBogScpOucDUplWqOJJdqU6e7Rw1Ikj3x26pCrnmrsrESmVwopC6qFzhCk9lX3NYXtrVaNRr3YKlI+iHBuTgCHRLeE9xUYuOOXj+P4qENIs+VDalqJNWnd0pAx1Ghw0GWOnhLT2PEq47G5cbZ8NubepRPFzCKrB2n0XeQKwm3uHMMscWnQxxHURoR2FKB7HnpRTP0mghk9bmgHD/CI7FW0WRXNw3732pXVLmrKrzpqMwDBLebL5Dqj5gggHIDtVSdsdrqZoioTkAQXEyQQZIOmaoFzYmnBccjo5sOY76rgc0ehtmtTADKjxHEnF4AOkAJifCrCnFyxuaDbXBpnAQWwDLdWGBlhn0T2Kv72nBUpXVJ0OyB8AcPsD2EfuDrUVX3orVPSDTlBMEHvMJ5b1vlFuWGJM4c9Kjcx55D+IoTakiQTiyMvrllUAgYXEiQfRDuMH6OfvTB1nVbkWOy7kVWSzptexrnEh0ZjLUZT4xPiqQishtSbzKwgguKFg7KhGhISjas6knvSK6w5oNBTHWSIIRS5PLCxxDG8xTHgXd3UO1BIEmkhO3pta01Xjogw1v03dX1RxKZ1ahcS5xknVK311zjpiGgQ1oyAaOxINCvoC3eOqPRE68fLTw4+SLzpcCCZIzHvXHHJEpnNXZRcxQ1Mp7Z89R8UV7+PmkwYyQQuW4QxKIVyUEAglBxXJXCgwhguFFC6gyDu0vcLTTcMdN2rNIP0mHg5KjZ2ITTeH+Iafsnj4qPRqVSO5RPmVa70Oq1SqzLDgH1G5/wAUZo+zazmteQOLSCZiZ96KLuP7R3dH45JGpeEiOHgJ8ArX8StsLWHLq/SxFoEkkkaku196L8qIyxaJk+qT4IsocVsicF8zdbncDZ7xHMYe2m57T74KZDkoszpVuR1dOkY/+KT5q+udJIS1u3impIzcclkzLd4uRWvTZztnW58RJpVAGVP4HDou7jHisuuKDqbnMqNLHtMOa4FrmkcCDovY9n6AWN8r+z6fyqnVwDG5jpcRJ/JuDR7H+xIWLaNTnZIyqx2fMPqZN4N4u7+oI22Lr9AePYOA9ikT0syq5XqlziT1pjwRWL4nd9wRHaiIyCGM68rgXCihRslgz1xAoIMIEJRUFCAXF1cKBALqCCBALi6uKEAgggoQCCCChD//2Q==" onerror="noImg(this)" alt="[영화제목]"> <!-- 영화 포스터 -->
					</a>    
					<div class="cont">        
						<p class="label">본영화</p> <!-- 보고싶어, 본영화... -->
						<p class="tit"><a href="javaScript:void(0)" title="[영화제목] 상세보기">영화 제목</a></p>
						<div class="theater"><p>상봉</p><p>8층 5관</p><p>2021.07.29(목) 08:30 (1회차)</p></div>
					</div>
					</li>    
				</ul>
			</li>
		</ol>
	</div>
	<!--// my-timeline-list -->

	<div class="btn-more v1 pt00 myTimeline myMovieStory" style="display: none;">
		<button type="button" class="btn" id="addList">더보기 <i class="iconset ico-btn-more-arr"></i></button>
	</div>
	<!--// 나의 무비타임라인 -->

	<!-- 나의 무비포스트 -->
	<div class="my-movie-post myMoviePost myMovieStory" style="display: block;">
		<div class="tab-sorting mb20">
			<button type="button" class="on" data-type="my">나의 포스트</button>
			<button type="button" data-type="mySubscribe">구독중인 포스트</button>
		</div>

		<!-- movie-list-util -->
		<div class="movie-list-util">
			<p class="result-count  line32">
				<strong>총 <b class="font-gblue" id="myMoviePostCnt">0</b> 건</strong>
			</p>

			<div class="float-r">
				<div class="movie-sorting">
					<span><button type="button" class="btn on" data-type="date">최신순</button></span>
					<span><button type="button" class="btn" data-type="like">공감순</button></span>
				</div>

				<div class="movie-search">
					<input type="text" title="제목, 장르, 감독, 주연배우를 입력하세요" placeholder="제목, 장르, 감독, 주연배우" class="input-text" name="ibxMovieNmSearch">
					<button type="button" class="btn-search-input">검색</button>
				</div>
			</div>
		</div>
		<!--// movie-list-util -->

		<div class="movie-post-list" id="moviePostList"><div class="no-moviepost">등록된 무비포스트가 없습니다.</div></div>

		<div class="more-movie-list" style="display: none;">
			<button type="button" class="button btn-more-movie-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
		</div>
	</div>
	<!--// 나의 무비포스트 -->

	<div class="board-list-util myOne myMovieStory" style="display: none;">
		<p class="result-count">
			<strong>총 <b class="font-gblue" id="myOneCnt">0</b> 건</strong>
		</p>
	</div>

	<!-- 나의 한줄평 -->
	<div class="my-appraisal myOne myMovieStory" style="display: none;">
		<ul id="myAppraisal"></ul>
	</div>

	<nav class="pagination myOne myMovieStory" style="display: none;"></nav>
	<!--// 나의 한줄평 -->

	<!-- 나의 본영화 -->
	<div class="mypage-infomation mt20 mySeenMovie myMovieStory" style="display: none;">
		<ul class="dot-list mb20">
			<!-- <li>본 영화 리스트는 실제 관람한 이력으로 보여지며, 상영일 익일에 자동 노출됩니다.</li> 20190819 -->
			<li>극장에서 발권하신 티켓 바코드 하단의 거래번호를 통해 본 영화 등록을 하실 수 있습니다.</li>
			<!-- <li>유료 관람 영화 편수는 ‘나의 메가박스’에서 확인 하실 수 있습니다.</li> -->
			<li>본영화는 관람한 인원수에 한해 등록이 가능합니다.</li>
		</ul>

		<div class="btn-group right mySeenMovie myMovieStory" style="display: none;">
			<a href="#saw_movie_regi" class="button btn-modal-open" w-data="600" h-data="470" title="본 영화 등록">본 영화 등록</a>
		</div>
	</div>

	<div class="board-list-util mySeenMovie myMovieStory" style="display: none;">
		<p class="result-count">
			<strong>총 <b class="font-gblue" id="mySeenMovieCnt">0</b> 건</strong>
		</p>
	</div>

	<!-- my-saw-movie -->
	<div class="my-saw-movie mt10 mySeenMovie myMovieStory" style="display: none;">
		<ul id="mySawMovie"></ul>
	</div>
	<!--// my-saw-movie -->

	<nav class="pagination mySeenMovie myMovieStory" style="display: none;"></nav>
	<!--// 나의 본영화 -->

	<!--// 나의 보고싶어 -->
	<!-- my-movie-list -->
	<div class="my-movie-list myLikeMovie myMovieStory" style="display: none;">
		<div class="board-list-util">
			<p class="result-count">
				<strong>총 <b class="font-gblue" id="totalCnt">0</b>건</strong>
			</p>
		</div>

		<div class="movie-list myLikeMovie myMovieStory" style="display: none;">
			<ol class="list" id="movieList"></ol>
		</div>

		<div class="more-movie-list pt30 myLikeMovie myMovieStory" style="display: none;">
			<button type="button" class="button btn-more-like-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
		</div>

	</div>
	<!--// my-movie-list -->

	<!-- 보고싶어 영화 없을 때 -->
	<div class="no-my-movie-list myLikeMovie myMovieStory" id="noDataDiv" style="display: none;">
		<i class="iconset ico-movie-see"></i>
		<p>보고싶은 영화를 담아주세요.</p>
	</div>
	<!--// 나의 보고싶어 -->
</div>
<!--// contents -->

<!--################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
	<section id="layer_post_detail" class="modal-layer2"><a href="" class="focus">레이어로 포커스 이동 됨</a>
				<div class="wrap">
					<header class="layer-header">
						<h3 class="tit">무비포스트 상세</h3>
					</header>

					<div class="layer-con">

						<div class="post-detail">
							<div class="tit-area mb30">
								<p class="tit">
								</p>

								<div class="direct-link">
									<a id="bokdLinkBtn" data-no="" href="" style="display: none;" title="">예매하기</a>
								</div>
							</div>

							
							<div class="user-post-box mb40">
								<div class="user-post-case">
									<!-- post-top-area -->
									<div class="post-top-area">
										
										<div class="user-info">
											<p class="photo">
												<img src="../../../static/pc/images/movie/img-P-MO-PO0101-user-img01.png" alt="userid80**님의 무비포스트">
											</p>

											<p class="user-id">
												<a href="" title="ID"></a>
											</p>

											<p class="user-write-time"></p>
										</div>
										

										<div class="btn-util">
											<!-- 구독하기 전 -->
											<button type="button" class="button x-small gray-line" id="subscribe"></button>
										</div>

										<!-- post-funtion -->
										<div class="post-funtion">
											<div class="wrapper">
												<button type="button" class="btn-alert mp">옵션보기</button>
												<!--
												유저 일때
												<div class="balloon-space user">

												작성자 일때
												<div class="balloon-space writer">
												-->
												<div class="balloon-space mpost">
													<div class="balloon-cont">

													</div>
												</div>
												<!--// 말풍선 -->
											</div>
										</div>
										<!--// post-funtion -->
									</div>
									<!--// post-top-area -->

									<div class="post-cont-area">
										<!-- post 내용  -->
										<div class="section-area">
										</div>
										<!--// post 내용 -->
									</div>

									<!-- comment count -->
									<div class="count">
										<button type="button" class="btn" arti-no="">
											<i title="좋아요 설정 안함" class="iconset ico-like"></i>
										</button>

									<!-- 코멘트 등록 영역으로 이동 -->

									</div>
									<!--// comment count -->



								</div>
							</div>
							

<!-- 							share
							<div class="btn-post-share">
								<button type="button" title="카카오톡 공유하기" class="btn kakao">카카오톡</button>
								<button type="button" title="페이스북 공유하기" class="btn face">페이스북</button>
								<button type="button" title="밴드 공유하기" class="btn band">밴드</button>
								<button type="button" title="트위터 공유하기" class="btn twitter">트위터</button>
								<button type="button" title="링크 공유하기" class="btn link">링크공유</button>
							</div>
							// share

						comment input
				<div class="comment-write mb40" id="rly">
					<div class="comment-util mb20">
						<p><span id="rlyCnt">댓글 </span></p>
						<input type="hidden" id="rlyCntTop" value="">
						<input type="hidden" id="hdnMoviePostNo" value="">
					</div>

					<div class="comment" id="input-comment">
						<textarea class="input-textarea" cols="5" rows="5" id="postRlyCn" title="댓글 입력" name="postRlyCn" maxlength="100"></textarea>

						<div class="comment-function">
							<p class="reset"><span class="text-count">0</span> / 100</p>
							<div class="btn">
								<button type="button" id="btnPostRly">등록</button>
							</div>
						</div>
					</div>
				</div>
				// comment input

				comment list
				<div class="comment-list" id="commentList">

				</div>
				// comment list -->

				<div class="mb50"></div>

						</div>
					</div>
					<button type="button" class="btn-modal-close2">레이어 닫기</button>
				</div>
			</section>
			<!-- // ################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
<!-- //무비포스트 상세 레이어팝업 -->


            </div>
        </div>
<c:import url="../footer.jsp" charEncoding="utf-8" />