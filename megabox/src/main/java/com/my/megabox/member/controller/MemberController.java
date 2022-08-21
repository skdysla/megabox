package com.my.megabox.member.controller;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.megabox.booking.dto.BookingDTO;
import com.my.megabox.booking.dto.Cancel_BookingDTO;
import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;
import com.my.megabox.member.service.MemberService;
import com.my.megabox.member.service.MessageService;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller 
public class MemberController {
	@Autowired private MemberService service;
	@Autowired private MessageService mservice;
	@Autowired private HttpSession session;
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("login")
	public String login(String id, String pw, Model model) {
		String msg = service.login(id, pw); 
		model.addAttribute("msg", msg);
		if(msg == "로그인 성공")
			return "member/Membermain";
		return "member/login";
	}
	
	@RequestMapping("Membermain")
	public String Membermain() {
		System.out.println(session.getAttribute("num"));
		System.out.println(session.getAttribute("name"));
		return "member/Membermain";
	}
	
	@RequestMapping("BookingList")
	public String TicketHistory(String num, Model model) {
		Integer unumSession = (Integer)session.getAttribute("num");
		if(unumSession == null) {
			return "member/login";
		}else {
		ArrayList<BookingDTO> ymList = service.YMList(unumSession);
		model.addAttribute("ymList", ymList);
		ArrayList<Cancel_BookingDTO> cList = service.cList(unumSession);
		model.addAttribute("cList", cList);
		return "member/BookingList";
		}
	}
	

	
	@GetMapping("cancelBooking")
	public @ResponseBody void cancelBooking(int b_num) {
		System.out.println("jsp에서 넘어오는 b_num : "+b_num);
		service.cancelBooking(b_num);
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

	// Test page
	@RequestMapping("select_test")
	public String select_test(String toNumber, HttpServletRequest request, Model model) {
		return "member/select_test";
	}
	
	// 문자인증 
	@GetMapping("messageRequest")
	public @ResponseBody String messageRequest(String phoneNumber) throws CoolsmsException{
		Random r = new Random();
		r.nextInt(1000000);
		int begin = 111111; int end = 999999;
		String randomNumber = String.format("%06d", r.nextInt(end - begin + 1) + begin);
		mservice.sendMessage(phoneNumber, randomNumber);
		return randomNumber;
	}
	
	// 문자인증 체크(맞는지 여부)
//	@PostMapping(value = "checkAuth", produces = "text/html; charset=UTF-8")
//	public String checkAuth(@RequestBody(required = false) String checkNumber, HttpServletRequest request) {
//		String msg = service.authConfirm(checkNumber);
//		if(msg == "인증성공") {
//			request.setAttribute("msg", "인증 완료");
//			return "member/alert";
//		}
//			return "";
//	}
	
	@RequestMapping("ChangePw")
	public String ChangePw(MemberDTO member, HttpServletRequest request) {
		String msg = service.changePw(member);
		if(msg == "적합한 비밀번호입니다.") {
			request.setAttribute("msg", "비밀번호 변경 완료");
			request.setAttribute("url", "UserInfo");
			return "member/alert";
		}
		return "member/ChangePw";
	}
	
	// 회원 탈퇴
	@RequestMapping("goodbye_mega")
	public String goodbye_mega(String id, String pw) {
		service.deleteMember(id, pw);
		return "member/goodbye_mega";
	}
}
