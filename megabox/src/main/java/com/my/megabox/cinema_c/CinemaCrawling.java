package com.my.megabox.cinema_c;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class CinemaCrawling {

	private WebDriver driver;
	private String WEB_DRIVER_ID;
	private String WEB_DRIVER_PATH;
	private String MEGABOX_THEATER;
	private String MEGABOX_THEATER_EACH;
	private ArrayList<String> theater_num;
	private ArrayList<CinemaDTO> theater_list;

	public CinemaCrawling(String WEB_DRIVER_ID, String WEB_DRIVER_PATH, String MEGABOX_THEATER) {

		this.WEB_DRIVER_ID = WEB_DRIVER_ID;
		this.WEB_DRIVER_PATH = WEB_DRIVER_PATH;
		this.MEGABOX_THEATER = MEGABOX_THEATER;
		this.MEGABOX_THEATER_EACH = "https://www.megabox.co.kr/theater?brchNo=";
		theater_num = new ArrayList<String>();
		theater_list = new ArrayList<CinemaDTO>();

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
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
			}
			CinemaDTO tdto = new CinemaDTO();

			WebElement name_element = driver.findElement(By.className("theater-all")).findElement(By.tagName("p"));
			tdto.setTheater_name(name_element.getText()); // name

			
			List<WebElement> main_element = driver.findElements(By.className("big"));
			if(main_element.size()!=0) {
				tdto.setMain(main_element.get(0).getText()); // main	
			}
			
			
			WebElement theater_facility = driver.findElement(By.className("theater-facility"));
			List<WebElement> facility_list = theater_facility.findElements(By.tagName("p"));
			String facility_str = "";
			for (WebElement facility : facility_list) {
				facility_str += facility.getText() + " ";
			}
			tdto.setFacility(facility_str); // facility

			
			List<WebElement> dot_list = driver.findElements(By.className("dot-list"));
			List<WebElement> floor_list = dot_list.get(1).findElements(By.tagName("li"));
			String floor_str = "";
			for (WebElement each_floor : floor_list) {
				String other = each_floor.getText();
				floor_str += other + "+++";
			}
			tdto.setFloor(floor_str); // floor

			 
			List<WebElement> transport_list = dot_list.get(2).findElements(By.tagName("li"));
			String transport_str = "";
			for (WebElement each_transport : transport_list) {
				String other = each_transport.getText();
				transport_str += other;
			}
			String[] address_list = transport_str.split(" ");
			String detail="";
			for(int i=0;i<address_list.length;i++) {
				if(i==2) {
					tdto.setState(address_list[i]);
				}else if(i==3) {
					tdto.setCity(address_list[i]);
				}else if(i>3) {
					detail+=address_list[i] + " ";
				}
			}
			tdto.setDetail(detail);
			theater_list.add(tdto);
			for_sql(tdto);
		}
	}

	public void print_list() {
		for (CinemaDTO tdto : theater_list) {
			System.out.println("name : " + tdto.getTheater_name());
			System.out.println("main : " + tdto.getMain());
			System.out.println("facility : " + tdto.getFacility());
			System.out.println("floor : " + tdto.getFloor());
			System.out.println("state : " + tdto.getState());
			System.out.println("city : " + tdto.getCity());
			System.out.println("detail : " + tdto.getDetail());
		}
	}
	
	public void insert_db() {
		get_theater_num();
		make_all_theater_list();
	}
	
	 public void for_sql(CinemaDTO tdto) { 
		 CinemaDAO tdao =CinemaDAO.getInstance(); 
		 tdao.insertTheater(tdto);
		 tdao.insertFloor(tdto);
		 tdao.insertFacility(tdto); }
}
