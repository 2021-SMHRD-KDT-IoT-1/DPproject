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

@WebServlet("/SensorServiceCon")
public class SensorServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// String moveURL = null;

		int a = Integer.parseInt(request.getParameter("num"));

		System.out.println(a);
		PrintWriter out = response.getWriter();

		sensorDAO dao = new sensorDAO();
		SensorDTO resultDTO = dao.sensorview(a);

		out.println(resultDTO.getGas());
		out.println(resultDTO.getFire());
		out.println(resultDTO.getTemp());
		System.out.println(resultDTO.getGas());

	}

}
