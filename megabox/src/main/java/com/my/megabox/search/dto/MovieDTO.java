package com.my.megabox.search.dto;

public class MovieDTO {
 
	private Integer m_num;
	private String m_name;
	private String m_poster;
	private String m_story;
	private String m_date;
	private String m_like;
	private double m_avg;

	public Integer getM_num() {
		return m_num;
	}

	public void setM_num(Integer m_num) {
		this.m_num = m_num;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_poster() {
		return m_poster;
	}

	public void setM_poster(String m_poster) {
		this.m_poster = m_poster;
	}

	public String getM_story() {
		return m_story;
	}

	public void setM_story(String m_story) {
		this.m_story = m_story;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getM_like() {
		return m_like;
	}

	public void setM_like(String m_like) {
		this.m_like = m_like;
	}

	public double getM_avg() {
		return m_avg;
	}

	public void setM_avg(double m_avg) {
		this.m_avg = m_avg;
	}

	@Override
	public String toString() {
		return "MovieDTO [m_num=" + m_num + ", m_name=" + m_name + ", m_poster=" + m_poster + ", m_story=" + m_story
				+ ", m_date=" + m_date + ", m_like=" + m_like + ", m_avg=" + m_avg + "]";
	}

}
