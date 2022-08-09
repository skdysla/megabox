package com.my.megabox.cinema.dto;

public class FloorDTO {

	private Integer f_num;
	private String f_floor;
	private Integer c_num;

	public Integer getF_num() {
		return f_num;
	}

	public void setF_num(Integer f_num) {
		this.f_num = f_num;
	}

	public String getF_floor() {
		return f_floor;
	}

	public void setF_floor(String f_floor) {
		this.f_floor = f_floor;
	}

	public Integer getC_num() {
		return c_num;
	}

	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}

	@Override
	public String toString() {
		return "FloorDTO [f_num=" + f_num + ", f_floor=" + f_floor + ", c_num=" + c_num + "]";
	}

}
