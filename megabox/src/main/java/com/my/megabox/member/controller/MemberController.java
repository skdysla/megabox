package com.my.megabox.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.megabox.member.dto.InquiryDTO;

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
	
	@GetMapping("OneOnOne_1")
	public String OneOnOne() {
		return "member/OneOnOne_1";
	}
	
	@PostMapping("OneOnOne")
	public String OneOnOne(InquiryDTO inquiry) {
		service.inquiryProc(inquiry);
		return "member/MyInquiry";
	}
	
	@RequestMapping("MyInfo")
	public String MyInfo() {
		return "member/MyInfo";
	}
	
	@RequestMapping("UserInfo")
	public String UserInfo() {
		return "member/UserInfo";
	}
	
	@RequestMapping("select_test")
	public String select_test() {
		return "member/select_test";
	}
}
