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
		
		//getURI � jsp/servlet���� ��������
		String reqURI = request.getRequestURI();
		System.out.println("��𿡼� �Դ��� : " + reqURI);
		
		//������Ʈ �̸� ���
		String Path = request.getContextPath();
		System.out.println("������Ʈ �̸��� : " + Path);
		
		//servlet �̸��� ����ϱ�
		//���ڿ� �ڸ��� �Լ�
		//subString(start) : ��ŸƮ ��ġ���� ������ �ڸ���
		//substring(start, end) : ��ŸƮ���� �� ��ġ���� ���ڿ� �ڸ���
		//path���̿� +1�ϴ� ���� /�� ���� ����
		String resultURI = reqURI.substring(Path.length()+1);
		System.out.println(resultURI);
		
		
		//��ĳ���� �ϱ� ����
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
