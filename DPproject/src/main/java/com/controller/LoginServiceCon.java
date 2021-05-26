package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.memberDAO;
import com.model.memberDTO;

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		// rok , 123
		
//		memberDTO dto = new memberDTO("1","2","3","4");
//		memberDAO dao = new memberDAO();
//		memberDTO resultDTO = dao.login(dto);
		
//		if(resultDTO != null) {
//			System.out.println("로그인 성공");
//			
//			HttpSession session = request.getSession();
//			session.setAttribute("dto", resultDTO);
//		}else {
//			System.out.println("로그인 실패");
//			
//			HttpSession session = request.getSession();
//			session.removeAttribute("dto");
//		}
//		
//		response.sendRedirect("main.jsp");
//			
//	}
	}
}

