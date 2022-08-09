package com.my.megabox.cinema.dto;

public class CinemaDTO {
	private Integer c_num; 
	private String c_name;
	private String c_state;
	private String c_city;
	private String c_detail;

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

	public String getC_state() {
		return c_state;
	}

	public void setC_state(String c_state) {
		this.c_state = c_state;
	}

	public String getC_city() {
		return c_city;
	}

	public void setC_city(String c_city) {
		this.c_city = c_city;
	}

	public String getC_detail() {
		return c_detail;
	}

	public void setC_detail(String c_detail) {
		this.c_detail = c_detail;
	}

	public CinemaDTO(Integer c_num, String c_name, String c_state, String c_city, String c_detail) {
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_state = c_state;
		this.c_city = c_city;
		this.c_detail = c_detail;
	}

	@Override
	public String toString() {
		return "CinemaDTO [c_num=" + c_num + ", c_name=" + c_name + ", c_state=" + c_state + ", c_city=" + c_city
				+ ", c_detail=" + c_detail + "]";
	}

}
