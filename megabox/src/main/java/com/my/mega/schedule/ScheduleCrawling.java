package com.my.mega.schedule;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.my.megabox.cinema_c.CinemaDTO;

public class ScheduleCrawling {
	private WebDriver driver;
	private String WEB_DRIVER_ID;
	private String WEB_DRIVER_PATH;
	private String MEGABOX_THEATER;
	private String MEGABOX_THEATER_EACH;
//	private String YOUTUBE;
	private ArrayList<String> schedule_num;
	private ArrayList<ScheduleDTO> schedule_list;
	private ArrayList<String> theater_num;
	private ArrayList<CinemaDTO> theater_list;

	public ScheduleCrawling(String WEB_DRIVER_ID, String WEB_DRIVER_PATH, String MEGABOX_THEATER) {

		this.WEB_DRIVER_ID = WEB_DRIVER_ID;
		this.WEB_DRIVER_PATH = WEB_DRIVER_PATH;
		this.MEGABOX_THEATER = MEGABOX_THEATER;
		this.MEGABOX_THEATER_EACH = "https://www.megabox.co.kr/theater?brchNo=";
		theater_num = new ArrayList<String>();
		theater_list = new ArrayList<CinemaDTO>();
		schedule_num = new ArrayList<String>();
		schedule_list = new ArrayList<ScheduleDTO>();

		try {
			System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--start-maximized"); //전체화면으로 실행
		options.addArguments("--disable-popup-blocking"); //팝업 무시
		options.addArguments("--disable-default-apps"); //기본앱 사용 안함 ex)인터넷익스플로러, 엣지 등 기본앱 사용 x

		// 위에서 설정한 옵션은 담은 드라이버 객체 생성
		// 옵션을 설정하지 않았을 때에는 생략 가능하다.
		// WebDriver객체가 곧 하나의 브라우저 창이라 생각한다.
		driver = new ChromeDriver(options);
		
	}
	
	public ArrayList<String> get_theater_num() {
		// WebDriver을 해당 url로 이동한다.
		driver.get(MEGABOX_THEATER);
		// 브라우저 이동시 생기는 로드시간을 기다린다.
		// HTTP응답속도보다 자바의 컴파일 속도가 더 빠르기 때문에 임의적으로 1초를 대기한다.
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
		}

		// class="nav" 인 모든 태그를 가진 WebElement리스트를 받아온다.
		// WebElement는 html의 태그를 가지는 클래스이다.
		WebElement theater_place = driver.findElement(By.className("theater-place"));
		List<WebElement> theater_place_list = theater_place.findElements(By.tagName("button"));
		int count = 1;
		for (WebElement place : theater_place_list) {
			place.click();
			WebElement temp_theater_list = theater_place.findElement(By.className("on"));
			List<WebElement> li_list = temp_theater_list.findElements(By.tagName("li"));
			for (WebElement li : li_list) {
				if(count>=0) {
					String li_num = li.getAttribute("data-brch-no");
					theater_num.add(li_num);
				}
				count++;
			}
		}
		return theater_num;
	}
	
public void make_all_theater_list() {
		
		for (String num : theater_num) {
			String each_url = MEGABOX_THEATER_EACH +num;
			driver.get(each_url);
			WebElement a = driver.findElement(By.tagName("ul")).findElement(By.tagName("li")).findElement(By.tagName("a"));
			driver.findElement(By.className("inner-wrap pt40")).findElement(By.linkText("상영시간표")).click(); // 상영시간표로 넘어가야하는데 안넘어감
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
			}
			ScheduleDTO sdto = new ScheduleDTO();
			
			List<WebElement> title_list = driver.findElements(By.className("theater-tit"));
			List<WebElement> screen_list = title_list.get(1).findElements(By.tagName("p"));
			String screen_str = "";
			for (WebElement screen : screen_list) {
				screen_str += screen.getText() + "";
			}
			sdto.setMovieName(screen_str); // movie title
			
//			WebElement theater_facility = driver.findElement(By.className("theater-facility"));
//			List<WebElement> facility_list = theater_facility.findElements(By.tagName("p"));
//			String facility_str = "";
//			for (WebElement facility : facility_list) {
//				facility_str += facility.getText() + " ";
//			}
////			tdto.setFacility(facility_str); // facility
//
//			
//			List<WebElement> dot_list = driver.findElements(By.className("dot-list"));
//			List<WebElement> floor_list = dot_list.get(1).findElements(By.tagName("li"));
//			String floor_str = "";
//			for (WebElement each_floor : floor_list) {
//				String other = each_floor.getText();
//				floor_str += other + "+++";
//			}
////			tdto.setFloor(floor_str); // floor
//
//			 
//			List<WebElement> transport_list = dot_list.get(2).findElements(By.tagName("li"));
//			String transport_str = "";
//			for (WebElement each_transport : transport_list) {
//				String other = each_transport.getText();
//				transport_str += other;
//			}
//			String[] address_list = transport_str.split(" ");
//			String detail="";
//			for(int i=0;i<address_list.length;i++) {
//				if(i==2) {
////					tdto.setState(address_list[i]);
//				}else if(i==3) {
////					tdto.setCity(address_list[i]);
//				}else if(i>3) {
//					detail+=address_list[i] + " ";
//				}
//			}
//			tdto.setDetail(detail);
//			theater_list.add(tdto);
//			for_sql(tdto);
		}
	}
	
