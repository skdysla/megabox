package com.my.megabox.movie;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class MovieCrawling {
	private WebDriver driver;
	private String WEB_DRIVER_ID;
	private String WEB_DRIVER_PATH;
	private String MEGABOX_MOVIE;
	private String MEGABOX_MOVIE_EACH;
	private String YOUTUBE;
	private ArrayList<String> movie_num;
	private ArrayList<MovieDTO> movie_list;

	public MovieCrawling(String WEB_DRIVER_ID, String WEB_DRIVER_PATH, String MEGABOX_MOVIE) {

		this.WEB_DRIVER_ID = WEB_DRIVER_ID;
		this.WEB_DRIVER_PATH = WEB_DRIVER_PATH;
		this.MEGABOX_MOVIE = MEGABOX_MOVIE;
		this.MEGABOX_MOVIE_EACH = "https://www.megabox.co.kr/movie-detail?rpstMovieNo=";
		this.YOUTUBE = "https://www.youtube.com/";
		movie_num = new ArrayList<String>();
		movie_list = new ArrayList<MovieDTO>();

		try {
			System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--start-maximized");
		options.addArguments("--disable-popup-blocking");
		options.addArguments("--disable-default-apps");

		// 위에서 설정한 옵션은 담은 드라이버 객체 생성
		// 옵션을 설정하지 않았을 때에는 생략 가능하다.
		// WebDriver객체가 곧 하나의 브라우저 창이라 생각한다.
		driver = new ChromeDriver(options);
		
	}
	
	public ArrayList<String> get_movie_num() {
		// WebDriver을 해당 url로 이동한다.
		driver.get(MEGABOX_MOVIE);
		// 브라우저 이동시 생기는 로드시간을 기다린다.
		// HTTP응답속도보다 자바의 컴파일 속도가 더 빠르기 때문에 임의적으로 1초를 대기한다.
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
		}

		
		WebElement movie_cnt = driver.findElement(By.id("totCnt"));
		int movie_cnt_int = Integer.parseInt(movie_cnt.getText());
		
		
		for(int i=0;i<(movie_cnt_int-1)/20;i++) {
			WebElement addBtn = driver.findElement(By.id("btnAddMovie"));
			addBtn.click();
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
			}
		}
		WebElement movie_list = driver.findElement(By.className("movie-list"));
		List<WebElement> movie_list_li = movie_list.findElements(By.tagName("li"));
		
		int count = 1;
		
		for(WebElement movie:movie_list_li) {
			if(count>=1) {
				String num = movie.findElement(By.tagName("a")).getAttribute("data-no");
				movie_num.add(num);
			}count++;
					
		}
		
		return movie_num;
	}
	
	public void make_all_movie_list() {
		
		int count=1;
		for (String num : movie_num) {
			String each_url = MEGABOX_MOVIE_EACH +num;
			driver.get(each_url);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
			}
			MovieDTO mdto = new MovieDTO();
			
			
			WebElement title = driver.findElement(By.className("title"));   //name
			String title_str = title.getText();
			mdto.setName(title_str);
			
			WebElement poster = driver.findElement(By.className("poster"));   //poster
			String poster_str = poster.findElement(By.tagName("img")).getAttribute("src");
			mdto.setPoster(poster_str);
			
			List<WebElement> story = driver.findElement(By.id("info")).findElements(By.className("txt"));    //story
			if(story.size()!=0) {
				String story_str = story.get(0).getText();
				story_str = story_str.replaceAll("\\r\\n|\\r|\\n", " ");
				mdto.setStory(story_str);
			}
			
			
			List<WebElement> info_lst = driver.findElements(By.className("info"));    //attendance
			WebElement info = info_lst.get(1);
			List<WebElement> info_p_lst = info.findElements(By.tagName("em"));
			String attendance = info_p_lst.get(info_p_lst.size()-1).getText();
			attendance = attendance.replace(",", "");
			int attendance_int = Integer.parseInt(attendance);
			mdto.setAttendance(attendance_int);
			
			WebElement movie_info = driver.findElement(By.className("movie-info"));   //type
			WebElement type = movie_info.findElement(By.tagName("p"));
			String type_str = type.getText().replace("상영타입 : ", "");
			mdto.setType(type_str);
			
			WebElement line = movie_info.findElement(By.className("line"));    //director
			List<WebElement> line_lst = line.findElements(By.tagName("p"));
			
			for(WebElement we:line_lst) {
				String line_txt = we.getText();
				if(line_txt.startsWith("감독 : ")) {
					String director_str = line_txt.replace("감독 : ", "");
					mdto.setDirector(director_str);
				}else if(line_txt.startsWith("장르 : ")) {
					String[] genre_time_split = line_txt.split(" / ");
					String genre_str = genre_time_split[0].replace("장르 : ", "");
					mdto.setGenre(genre_str);
					String time_str = genre_time_split[1];    //time
					time_str = time_str.replace("분", "").trim();
					int time_int = Integer.parseInt(time_str);
					mdto.setTime(time_int);
				}else if(line_txt.startsWith("등급 : ")) {
					String age_str = line_txt.replace("등급 : ", "");
					mdto.setAge(age_str);
				}else if(line_txt.startsWith("개봉일 : ")) {
					String date_str = line_txt.replace("개봉일 : ", "");
					mdto.setDate(date_str);
				}
			}
			
			
			
					
			List<WebElement> for_actor_lst = movie_info.findElements(By.tagName("p"));   //actor
			for(WebElement actor:for_actor_lst) {
				String actor_str = actor.getText();
				if(actor_str.startsWith("출연진 : ")) {
					actor_str = actor_str.replace("출연진 : ", "");
					mdto.setActor(actor_str);
				}
			}
			
			
			
			WebElement like = driver.findElement(By.id("intrstCnt"));      //like
			String like_str = like.getText();
			int like_int=0;
			if(like_str.contains("k")) {
				like_str = like_str.replace("k", "");
				if(like_str.contains(".")) {
					like_str = like_str.replace(".", "");
					like_int = Integer.parseInt(like_str)*100;
				}else {
					like_int = Integer.parseInt(like_str)*1000;	
				}
			}else {
				like_int = Integer.parseInt(like_str);
			}
			mdto.setLike(like_int);
			
			
			WebElement avg = driver.findElement(By.id("mainMegaScore"));     //avg
			String avg_txt = avg.findElement(By.tagName("em")).getText();
			avg_txt = avg_txt.replace(".", "");
			if(!avg_txt.equals("")) {
				int avg_int = Integer.parseInt(avg_txt);
				mdto.setAvg(avg_int);	
			}
					
			
			String trailer_str = youtube_trailer(title_str);     //trailer
			mdto.setTrailer(trailer_str);
			
			movie_list.add(mdto);
			System.out.println(count);
			count++;
			for_sql(mdto);
		}
	}
	
	public String youtube_trailer(String title) {
		String url="";
		driver.get(YOUTUBE);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
		}
		WebElement search = driver.findElement(By.name("search_query"));
		search.sendKeys(title + " 예고편");
		search.sendKeys(Keys.ENTER);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
		}
		WebElement top_vod = driver.findElement(By.className("ytd-video-renderer"));
		WebElement vod = top_vod.findElement(By.tagName("a"));
		url = vod.getAttribute("href");
		return url;
	}
	
	public void insert_db() {
		get_movie_num();
		make_all_movie_list();
		//print_list();
	}
	
	public void print_list() {
		for (MovieDTO tdto : movie_list) {
			System.out.println("name : " + tdto.getName());
			System.out.println("poster : " + tdto.getPoster());
			System.out.println("story : " + tdto.getStory());
			System.out.println("attendance : " + tdto.getAttendance());
			System.out.println("type : " + tdto.getType());
			System.out.println("time : " + tdto.getTime());
			System.out.println("director : " + tdto.getDirector());
			System.out.println("age : " + tdto.getAge());
			System.out.println("date : " + tdto.getDate());
			System.out.println("actor : " + tdto.getActor());
			System.out.println("like : " + tdto.getLike());
			System.out.println("avg : " + tdto.getAvg());
			System.out.println("trailer : " + tdto.getTrailer());
			System.out.println("genre : " + tdto.getGenre());
		}
	}
	
	
	 public void for_sql(MovieDTO mdto) { 
		 
		 MovieDAO mdao = MovieDAO.getInstance(); 
		 mdao.insertMovie(mdto);
	 }
	 
}
