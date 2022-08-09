package com.my.megabox.cinema.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.cinema.dao.ICinemaDAO;
import com.my.megabox.cinema.dto.CinemaDTO;
import com.my.megabox.cinema.dto.FacilityDTO;
import com.my.megabox.cinema.dto.FloorDTO;

@Service
public class CinemaService implements ICinemaService {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ICinemaDAO dao;
	
	private String[] sList = {"서울", "경기", "인천", "대전,충청,세종", "부산,대구,경상", "광주,전라", "강원"};
	
	//theater-info-text mt40 .big , theater-info-text mt40 p에 극장 정보 

	@Override
	public HashMap<String, Object> showCinema(String cName) {
		HashMap<String, Object> info = null;
		
		if(cName == null || cName == "")
			cName = "강남";
		
		CinemaDTO cinema = dao.showCinema(cName);
		ArrayList<FloorDTO> floor = dao.showFloor(cName);
		ArrayList<FacilityDTO> facility = dao.showFacility(cName);
		
		if(cinema != null) {
			info = new HashMap<>();
			info.put("cinema", cinema);
			info.put("floor", floor);
			info.put("facility", facility);
		}
		return info;
	}

	@Override
	public void showCinemaByState() {
		System.out.println("실행됨@@@");
		HashMap<String, ArrayList> result = new HashMap<>();
		
		for(String state : sList) {
			String[] splitState = state.split(",");
			if(splitState.length >= 2) {
				ArrayList<String> tmp = new ArrayList<>();
				for(int i = 0; i < splitState.length; i++) {
					System.out.println(splitState[i] + "실행됨!!, state: " + state);
					tmp.addAll(dao.showCinemaByState(splitState[i]));
				}
				result.put(state, tmp);
			}
			System.out.println("state: " + state);
			result.put(state, dao.showCinemaByState(state));
		}
		session.setAttribute("sList", result);
	}

}