//	public ArrayList<String> get_schedule_num() {
//		// WebDriver을 해당 url로 이동한다.
//		driver.get(MEGABOX_MOVIE);
//		// 브라우저 이동시 생기는 로드시간을 기다린다.
//		// HTTP응답속도보다 자바의 컴파일 속도가 더 빠르기 때문에 임의적으로 1초를 대기한다.
//		try {
//			Thread.sleep(1000);
//		} catch (InterruptedException e) {
//		}
//
//		
//		WebElement schedule_cnt = driver.findElement(By.id("totCnt"));
//		int schedule_cnt_int = Integer.parseInt(schedule_cnt.getText());
//		
//		
//		for(int i=0;i<(schedule_cnt_int-1)/20;i++) {
//			WebElement addBtn = driver.findElement(By.id("btnAddMovie"));
//			addBtn.click();
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e) {
//			}
//		}
//		WebElement schedule_list = driver.findElement(By.className("schedule-list"));
//		List<WebElement> movie_list_li = movie_list.findElements(By.tagName("li"));
//		
//		int count = 1;
//		
//		for(WebElement movie:movie_list_li) {
//			if(count>=1) {
//				String num = movie.findElement(By.tagName("a")).getAttribute("data-no");
//				schedule_num.add(num);
//			}count++;
//					
//		}
//		
//		return schedule_num;
//	}
	
	/*
	 * public void make_all_movie_list() {
	 * 
	 * int count=1; for (String num : movie_num) { String each_url =
	 * MEGABOX_MOVIE_EACH +num; driver.get(each_url); try { Thread.sleep(1000); }
	 * catch (InterruptedException e) { } ScheduleDTO mdto = new ScheduleDTO();
	 * 
	 * 
	 * WebElement title = driver.findElement(By.className("title")); //name String
	 * title_str = title.getText(); mdto.setName(title_str);
	 * 
	 * WebElement poster = driver.findElement(By.className("poster")); //poster
	 * String poster_str =
	 * poster.findElement(By.tagName("img")).getAttribute("src");
	 * mdto.setPoster(poster_str);
	 * 
	 * List<WebElement> story =
	 * driver.findElement(By.id("info")).findElements(By.className("txt")); //story
	 * if(story.size()!=0) { String story_str = story.get(0).getText(); story_str =
	 * story_str.replaceAll("\\r\\n|\\r|\\n", " "); mdto.setStory(story_str); }
	 * 
	 * 
	 * List<WebElement> info_lst = driver.findElements(By.className("info"));
	 * //attendance WebElement info = info_lst.get(1); List<WebElement> info_p_lst =
	 * info.findElements(By.tagName("em")); String attendance =
	 * info_p_lst.get(info_p_lst.size()-1).getText(); attendance =
	 * attendance.replace(",", ""); int attendance_int =
	 * Integer.parseInt(attendance); mdto.setAttendance(attendance_int);
	 * 
	 * WebElement movie_info = driver.findElement(By.className("movie-info"));
	 * //type WebElement type = movie_info.findElement(By.tagName("p")); String
	 * type_str = type.getText().replace("상영타입 : ", ""); mdto.setType(type_str);
	 * 
	 * WebElement line = movie_info.findElement(By.className("line")); //director
	 * List<WebElement> line_lst = line.findElements(By.tagName("p"));
	 * 
	 * for(WebElement we:line_lst) { String line_txt = we.getText();
	 * if(line_txt.startsWith("감독 : ")) { String director_str =
	 * line_txt.replace("감독 : ", ""); mdto.setDirector(director_str); }else
	 * if(line_txt.startsWith("장르 : ")) { String[] genre_time_split =
	 * line_txt.split(" / "); String genre_str =
	 * genre_time_split[0].replace("장르 : ", ""); mdto.setGenre(genre_str); String
	 * time_str = genre_time_split[1]; //time time_str = time_str.replace("분",
	 * "").trim(); int time_int = Integer.parseInt(time_str);
	 * mdto.setTime(time_int); }else if(line_txt.startsWith("등급 : ")) { String
	 * age_str = line_txt.replace("등급 : ", ""); mdto.setAge(age_str); }else
	 * if(line_txt.startsWith("개봉일 : ")) { String date_str =
	 * line_txt.replace("개봉일 : ", ""); mdto.setDate(date_str); } }
	 * 
	 * 
	 * 
	 * 
	 * List<WebElement> for_actor_lst = movie_info.findElements(By.tagName("p"));
	 * //actor for(WebElement actor:for_actor_lst) { String actor_str =
	 * actor.getText(); if(actor_str.startsWith("출연진 : ")) { actor_str =
	 * actor_str.replace("출연진 : ", ""); mdto.setActor(actor_str); } }
	 * 
	 * 
	 * 
	 * WebElement like = driver.findElement(By.id("intrstCnt")); //like String
	 * like_str = like.getText(); int like_int=0; if(like_str.contains("k")) {
	 * like_str = like_str.replace("k", ""); if(like_str.contains(".")) { like_str =
	 * like_str.replace(".", ""); like_int = Integer.parseInt(like_str)*100; }else {
	 * like_int = Integer.parseInt(like_str)*1000; } }else { like_int =
	 * Integer.parseInt(like_str); } mdto.setLike(like_int);
	 * 
	 * 
	 * WebElement avg = driver.findElement(By.id("mainMegaScore")); //avg String
	 * avg_txt = avg.findElement(By.tagName("em")).getText(); avg_txt =
	 * avg_txt.replace(".", ""); if(!avg_txt.equals("")) { int avg_int =
	 * Integer.parseInt(avg_txt); mdto.setAvg(avg_int); }
	 * 
	 * 
	 * String trailer_str = youtube_trailer(title_str); //trailer
	 * mdto.setTrailer(trailer_str);
	 * 
	 * movie_list.add(mdto); System.out.println(count); count++; for_sql(mdto); } }
	 */
	
	public void insert_db() {
		get_theater_num();
		make_all_theater_list();
		print_list();
	}
	
	public void print_list() {
		for (ScheduleDTO sdto : schedule_list) {
			System.out.println("title : " + sdto.getMovieName());
		}
	}
	
	
	 public void for_sql(ScheduleDTO mdto) { 
		 
		 ScheduleDAO mdao = ScheduleDAO.getInstance(); 
		 mdao.insertMovie(mdto);
	 }
	 
}
