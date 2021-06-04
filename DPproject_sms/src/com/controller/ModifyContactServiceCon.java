package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.model.contactDAO;
import com.model.contactDTO;

public class ModifyContactServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		String ModifyName = request.getParameter("ModifyName");
		String ModifyTel = request.getParameter("ModifyTel");
		String ModifyTitle = request.getParameter("ModifyTitle");
		String ModifyContent = request.getParameter("ModifyContent");
		int num = Integer.parseInt(request.getParameter("ModifyNum"));
		
		System.out.println(ModifyName);
		System.out.println(ModifyTel);
		System.out.println(ModifyTitle);
		System.out.println(ModifyContent);
		System.out.println(num);
		
		contactDTO dto = new contactDTO(num, ModifyName, ModifyTel, ModifyTitle, ModifyContent);
		contactDAO dao = new contactDAO();
		
		int cnt = dao.update(dto);
		
		if(cnt > 0) {
			System.out.println("게시글 수정 성공");
			moveURL="main.jsp#contact";
		}else {
			System.out.println("게시글 수정 실패");
			moveURL="modifyContact.jsp";
		}
		
		return moveURL;
	}

}
