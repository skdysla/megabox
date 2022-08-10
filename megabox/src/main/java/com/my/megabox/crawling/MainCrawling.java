package com.my.megabox.crawling;

import com.my.mega.schedule.ScheduleCrawling;
import com.my.megabox.movie.MovieCrawling;
import com.my.megabox.screen.ScreenCrawling;

//public class MainCrawling {
//	
//	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
//	public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe";
//	public static final String MEGABOX_THEATER = "https://www.megabox.co.kr/theater/list";
//	public static final String MEGABOX_MOVIE = "https://www.megabox.co.kr/movie";
//
//	
//	public static void main(String[] args) {
//
//		//CinemaCrawling theater = new CinemaCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_THEATER);
//		//theater.insert_db();
////		MovieCrawling movie = new MovieCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_MOVIE);
////		movie.insert_db();
//		ScheduleCrawling schedule = new ScheduleCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_THEATER);
//		schedule.insert_db();
//		System.out.println("끝");
//	}
//}

public class MainCrawling {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe";
	public static final String MEGABOX_TIMETABLE = "https://www.megabox.co.kr/booking/timetable";
	public static final String MEGABOX_MOVIE = "https://www.megabox.co.kr/movie";

	public static void main(String[] args) {

//		CinemaCrawling theater = new CinemaCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_THEATER);
//		theater.insert_db();
		ScreenCrawling screenC = new ScreenCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_TIMETABLE);
		screenC.insert_db();
		System.out.println("끝");
	}
}