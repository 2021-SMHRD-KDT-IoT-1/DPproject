package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
		String sql = "insert into contact values(contact_num.nextval,?,?, ?, ?, ?, sysdate)";
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
	
	public ArrayList<contactDTO> showBoard() {
		ArrayList<contactDTO> list = new ArrayList<contactDTO>();
		conn();
		String sql = "select * from contact order by datetime desc";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("contact_num");
				String name = rs.getString("contact_name");
				String tel = rs.getString("contact_tel");
				String fileName = rs.getString("contact_filename");
				String title = rs.getString("contact_title");
				String content = rs.getString("contact_content");
				String datetime = rs.getString("datetime");
							
				contactDTO dto = new contactDTO(num, name, tel, fileName, title, content, datetime);
				list.add(dto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list ;
	}
	
	
	public contactDTO showOne(int choice) {
		contactDTO dto = null;
		conn();
		
		String sql = "select * from contact where contact_num = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, choice);
			rs = psmt.executeQuery();
			if(rs.next()) {
				int num = rs.getInt("contact_num");
				String name = rs.getString("contact_name");
				String tel = rs.getString("contact_tel");
				String fileName = rs.getString("contact_filename");
				String title = rs.getString("contact_title");
				String content = rs.getString("contact_content");
				String datetime = rs.getString("datetime");
							
				dto = new contactDTO(num, name, tel, fileName, title, content, datetime);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	public int checkContact(contactDTO dto) {
		int check = 0;
		
		conn();
		
		try {
			String sql = "select contact_num from contact where contact_tel=? and contact_filename=? and contact_title=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTel());
			psmt.setString(2, dto.getFilename());
			psmt.setString(3, dto.getTitle());
			
			rs = psmt.executeQuery(); 
			
			if(rs.next()) {
				check = rs.getInt("contact_num");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
	}
	

	public int update(contactDTO dto) {
		conn();

		String sql = "update contact set contact_name = ?, contact_tel = ?, contact_title = ?, contact_content = ? where contact_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getTitle());
			psmt.setString(4, dto.getContent());
			psmt.setInt(5, dto.getNum());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}