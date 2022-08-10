package com.my.megabox.search.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.search.dao.ISearchDAO;
import com.my.megabox.search.dto.MovieDTO;

@Service
public class SearchService implements ISearchService {
	
	@Autowired
	private ISearchDAO dao;

	@Override
	public ArrayList<MovieDTO> showMovie(String mName) {
		return dao.showMovie(mName);
	}

}
