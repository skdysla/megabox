package com.my.megabox.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BookingController {
	
	@GetMapping("timetable")
	public String timetable() {
		return "booking/timetable";
	} 
	
	@GetMapping("selectSeat")
	public String seatChoice() {
		return "booking/selectSeat";
	}
	
	@GetMapping("selectSeat2")
	public String selectSeat2() {
		return "booking/selectSeat2";
	} 
	
	@GetMapping("selectSeatPage")
	public String selectSeatPage() {
		return "booking/selectSeatPage";
	}
	
	@GetMapping("test")
	public String test() {
		return "booking/test";
	} 
	
	@GetMapping("test3")
	public String test2() {
		return "booking/test3";
	} 
	
	@ResponseBody
	@GetMapping(value = "sendMovieName", produces = "html/text; charset=utf-8")
	public String sendMovieName() {
		return "요청 받음";
	}

}
