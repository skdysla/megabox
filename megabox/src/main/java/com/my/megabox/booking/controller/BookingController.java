package com.my.megabox.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	@GetMapping("test")
	public String test() {
		return "booking/test";
	} 

}
