package com.my.megabox.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.my.megabox.booking.dto.BookingDTO;
import com.my.megabox.booking.dto.Cancel_BookingDTO;
import com.my.megabox.member.dto.MemberDTO;

@Repository
public interface IMemberDAO {
 
	MemberDTO selectId(String id); // 회원 id로 정보 조회

	void chagePw(@Param("id")String id, @Param("pwnew")String pwnew); // 비밀번호 변경

	void deleteMember(String id); //회원 id로 회원삭제

	ArrayList<BookingDTO> YMList(int unum); // 예매 내역
	
	ArrayList<Cancel_BookingDTO> cList(int num); // 취소 내역

	BookingDTO selectBooking(int b_num); // 예매 데이터 가져오기

	void cancelBooking(BookingDTO dto); // 예매 취소 테이블에 데이터 넣기

	void deleteBooking(int b_num); // 예매 테이블에서 예매 내역 삭제

	ArrayList<BookingDTO> GMOptionList(@Param("radio")String radPurc, @Param("start")String startDate, @Param("end")String endDate); // 구매 내역 날짜별 조회

	ArrayList<Cancel_BookingDTO> CCOptionList(@Param("radio")String radPurc, @Param("start")String startDate, @Param("end")String endDate); // 예매 내역 날짜별 조회

	void modifyUserInfo(MemberDTO member); // 회원 정보 수정

}
