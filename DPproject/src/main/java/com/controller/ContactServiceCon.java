package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormServiceCon")
public class ContactServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement psmt = null;
		int cnt = 0;
		
		request.setCharacterEncoding("EUC-KR");

		String name = request.getParameter("contact_name");
		String tel = request.getParameter("contact_tel");
		String title = request.getParameter("contact_title");
		String content = request.getParameter("contact_content");


		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			String sql = "insert into contact values=?,?,?,? "; 
			//sql¹® ¼öÁ¤ select -> insert into 
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, tel);
			psmt.setString(3, title);
			psmt.setString(1, content);

			cnt = psmt.executeUpdate();

			

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			try {
				
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
		

	}

}
