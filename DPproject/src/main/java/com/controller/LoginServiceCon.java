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

		//**�α��� �����ÿ� member.jsp�� �̵�
		//** ���нÿ��� intro.jsp#menu�� �̵�~!
		
		if (resultDTO != null) {
			System.out.println("�α��� ����");

			HttpSession session = request.getSession();
			session.setAttribute("dto", resultDTO);
			
			moveURL = "member.jsp";
		} else {
			System.out.println("�α��� ����");
			
			moveURL = "intro.jsp#menu";
		}

		
		return moveURL;
	}
}
