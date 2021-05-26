package com.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.controller.JoinServiceCon;

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
		
		if(resultURI.equals("JoinServiceCon.do")) {
			command = new JoinServiceCon();	
		}
		
		String moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
	
	}

}
