package com.my.megabox.search.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.my.megabox.search.dto.MovieDTO;

@Repository
public interface ISearchDAO {
	
	public ArrayList<MovieDTO> showMovie(String mName);

}
