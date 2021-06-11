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
		request.setCharacterEncoding("EUC-KR");
		int a = Integer.parseInt(request.getParameter("num"));

		System.out.println(a);
		PrintWriter out = response.getWriter();

		sensorDAO dao = new sensorDAO();
		SensorDTO resultDTO = dao.sensorview(a);

		int gas = resultDTO.getGas();
		int fire = resultDTO.getFire();
		int temp = resultDTO.getTemp();
		
		System.out.println(resultDTO.getGas());
		System.out.println(resultDTO.getFire());
		System.out.println(resultDTO.getTemp());
		

//		String answer = "{\"geometry\": {\"type\": \"Point\", \"coordinates\": [110, 240]}, \"type\": \"Feature\", \"properties\": {\"gas\": \"" + gas +  "\"" + " + \"fire\" : \"" + fire + "\"" + " + \"fire\" : \"" + temp + "\"" + " }}";
		//String answer = "{\"geometry\": {\"type\": \"Point\", \"coordinates\": [274, 300]}, \"type\": \"Feature\", \"properties\": {\"gas\": \"" + gas + "\", \"fire\" : \"" + fire + "\", \"temp\" : \"" +temp + "\"" + "}, \"geometry\": {\"type\": \"Point\", \"coordinates\": [100, 100]}, \"type\": \"Feature\", \"properties\": {\"gas\": \"" + gas + "\", \"fire\" : \"" + fire + "\", \"temp\" : \"" +temp + "\"" + "}}"; 
		String answer =  "[{\"geometry\": {\"type\": \"Point\", \"coordinates\": [274, 300]}, \"type\": \"Feature\", \"properties\": {\"gas\": \"" + gas + "\", \"fire\" : \"" + fire + "\", \"temp\" : \"" +temp + "\"" + "}}, {\"geometry\": {\"type\": \"Point\", \"coordinates\": [575, 395]}, \"type\": \"Feature\", \"properties\": {\"gas\": \"" + gas + "\", \"fire\" : \"" + fire + "\", \"temp\" : \"" +temp + "\"" + "}}]";
		
		out.print(answer);

		

	}

}




//String b = "{\"geometry\": {\"type\": \"Polygon\", \"coordinates\": [[[40, 180],[40, 340],[180, 340],[180, 180]]]}, \"type\": \"Feature\", \"properties\": {  \"gas\": \"44\"}}";

	  //String b = request.getParameter("a");

          
    
     
   

	
		
		
		
		
	