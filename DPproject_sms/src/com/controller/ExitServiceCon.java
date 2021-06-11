package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.exitDAO;

@WebServlet("/ExitServiceCon")
public class ExitServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a = Integer.parseInt(request.getParameter("exitnum"));

		exitDAO dao = new exitDAO();
		int cnt = dao.exit_update(a);
		
		if(cnt>0) {
			System.out.println("대피로 번호 업뎃 성공");
		
		}else {
			System.out.println("대피로 번호 업뎃 실패");
		}
			
		response.sendRedirect("sensor_test.jsp");
	}

}
