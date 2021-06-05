package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.sensorDAO;

@WebServlet("/sensor_test")
public class sensor_test extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a = request.getParameter("a");
		
		sensorDAO sen = new sensorDAO();
		int cnt = sen.sensor_insert(a);
		
		if(cnt>0) {
			System.out.println("센서값 저장 성공");
			response.sendRedirect("sensor_test.jsp");
		}else {
			System.out.println("센서값 저장 실패");
		}
	}

}
