package com.my.megabox.member.dao;

import org.springframework.stereotype.Repository;

import com.my.megabox.member.dto.MemberDTO;

@Repository
public interface IMemberDAO {
 
	MemberDTO selectId(String id); // 회원 id로 정보 조회

	void chagePw(String id, String pwnew); // 비밀번호 변경

	void deleteMember(String id); //회원 id로 회원삭제

}
