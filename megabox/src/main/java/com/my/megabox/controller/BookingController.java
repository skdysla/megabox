package com.my.megabox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {
	
	@GetMapping("timetable")
	public String timetable() {
		return "booking/timetable";
	} 
	
	@GetMapping("seatChoice")
	public String seatChoice() {
		return "booking/seatChoice";
	} 
	

}
