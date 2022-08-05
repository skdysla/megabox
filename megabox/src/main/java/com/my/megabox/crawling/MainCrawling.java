package com.my.megabox.crawling;

import com.my.megabox.movie.MovieCrawling;

public class MainCrawling {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe";
	public static final String MEGABOX_THEATER = "https://www.megabox.co.kr/theater/list";
	public static final String MEGABOX_MOVIE = "https://www.megabox.co.kr/movie";

	
	public static void main(String[] args) {

		//CinemaCrawling theater = new CinemaCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_THEATER);
		//theater.insert_db();
		MovieCrawling movie = new MovieCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_MOVIE);
		movie.insert_db();
		System.out.println("끝");
	}
}
