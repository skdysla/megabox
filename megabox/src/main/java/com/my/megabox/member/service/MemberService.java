package com.my.megabox.member.service;

import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.member.dao.IMemberDAO;
import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;

@Service
public class MemberService implements IMemberService{ 
	@Autowired private IMemberDAO dao;
	@Autowired private HttpSession session;
	private String number;
	
	public MemberDTO userInfo(String id) {
		MemberDTO result = dao.selectId(id);
		return result;
	}

	public void inquiryProc(InquiryDTO inquiry) {
		// TODO Auto-generated method stub
		
	}

	public String changePw(MemberDTO member) {
		MemberDTO result = dao.selectId(member.getId());
		if(member.getPw().equals(result.getPw()) == false)
			return "현재 비밀번호가 일치하지 않습니다.";
		if(member.getPwnew() != member.getCheckpwnew())
			return  "새 비밀번호가 일치하지 않습니다."; 
		
		String lenReg = "[a-zA-Z0-9!@#$%^&*]{10,}";
		String engReg = "[a-zA-Z]";
		String numReg = "[0-9]";
		String specReg = "[!@#$%^&*]";
		Matcher m;
		int has = 0;
		
		if(Pattern.matches(lenReg, member.getPwnew())) {
			has += Pattern.compile(engReg).matcher(member.getPwnew()).find() ? 1:0;
			has += Pattern.compile(numReg).matcher(member.getPwnew()).find() ? 1:0;
			has += Pattern.compile(specReg).matcher(member.getPwnew()).find() ? 1:0;
			if(has < 2) return "비밀번호 형식이 아닙니다.";
			else {
				dao.chagePw(member.getId(), member.getPwnew());
				return "적합한 비밀번호입니다.";
			}
		}else {
			return "비밀번호 형식이 아닙니다.";
		}
		
	}

	public String deleteMember(String id, String pw) {
		if(pw == null || pw.isEmpty())
			return "비밀번호를 입력해주세요.";
		MemberDTO result = dao.selectId(id);
		if(!pw.equals(result.getPw()))
			return "비밀번호가 일치하지 않습니다.";
		
		// 문자인증 -> 문자인증 세션이 존재할 경우 회원 탈퇴를 할 수 있게 만든다.
		
		dao.deleteMember(id);
		return "회원탈퇴 완료";
	}	
	
	
}
