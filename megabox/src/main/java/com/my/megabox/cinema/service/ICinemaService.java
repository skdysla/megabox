package com.my.megabox.cinema.service;

import java.util.HashMap;

public interface ICinemaService {
	 
	HashMap<String, Object> showCinema(String cName);
	
	void showCinemaByState();

}
