package com.my.megabox.cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.cinema.dao.ICinemaDAO;
import com.my.megabox.member.dto.CinemaDTO;

@Service
public class CinemaService implements ICinemaService {
	
	@Autowired
	private ICinemaDAO dao;

	@Override
	public CinemaDTO showCinema(String cName) {
		if(cName == null || cName == "") {
			return dao.showCinema("°­³²");
		}
		return dao.showCinema(cName);
	}

}
