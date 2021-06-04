package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.Command;
import com.model.memberDAO;
import com.model.memberDTO;

public class LoginServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// rok , 123

		memberDTO dto = new memberDTO(id, pw);
		memberDAO dao = new memberDAO();
		memberDTO resultDTO = dao.login(dto);

		//**로그인 성공시에 member.jsp로 이동
		//** 실패시에는 intro.jsp#menu로 이동~!
		
		if (resultDTO != null) {
			System.out.println("로그인 성공");

			HttpSession session = request.getSession();
			session.setAttribute("dto", resultDTO);
			
			moveURL = "member.jsp";
		} else {
			System.out.println("로그인 실패");
			
			moveURL = "intro.jsp#menu";
		}

		
		return moveURL;
	}
}
