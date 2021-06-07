package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class sensorDAO {
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

	public int sensor_update(String a) {
		conn();
		String[] arr = a.split(":");

		try {
			String sql = "update sensor set gas = ?, fire = ?, temp = ? where sensor_num = 1";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, arr[0]);
			psmt.setString(2, arr[1]);
			psmt.setString(3, arr[2]);

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public SensorDTO sensorview(int sel) {
		SensorDTO dto = null;
		conn();
		try {
			String sql = "select * from sensor where sensor_num = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, sel);

			rs = psmt.executeQuery();

			if (rs.next()) {
				int sensor_num = rs.getInt("sensor_num");
				int gas = rs.getInt("gas");
				int fire = rs.getInt("fire");
				int temp = rs.getInt("temp");

				dto = new SensorDTO(sensor_num, gas, fire, temp);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

}
