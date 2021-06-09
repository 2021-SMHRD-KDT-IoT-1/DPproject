package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.model.reportDAO;
import com.model.reportDTO;

public class ModifyReportServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		String modifyReportName = request.getParameter("modifyReportName");
		String modifyReportTel = request.getParameter("modifyReportTel");
		String modifyReportTitle = request.getParameter("modifyReportTitle");
		String modifyReportContent = request.getParameter("modifyReportContent");
		int num = Integer.parseInt(request.getParameter("modifyReportNum"));
		
		System.out.println(modifyReportName);
		System.out.println(modifyReportTel);
		System.out.println(modifyReportTitle);
		System.out.println(modifyReportContent);
		System.out.println(num);
		
		reportDTO dto = new reportDTO(num, modifyReportName, modifyReportTel, modifyReportTitle, modifyReportContent);
		reportDAO dao = new reportDAO();
		
		int cnt = dao.update(dto);
		
		if(cnt > 0) {
			System.out.println("게시글 수정 성공");
			moveURL="main.jsp#report";
		}else {
			System.out.println("게시글 수정 실패");
			moveURL="main.jsp?reportnum="+num+"#modifyReport";
		}
		
		return moveURL;
	}

}
