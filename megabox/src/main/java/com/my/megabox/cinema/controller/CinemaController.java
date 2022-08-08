package com.my.megabox.cinema.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.my.megabox.cinema.dto.CinemaDTO;
import com.my.megabox.cinema.service.CinemaService;

@Controller 
public class CinemaController {
	@Autowired
	private CinemaService service;
	
	@GetMapping("showCinema")
	public String showCinema(Model model, String cName) {
		CinemaDTO cinema = service.showCinema(cName);
		System.out.println(cinema.toString());
		model.addAttribute("cinema", cinema);
		return "cinema/showCinema";
	} 

	@GetMapping("showCinemaTimetable")
	public String showCinemaTimetable() {
		return "cinema/showCinemaTimetable";
	} 
	
}
