package com.my.megabox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CinemaController {
	
	@GetMapping("showCinema")
	public String timetable() {
		return "cinema/showCinema";
	} 

	@GetMapping("showCinemaTimetable")
	public String showCinemaTimetable() {
		return "cinema/showCinemaTimetable";
	} 
	
}
