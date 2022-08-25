package com.my.megabox.booking.dto;

public class BookingDTO {
	private Integer b_num;
	private String b_date;
	private String b_time;
	private String b_start;
	private String b_end;
	private Integer b_fee;
	//예매한 좌석 배열
	private String b_seat; 
	private Integer b_s_cnt;
	private String b_status;
	private Integer c_num;
	private String c_name;
	private Integer s_num;
	private String s_name;
	private Integer m_num;
	private String m_name;
	private String m_poster;
	private Integer u_num;
	private Integer r_num;
	private String r_date;
	private String b_condition;

	public Integer getB_num() {
		return b_num;
	}

	public void setB_num(Integer b_num) {
		this.b_num = b_num;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getB_time() {
		return b_time;
	}

	public void setB_time(String b_time) {
		this.b_time = b_time;
	}

	public String getB_start() {
		return b_start;
	}

	public void setB_start(String b_start) {
		this.b_start = b_start;
	}

	public String getB_end() {
		return b_end;
	}

	public void setB_end(String b_end) {
		this.b_end = b_end;
	}

	public Integer getB_fee() {
		return b_fee;
	}

	public void setB_fee(Integer b_fee) {
		this.b_fee = b_fee;
	}

	public String getB_seat() {
		return b_seat;
	}

	public void setB_seat(String b_seat) {
		this.b_seat = b_seat;
	}

	public Integer getB_s_cnt() {
		return b_s_cnt;
	}

	public void setB_s_cnt(Integer b_s_cnt) {
		this.b_s_cnt = b_s_cnt;
	}

	public String getB_status() {
		return b_status;
	}

	public void setB_status(String b_status) {
		this.b_status = b_status;
	}

	public Integer getC_num() {
		return c_num;
	}

	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}
	
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public Integer getS_num() {
		return s_num;
	}

	public void setS_num(Integer s_num) {
		this.s_num = s_num;
	}
	
	public String getS_name() {
		return s_name;
	}
	
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public Integer getM_num() {
		return m_num;
	}

	public void setM_num(Integer m_num) {
		this.m_num = m_num;
	}
	
	public String getM_name() {
		return m_name;
	}
	
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	public String getM_poster() {
		return m_poster;
	}
	
	public void setM_poster(String m_poster) {
		this.m_poster = m_poster;
	}

	public Integer getU_num() {
		return u_num;
	}

	public void setU_num(Integer u_num) {
		this.u_num = u_num;
	}
	
	public Integer getR_num() {
		return r_num;
	}
	
	public void setR_num(Integer r_num) {
		this.r_num = r_num;
	}
	
	public String getR_date() {
		return r_date;
	}
	
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	public String getB_condition() {
		return b_condition;
	}
	public void setB_condition(String b_condition) {
		this.b_condition = b_condition;
	}
	

	@Override
	public String toString() {
		return "BookingDTO [b_num=" + b_num + ", b_date=" + b_date + ", b_time=" + b_time + ", b_start=" + b_start
				+ ", b_end=" + b_end + ", b_fee=" + b_fee + ", b_seat=" + b_seat + ", b_s_cnt=" + b_s_cnt
				+ ", b_status=" + b_status + ", c_num=" + c_num + ", s_num=" + s_num + ", m_num=" + m_num + ", u_num="
				+ u_num + "]";
	}

}
