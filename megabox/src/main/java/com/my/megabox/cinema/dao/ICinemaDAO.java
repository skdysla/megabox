package com.my.megabox.cinema.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.my.megabox.cinema.dto.CinemaDTO;
import com.my.megabox.cinema.dto.FacilityDTO;
import com.my.megabox.cinema.dto.FloorDTO;

@Repository
public interface ICinemaDAO {
 
	public CinemaDTO showCinema(String cName);

	public ArrayList<FloorDTO> showFloor(String cName);

	public ArrayList<FacilityDTO> showFacility(String cName);

	ArrayList<String> showCinemaByState(String sName);

}
