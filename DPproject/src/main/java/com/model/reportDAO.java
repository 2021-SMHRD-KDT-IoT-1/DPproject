package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class reportDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;

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
			if (rs != null) {
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
	public int upload(reportDTO dto) {
		conn();
				
		try {
			String sql = "insert into report values(report_num.nextval, ?, ?, ?, ?, ?, sysdate)";

			psmt = conn.prepareCall(sql);
			
			psmt.setString(1, dto.getReport_name());
			psmt.setString(2, dto.getReport_tel());
			psmt.setString(3, dto.getReport_filename());
			psmt.setString(4, dto.getReport_title());
			psmt.setString(5, dto.getReport_content());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return cnt;
	}
	
	public ArrayList<reportDTO> showReport() {
		ArrayList<reportDTO> list = new ArrayList<reportDTO>();
		conn();

		try {
			String sql = "select * from report order by datetime desc";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int report_num = rs.getInt("report_num");
				String report_name = rs.getString("report_name");
				String report_tel = rs.getString("report_tel");
				String report_filename = rs.getString("report_filename");
				String report_title = rs.getString("report_title");
				String report_content = rs.getString("report_content");
				String datetime = rs.getString("datetime");

				reportDTO dto = new reportDTO(report_num, report_name, report_tel, report_filename, report_title, report_content, datetime);

				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;

	}
	public reportDTO showOne(int choice) {
		reportDTO dto = null;
		conn();
		String sql = "select * from report where report_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, choice);
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				int report_num = rs.getInt("report_num");
				String report_name = rs.getString("report_name");
				String report_tel = rs.getString("report_tel");
				String report_filename = rs.getString("report_filename");
				String report_title = rs.getString("report_title");
				String report_content = rs.getString("report_content");
				String datetime = rs.getString("datetime");

				dto = new reportDTO(report_num, report_name, report_tel, report_filename, report_title, report_content, datetime);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return dto;
	}
}
