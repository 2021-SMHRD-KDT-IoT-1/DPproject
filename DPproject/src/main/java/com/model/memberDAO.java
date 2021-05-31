package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class memberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	memberDTO dto = null;
	ArrayList<memberDTO> list = null;

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

	public int join(memberDTO dto) {
		conn();
		try {

			String sql = "insert into member values(?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getAddress());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public memberDTO login(memberDTO InputDto) {
		conn();
		try {

			String sql = "select * from member where id=? and pw=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, InputDto.getId());
			psmt.setString(2, InputDto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				String address = rs.getString(5);

				dto = new memberDTO(id, pw, name, tel, address);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;

	}
	public ArrayList<memberDTO> select() {

		list = new ArrayList<memberDTO>();
		conn();

		try {
			String sql = "select * from member";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			while (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				String address = rs.getString(5);

				dto = new memberDTO(id, pw, name, tel, address);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			close();
		}
		return list;

	}

}
