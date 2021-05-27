package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class contactDAO {
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
	
	
	public int upload(contactDTO dto) {
		conn();
		String sql = "insert into contact values(num_board.nextval,?,?, ?, ?, ?, sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getFilename());
			psmt.setString(4, dto.getTitle());
			psmt.setString(5, dto.getContent());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
//	public ArrayList<WebBoardDTO> showBoard() {
//		ArrayList<WebBoardDTO> list = new ArrayList<WebBoardDTO>();
//		conn();
//		String sql = "select * from web_board order by day desc";
//		
//		try {
//			psmt = conn.prepareStatement(sql);
//			rs = psmt.executeQuery();
//			
//			while(rs.next()) {
//				int num = rs.getInt("num");
//				String title = rs.getString("title");
//				String writer = rs.getString("writer");
//				String fileName = rs.getString("fileName");
//				String content = rs.getString("content");
//				String day = rs.getString("day");
//				
//				WebBoardDTO dto = new WebBoardDTO(num, title, writer, fileName, content, day);
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list ;
//	}
//	
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
//	
	
}