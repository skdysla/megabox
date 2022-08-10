package com.my.megabox.booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.megabox.booking.dao.IBookingDAO;

@Service
public class BookingService implements IBookingService {
	 
	@Autowired
	private IBookingDAO dao;

}
