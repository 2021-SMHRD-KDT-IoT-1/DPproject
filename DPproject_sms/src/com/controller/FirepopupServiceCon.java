package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SensorDTO;
import com.model.sensorDAO;

@WebServlet("/FirepopupServiceCon")
public class FirepopupServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int a = Integer.parseInt(request.getParameter("num"));

		System.out.println(a);
		PrintWriter out = response.getWriter();

		sensorDAO dao = new sensorDAO();
		SensorDTO resultDTO = dao.sensorview(a);

		out.println(""+ resultDTO.getFire() + "");
		
	
		
	}

}
