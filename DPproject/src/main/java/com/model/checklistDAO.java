package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class checklistDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}	
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<checklistDTO> showBoard(String building_id) {
		ArrayList<checklistDTO> list = new ArrayList<checklistDTO>();
		conn();
		String sql = "select * from checklist where building_id = ? order by product_id, check_date desc";
		
		
		
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, building_id);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String num = rs.getString("check_num");
				String product_id = rs.getString("product_id");
				String result_building_id = rs.getString("building_id");
				String check_date = rs.getString("check_date");
				String state = rs.getString("state");
				String battery = rs.getString("battery");
				String remarks = rs.getString("remarks");
				
				checklistDTO dto = new checklistDTO(num, product_id, building_id, check_date, state, battery, remarks);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list ;
	}

	
	
	public int upload(checklistDTO dto) {
		conn();
		String sql = "insert into checklist values(check_num.nextval, ?, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getProduct_id());
			psmt.setString(2, dto.getBuilding_id());
			psmt.setString(3, dto.getCheck_date());
			psmt.setString(4, dto.getState());
			psmt.setString(5, dto.getBattery());
			psmt.setString(6, dto.getRemarks());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
//	
//	public WebBoardDTO showOne(int choice) {
//		WebBoardDTO dto = null;
//		conn();
//		
//		String sql = "select * from web_board where num = ?";
//		
//		try {
//			psmt = conn.prepareStatement(sql);
//			psmt.setInt(1, choice);
//			rs = psmt.executeQuery();
//			if(rs.next()) {
//				int num = rs.getInt("num");
//				String title = rs.getString("title");
//				String writer = rs.getString("writer");
//				String fileName = rs.getString("fileName");
//				String content = rs.getString("content");
//				String day = rs.getString("day");
//				dto = new WebBoardDTO(num, title, writer, fileName, content, day);
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return dto;
//	}
	
}
