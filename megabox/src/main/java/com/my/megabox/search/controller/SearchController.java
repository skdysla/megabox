package com.my.megabox.search.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.my.megabox.search.dto.MovieDTO;
import com.my.megabox.search.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService service;
	
	@GetMapping("movie")
	public String movie(Model model, String mName) {
		if(mName == null || mName == "")
			return "search/movie";
		
		ArrayList<MovieDTO> mList = service.showMovie(mName);
		model.addAttribute("mName", mName);
		model.addAttribute("mList", mList);
		return "search/movie";
	} 

}
