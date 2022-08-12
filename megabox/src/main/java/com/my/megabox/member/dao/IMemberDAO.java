package com.my.megabox.member.dao;

import org.springframework.stereotype.Repository;

import com.my.megabox.member.dto.MemberDTO;

@Repository
public interface IMemberDAO {
 
	MemberDTO selectId(String id); // 회원 id로 정보 조회
	
}
