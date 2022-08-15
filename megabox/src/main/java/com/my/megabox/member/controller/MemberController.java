package com.my.megabox.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;
import com.my.megabox.member.service.MemberService;

@Controller 
public class MemberController {
	@Autowired private MemberService service;
	@Autowired private HttpSession session;
	@RequestMapping("Membermain")
	public String Membermain() {
		session.setAttribute("id", "admin");
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
	public String UserInfo(String id, Model model) {
		MemberDTO user = service.userInfo(id);
		model.addAttribute("user", user);
		return "member/UserInfo";
	}
	
	@RequestMapping("select_test")
	public String select_test() {
		return "member/select_test";
	}
	
	@RequestMapping("ChangePw")
	public String ChangePw(String id, String pw, String pwnew, String checkpwnew) {
		service.changePw(id, pw, pwnew, checkpwnew);
		return "member/ChangePw";
	}
}
