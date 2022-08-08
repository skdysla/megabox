package com.my.megabox.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("Membermain")
	public String Membermain() {
		return "member/Membermain";
	}
	
	@RequestMapping("BookingList")
	public String TicketHistory() {
		return "member/BookingList";
	}
	
	@RequestMapping("MovieStory")
	public String MovieStory() {
		return "member/MovieStory";
	}
	
	@RequestMapping("MyInquiry")
	public String MyInquiry() {
		return "member/MyInquiry";
	}
	
	@RequestMapping("OneOnOne")
	public String OneOnOne() {
		return "member/OneOnOne";
	}
	
	@RequestMapping("MyInfo")
	public String MyInfo() {
		return "member/MyInfo";
	}
	
	@RequestMapping("UserInfo")
	public String UserInfo() {
		return "member/UserInfo";
	}
}
