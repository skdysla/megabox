package com.my.megabox.movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MovieDAO {
	
	private static MovieDAO movieDao = null;

	private static Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public static MovieDAO getInstance() {
		if (movieDao == null) {
			movieDao = new MovieDAO();
		}
		con = getConnection();
		return movieDao;
	}
	
	public static Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##oracle";
		String password = "oracle";
		con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}


	public void insertMovie(MovieDTO mdto) {
	
		String sql = "insert into" + " movie(m_num,m_name,m_poster,m_story,"
				+ "m_attendance,m_type,m_r_time,m_director,m_age,m_date,m_actor,m_like,m_avg, m_trailer)"
				+ " values(movie_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, mdto.getName());
			ps.setString(2, mdto.getPoster());
			ps.setString(3, mdto.getStory());
			ps.setInt(4, mdto.getAttendance());
			ps.setString(5, mdto.getGenre());
			ps.setInt(6, mdto.getTime());
			ps.setString(7, mdto.getDirector());
			ps.setString(8, mdto.getAge());
			ps.setString(9, mdto.getDate());
			ps.setString(10, mdto.getActor());		
			ps.setInt(11, mdto.getLike());
			ps.setInt(12, mdto.getAvg());
			ps.setString(13, mdto.getTrailer());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	

	
}
