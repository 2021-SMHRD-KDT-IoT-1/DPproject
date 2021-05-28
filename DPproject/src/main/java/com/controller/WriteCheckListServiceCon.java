package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.model.checklistDAO;
import com.model.checklistDTO;
import com.model.reportDAO;
import com.model.reportDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteCheckListServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String moveURL = null;
		
		
		String product_id = request.getParameter("product_id");
		String building_id = request.getParameter("building_id");
		String check_date = request.getParameter("check_date");
		String state = request.getParameter("state");
		String battery = request.getParameter("battery");
		String remarks = request.getParameter("remarks");
		
		System.out.println(product_id);
		System.out.println(building_id);
		System.out.println(check_date);
		System.out.println(state);
		System.out.println(battery);
		System.out.println(remarks);
		
		
		checklistDTO dto = new checklistDTO(product_id, building_id, check_date, state, battery, remarks);
		checklistDAO dao = new checklistDAO();
		
		int cnt = dao.upload(dto);
		
		if(cnt > 0) {
			System.out.println("������Ȳ �ۼ� ����!");
		}else {
			System.out.println("������Ȳ �ۼ� ����!");
		}
		
		moveURL = "ViewCheckList.jsp";

		return moveURL;
	
	}

}
