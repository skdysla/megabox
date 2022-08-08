<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="" style="padding-bottom: 0px;">
        
            
            <!-- Contents Start -->
			
            
            <!--/ Contents End -->
		 </div>

    <iframe title="CGV 빠른예매" id="ticket_iframe" src="http://ticket.cgv.co.kr/Reservation/Reservation.aspx?MOVIE_CD=&amp;MOVIE_CD_GROUP=&amp;PLAY_YMD=&amp;THEATER_CD=&amp;PLAY_NUM=&amp;PLAY_START_TM=&amp;AREA_CD=&amp;SCREEN_CD=&amp;THIRD_ITEM=" scrolling="no" frameborder="0" width="100%" height="984" style="width:100%; border:0 none;"></iframe>
    
    <script type="text/javascript">
       
        //default.master  변경후 padding 처리
        $("#contents").css("padding-bottom", "0px");

        //<![CDATA[
        var iframe = document.getElementById("ticket_iframe");

        function ticketIframeResize(height) {
            var iframe = document.getElementById("ticket_iframe");
            // resize
            iframe.height = height;
        }

        function addEvent(event, elem, func) {
            // W3C DOM
            if (elem.addEventListener) {
                elem.addEventListener(event, func, false);
            }
            // IE DOM
            else if (elem.attachEvent) {
                var r = elem.attachEvent("on" + event, func);
                return r;
            }
            // else
            else {
            }
        }

        function f_clientWidth() {
            return f_filterResults(
			window.innerWidth ? window.innerWidth : 0,
			document.documentElement ? document.documentElement.clientWidth : 0,
			document.body ? document.body.clientWidth : 0
		);
        }
        function f_clientHeight() {
            return f_filterResults(
			window.innerHeight ? window.innerHeight : 0,
			document.documentElement ? document.documentElement.clientHeight : 0,
			document.body ? document.body.clientHeight : 0
		);
        }
        function f_scrollLeft() {
            return f_filterResults(
			window.pageXOffset ? window.pageXOffset : 0,
			document.documentElement ? document.documentElement.scrollLeft : 0,
			document.body ? document.body.scrollLeft : 0
		);
        }
        function f_scrollTop() {
            return f_filterResults(
			window.pageYOffset ? window.pageYOffset : 0,
			document.documentElement ? document.documentElement.scrollTop : 0,
			document.body ? document.body.scrollTop : 0
		);
        }
        function f_filterResults(n_win, n_docel, n_body) {
            var n_result = n_win ? n_win : 0;
            if (n_docel && (!n_result || (n_result > n_docel)))
                n_result = n_docel;
            return n_body && (!n_result || (n_result > n_body)) ? n_body : n_result;
        }
        function scrollToTop(y, isAnimate) {
            if (y == undefined) y = 0;
            $("html, body").animate({ scrollTop: y + "px" });
        }

        function ticketInfoModifyMobile(mobile1, mobile2, mobile3) {
            try {
                $.ajax({
                    type: "post",
                    url: "/user/join/UpdateUserInfoRia.aspx?mobile1=" + mobile1 + "&mobile2=" + mobile2 + "&mobile3=" + mobile3,
                    dataType: "html",
                    contentType: "application/html; charset=utf-8",
                    success: function (_data) {
                        //alert(_data); // 00000
                    }
                });
            } catch (ex) {
            }
        }
        function ticketGuestLogin(name, ssn) {
            var keyObject = document.getElementById("loginform");
            if (keyObject) {
                document.loginform.method = "post";
                document.loginform.id.value = name;
                document.loginform.password.value = ssn;
                document.loginform.returnURL.value = "AA";
                document.loginform.action = "/user/guest/GuestMember.aspx";
                document.loginform.submit();
            }
            else {
                alert("진행중입니다. 화면이 완료된 후에 클릭해주세요.");
                document.location.reload();
            }
        }

       //]]>

        function goFamilySite() {
            var famulySiteURL = $(familysite).val();
            if (famulySiteURL != "") {
                var win = window.open(famulySiteURL, 'winFamilySite')
                win.focus();
            }
        }

    </script>

		<!-- /Contents Area -->
	</div>