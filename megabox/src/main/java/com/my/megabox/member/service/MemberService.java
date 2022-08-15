package com.my.megabox.member.service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.member.dao.IMemberDAO;
import com.my.megabox.member.dto.InquiryDTO;
import com.my.megabox.member.dto.MemberDTO;

@Service
public class MemberService implements IMemberService{ 
	@Autowired private IMemberDAO dao;
	
	public MemberDTO userInfo(String id) {
		MemberDTO result = dao.selectId(id);
		return result;
	}

	public void inquiryProc(InquiryDTO inquiry) {
		// TODO Auto-generated method stub
		
	}

	public String changePw(String id, String pw, String pwnew, String checkpwnew) {
		MemberDTO result = dao.selectId(id);
		if(pw.equals(result.getU_pw()) == false)
			return "현재 비밀번호가 일치하지 않습니다.";
		if(pwnew != checkpwnew)
			return  "새 비밀번호가 일치하지 않습니다."; 
		
		String lenReg = "[a-zA-Z0-9!@#$%^&*]{10,}";
		String engReg = "[a-zA-Z]";
		String numReg = "[0-9]";
		String specReg = "[!@#$%^&*]";
		Matcher m;
		int has = 0;
		
		if(Pattern.matches(lenReg, pwnew)) {
			has += Pattern.compile(engReg).matcher(pwnew).find() ? 1:0;
			has += Pattern.compile(numReg).matcher(pwnew).find() ? 1:0;
			has += Pattern.compile(specReg).matcher(pwnew).find() ? 1:0;
			if(has < 2) return "비밀번호 형식이 아닙니다.";
			else return "적합한 비밀번호입니다.";
		}else {
			return "비밀번호 형식이 아닙니다.";
		}
		
	}
	
}
