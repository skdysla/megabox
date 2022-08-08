package com.my.megabox.cinema_c;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CinemaDAO {
	private static CinemaDAO theaterDao = null;

	private static Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private int seq_val = 0;

	public static CinemaDAO getInstance() {
		if (theaterDao == null) {
			theaterDao = new CinemaDAO();
		}
			
		con = getConnection();
		return theaterDao;
	}

	public static Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1522:xe";
		String user = "oracle";
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

	public void insertTheater(CinemaDTO theater) {
		String sql = "insert into" + " cinema(c_num,c_name,c_state,c_city,c_detail)"
				+ " values(cinema_seq.nextval,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, theater.getTheater_name());
			ps.setString(2, theater.getState());
			ps.setString(3, theater.getCity());
			ps.setString(4, theater.getDetail());
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

	public void insertFacility(CinemaDTO theater) {

		String sql = "insert into" + " Facility(f_num,f_facility,c_num)"
				+ " values(facility_seq.nextval,?,?)";
		System.out.println(seq_val);
		String[] facility_list = theater.getFacility().split(" ");
		int seq_num = seq_val;
		try {
			for (int i = 0; i < facility_list.length; i++) {
				ps = con.prepareStatement(sql);
				ps.setString(1, facility_list[i]);
				ps.setInt(2, seq_num);
				ps.executeUpdate();
			}
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
	
	public void insertFloor(CinemaDTO theater) {
		String sql = "insert into" + " Floor(f_num,f_floor,c_num)" + " values(floor_seq.nextval,?,?)";
		con = getConnection();
		int seq_num = select_Dual();
		System.out.println(seq_val);
		String[] floor_list = theater.getFloor().split("\\+++");
		try {
			for (int i = 0; i < floor_list.length; i++) {
				ps = con.prepareStatement(sql);
				ps.setString(1, floor_list[i]);
				ps.setInt(2, seq_num);
				ps.executeUpdate();
			}

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
	
	public int select_Dual() {
		String sql = "select temp_seq.nextval from dual";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				seq_val=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return seq_val;
	}
	

	
}
