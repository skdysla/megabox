package com.my.megabox.cinema.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.megabox.cinema.service.CinemaService;

@Controller 
public class CinemaController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CinemaService service;
	
	@GetMapping("showCinema")
	public String showCinema(Model model, String cName) {
		System.out.println("cName : "  + cName + "ø‰√ª!");
		HashMap<String, ArrayList> sList = (HashMap)session.getAttribute("sList");
		if(sList == null || sList.isEmpty())
			service.showCinemaByState();
		
		HashMap<String, Object> info = service.showCinema(cName);
		if(info == null || info.isEmpty()) 
			return "cinema/showCinema";
		
		model.addAttribute("cinema", info.get("cinema"));
		model.addAttribute("floor", info.get("floor"));
		model.addAttribute("facility", info.get("facility"));
		return "cinema/showCinema";
	} 

	@GetMapping("showCinemaTimetable")
	public String showCinemaTimetable() {
		return "cinema/showCinemaTimetable";
	} 
	
}
