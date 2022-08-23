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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.megabox.booking.dto.BookingDTO;
import com.my.megabox.booking.dto.Cancel_BookingDTO;
import com.my.megabox.member.dao.IMemberDAO;
import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;
import com.my.megabox.member.service.MemberService;
import com.my.megabox.member.service.MessageService;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller 
public class MemberController {
	@Autowired private IMemberDAO dao;
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
	
	@RequestMapping("optionBuylist")
	public void optionBuylist(String radPurc, String startDate, String endDate, Model model) {
		System.out.println("radPurc : " + radPurc);
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
		if(radPurc == "A") {
			ArrayList<BookingDTO> GMList = dao.GMOptionList(radPurc, startDate, endDate);
			ArrayList<Cancel_BookingDTO> CCList = dao.CCOptionList(radPurc, startDate, endDate);
			model.addAttribute("GMList", GMList);
			model.addAttribute("CCList", CCList);
		}else if(radPurc == "P") {
			ArrayList<BookingDTO> GMList = dao.GMOptionList(radPurc, startDate, endDate);
			model.addAttribute("GMList", GMList);
		}else {
			ArrayList<Cancel_BookingDTO> CCList = dao.CCOptionList(radPurc, startDate, endDate);
//			System.out.println("옵션검색에서 취소내역 넘오오나 : " + CCList);
//			for(int i = 0; i < CCList.size(); i++) {
//				System.out.println(CCList.get(i));
//			}
			model.addAttribute("CCList", CCList);
		}
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
	
	@GetMapping("UserInfo")
	public String UserInfo(String id, Model model) {
		System.out.println("아이디를 받아오나 : " + id);
		MemberDTO user = service.userInfo(id);
		model.addAttribute("user", user);
		return "member/UserInfo";
	}
	
	@PostMapping("UserInfo")
	public String UserInfo(MemberDTO member, String chPhone) {
		String chgTel = (String) session.getAttribute("chgTel");
		System.out.println(chgTel);
		if(chgTel != null) {
			member.setU_tel(chPhone);
			service.modifyUserInfo(member);
		}else {
			member.setU_tel(member.getU_tel());
			service.modifyUserInfo(member);
		}
		return "";
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
	
	@GetMapping("ChangePw")
	public String ChangePw() {
		return "member/ChangePw";
	}
	
	@PostMapping("ChangePw")
	public String ChangePw(String id, String pw, String pwnew, String checkpwnew, HttpServletRequest request) {
		String sessionid = (String)session.getAttribute("id");
		System.out.println("id : " + sessionid + "pw : " + pw + "pwnew : " + pwnew + "checkpwnew : " + checkpwnew);
		String msg = service.changePw(sessionid, pw, pwnew, checkpwnew);
		if(msg == "적합한 비밀번호입니다.") {
			request.setAttribute("msg", "비밀번호 변경 완료");
			request.setAttribute("url", "login");
			return "member/alert";
		}else {
			request.setAttribute("msg", msg);
			request.setAttribute("url", "ChangePw");
			return "member/alert";
		}
	}
	
	// 회원 탈퇴
	@RequestMapping("goodbye_mega")
	public String goodbye_mega(String id, String pw) {
		service.deleteMember(id, pw);
		return "member/goodbye_mega";
	}
	
	//test
	@PostMapping(value = "askhobby")
	public @ResponseBody String askhobby(String hobby, Model model) {
		System.out.println("잘넘어왔나 : " + hobby);
		model.addAttribute("hobby", hobby);
		return hobby;
	}
}
