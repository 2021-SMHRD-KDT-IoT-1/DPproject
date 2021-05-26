package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.reportDAO;
import com.model.reportDTO;

@WebServlet("/ReportServiceCon")
public class ReportServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String report_name = request.getParameter("report_name"); 
		String report_tel = request.getParameter("report_tel");
		String report_title = request.getParameter("report_title");
		String report_content = request.getParameter("report_content");
		
		System.out.println(report_name);
		System.out.println(report_tel);
		System.out.println(report_title);
		System.out.println(report_content);
		
		reportDTO dto = new reportDTO(report_name, report_tel, report_title, report_content);
		reportDAO dao = new reportDAO();
		
		int cnt = dao.upload(dto);
		
		if(cnt > 0) {
			System.out.println("고장신고 성공!");
		}else {
			System.out.println("고장신고 실패!");
		}
		response.sendRedirect("main.jsp");

		
		
		
		
	
	}

}
