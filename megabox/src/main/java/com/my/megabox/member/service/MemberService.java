package com.my.megabox.member.service;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.booking.dto.BookingDTO;
import com.my.megabox.booking.dto.Cancel_BookingDTO;
import com.my.megabox.member.dao.IMemberDAO;
import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;

@Service
public class MemberService implements IMemberService{ 
	@Autowired private IMemberDAO dao;
	@Autowired private HttpSession session;
	
	public MemberDTO userInfo(String id) {
		MemberDTO result = dao.selectId(id);
		return result;
	}

	public String inquiryProc(InquiryDTO inquiry) {
		System.out.println("이건 서비스에서 확인하는 지점유형 : " + inquiry.getI_cinema());
		int num = (int)session.getAttribute("num");
		inquiry.setU_num(num);
		System.out.println(inquiry.getU_num());
		if(inquiry.getI_title() == null || inquiry.getI_title() == "")
			return "제목을 입력해주세요.";
		if(inquiry.getI_content() == null || inquiry.getI_content() == "")
			return "내용을 입력해주세요.";
		
		dao.makeInquiry(inquiry);
		return "게시글 작성 완료";
	}

	public String changePw(String id, String pw, String pwnew, String checkpwnew) {
		MemberDTO result = dao.selectId(id);
		if(pw.equals(result.getU_pw()) == false)
			return "현재 비밀번호가 일치하지 않습니다.";
		if(pwnew.equals(checkpwnew) == false)
			return  "새 비밀번호가 일치하지 않습니다."; 
		
		String lenReg = "[a-zA-Z0-9!@#$%^&*]{10,}";
		String engReg = "[a-zA-Z]";
		String numReg = "[0-9]";
		String specReg = "[!@#$%^&*]";
		int has = 0;
		
		if(Pattern.matches(lenReg, pwnew)) {
			has += Pattern.compile(engReg).matcher(pwnew).find() ? 1:0;
			has += Pattern.compile(numReg).matcher(pwnew).find() ? 1:0;
			has += Pattern.compile(specReg).matcher(pwnew).find() ? 1:0;
			if(has < 2) return "비밀번호 형식이 아닙니다.";
			else {
				//비밀번호 암호화
				dao.chagePw(id, pwnew);
				return "적합한 비밀번호입니다.";
			}
		}else {
			return "비밀번호 형식이 아닙니다.";
		}
		
	}

	public String deleteMember(String id, String pw, String useroutcheck) {
		
		if(id == null || id == "")
			return "로그인을 해주세요.";
		if(pw == null || pw == "")
			return "비밀번호를 입력해주세요.";
		MemberDTO result = dao.selectId(id);
		if(pw.equals(result.getU_pw()) == false)
			return "비밀번호가 일치하지 않습니다.";
		if(useroutcheck == null || useroutcheck == "")
			return "회원탈퇴 사유를 정해주세요.";
					
		dao.deleteMember(id);
		return "회원탈퇴 완료";
	}
	
	// 예매 내역
	public ArrayList<BookingDTO> YMList(int num) {
		return dao.YMList(num);
	}
	// 취소 내역
	public ArrayList<Cancel_BookingDTO> cList(int num) {
		return dao.cList(num);
	}	

	public String login(String id, String pw) {
		if(id == null || id.isEmpty() || pw == null || pw.isEmpty())
			return "필수 정보입니다.";
		MemberDTO result = dao.selectId(id);
		if(result == null)
			return "아이디 또는 비밀번호가 일치하지 않습니다.";
		if(result.getU_pw().equals(pw) == false)
			return "비밀번호가 일치하지 않습니다.";
		session.setAttribute("id", result.getU_id());
		session.setAttribute("name", result.getU_name());
		session.setAttribute("num", result.getU_num());
		session.setAttribute("tel", result.getU_tel());
		return "로그인 성공";
	}

	public void cancelBooking(int b_num) {
		// 예매 데이터 가져오기
		BookingDTO dto = dao.selectBooking(b_num);
		
		// 예매 취소 테이블에 데이터 넣어주기
		dao.cancelBooking(dto);
		
		// 예매 내역 삭제
		dao.deleteBooking(b_num);		
	}
	
	// 회원 수정
	public String modifyUserInfo(MemberDTO member) {
		String sessionId = (String) session.getAttribute("id");
		System.out.println("서비스까지 넘어왔나");
		System.out.println("tel : " + member.getU_tel());
		System.out.println("email : " + member.getU_email());
		System.out.println("m_agree : " + member.getU_m_agree());
		if(sessionId == null || sessionId == "")
			return "로그인 후 수정해주세요.";
		if(member.getU_email() == null || member.getU_tel() == "")
			return "이메일을 입력해주세요.";
		if(member.getU_m_agree() == null || member.getU_m_agree() == "")
			member.setU_m_agree("disagree");
		member.setU_id(sessionId);
		dao.modifyUserInfo(member);
		return "회원정보 수정 완료";
	}

	public ArrayList<InquiryDTO> IQList(int num) {
		return dao.IQList(num);
	}

	public InquiryDTO detailIQ(int i_num) {
		return dao.detailIQ(i_num);
	}
		
}
