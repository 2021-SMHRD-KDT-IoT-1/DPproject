package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class exitDAO {

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
	
	public int exit_update(int a) {
		conn();
		
		try {
			String sql = "update exit set product_id = ?, building_id = ?, route = ? where exit_id = 1";
		
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, 1);
			psmt.setInt(2, 1);
			psmt.setInt(3, a);

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public exitDTO exitview(int sel) {
		exitDTO dto = null;
		conn();
		try {
			String sql = "select * from exit where product_id = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, 1);

			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int exit_id = rs.getInt("exit_id");
				int product_id = rs.getInt("product_id");
				int building_id = rs.getInt("building_id");
				int route = rs.getInt("route");
				
				dto = new exitDTO(exit_id, product_id, building_id, route);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
}
