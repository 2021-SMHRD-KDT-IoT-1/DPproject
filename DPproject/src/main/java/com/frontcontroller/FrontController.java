package com.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.controller.ContactServiceCon;
import com.controller.JoinServiceCon;
import com.controller.LoginServiceCon;
import com.controller.LogoutServiceCon;
import com.controller.ModifyContactServiceCon;
import com.controller.ModifyReportServiceCon;
import com.controller.WriteCheckListServiceCon;
import com.controller.WriteReport;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		System.out.println("frontcontroller");
		
		//getURI 어떤 jsp/servlet에서 들어오는지
		String reqURI = request.getRequestURI();
		System.out.println("어디에서 왔는지 : " + reqURI);
		
		//프로젝트 이름 출력
		String Path = request.getContextPath();
		System.out.println("프로젝트 이름은 : " + Path);
		
		//servlet 이름만 출력하기
		//문자열 자르는 함수
		//subString(start) : 스타트 위치부터 끝까지 자르기
		//substring(start, end) : 스타트부터 끝 위치까지 문자열 자르기
		//path길이에 +1하는 이유 /를 빼기 위해
		String resultURI = reqURI.substring(Path.length()+1);
		System.out.println(resultURI);
		
		
		//업캐스팅 하기 위해
		Command command = null;
		
		if(resultURI.equals("intro/JoinServiceCon.do")) {
			command = new JoinServiceCon();	
			
		}else if(resultURI.equals("intro/LoginServiceCon.do")) {
			command = new LoginServiceCon();	
			
		}else if (resultURI.equals("main/ContactServiceCon.do")) {
			command = new ContactServiceCon();
			
		}else if (resultURI.equals("main/WriteReport.do")) {
			command = new WriteReport();
			
		}else if(resultURI.equals("intro/WriteCheckListServiceCon.do")) {
			command = new WriteCheckListServiceCon();
			
		}else if (resultURI.equals("intro/LogoutServiceCon.do")) {
			command = new LogoutServiceCon();
			
		}else if (resultURI.equals("main/ModifyContactServiceCon.do")) {
			command = new ModifyContactServiceCon();
			
		}else if (resultURI.equals("main/ModifyReportServiceCon.do")) {
			command = new ModifyReportServiceCon();
			
		}
		
		
		String moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
	
	}

}
