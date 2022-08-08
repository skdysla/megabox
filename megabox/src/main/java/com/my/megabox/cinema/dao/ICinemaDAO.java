package com.my.megabox.cinema.dao;

import org.springframework.stereotype.Repository;

import com.my.megabox.member.dto.CinemaDTO;

@Repository
public interface ICinemaDAO {
	
	public CinemaDTO showCinema(String cName);

}
