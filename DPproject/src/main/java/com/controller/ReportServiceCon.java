package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.model.reportDAO;
import com.model.reportDTO;

public class ReportServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String moveURL = null;
		
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
		moveURL = "main.jsp";

		
		return moveURL;
	}

}
