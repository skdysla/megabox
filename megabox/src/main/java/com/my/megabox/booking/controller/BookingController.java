package com.my.megabox.booking.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.megabox.booking.service.BookingService;

@Controller
public class BookingController {
	@Autowired
	private BookingService service;
	
	@GetMapping("timetable")
	public String timetable() {
		return "booking/timetable";
	} 
	
	@GetMapping("selectSeat")
	public String seatChoice() {
		return "booking/selectSeat";
	}
	
	@GetMapping("selectSeat2")
	public String selectSeat2() {
		return "booking/selectSeat2";
	} 
	
	@GetMapping("selectSeatPage")
	public String selectSeatPage() {
		return "booking/selectSeatPage";
	}
	
	@GetMapping("test")
	public String test() {
		return "booking/test";
	} 
	
	@GetMapping("test3")
	public String test2() {
		return "booking/test3";
	} 
	
	@GetMapping("movie")
	public String movie() {
		return "booking/movie";
	} 
	
	@GetMapping("head")
	public void head() {}
	
	@ResponseBody
	@PostMapping(value = "sendMovieName", produces = "text/html; charset=utf-8")
	public String sendMovieName(@RequestBody(required = false) HashMap<String, String> data) {
		return data.get("name") + "요청 받음";
	}

}
