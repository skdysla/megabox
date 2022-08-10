package com.my.megabox.search.service;

import java.util.ArrayList;

import com.my.megabox.search.dto.MovieDTO;

public interface ISearchService {
	
	ArrayList<MovieDTO> showMovie(String mName);
	
}
