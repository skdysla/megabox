package com.my.megabox.cinema.dto;

public class FacilityDTO { 

	private Integer f_num;
	private String f_facility;
	private Integer c_num;

	public Integer getF_num() {
		return f_num;
	}

	public void setF_num(Integer f_num) {
		this.f_num = f_num;
	}

	public String getF_facility() {
		return f_facility;
	}

	public void setF_facility(String f_facility) {
		this.f_facility = f_facility;
	}

	public Integer getC_num() {
		return c_num;
	}

	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}

	@Override
	public String toString() {
		return "FacilityDTO [f_num=" + f_num + ", f_facility=" + f_facility + ", c_num=" + c_num + "]";
	}

}
