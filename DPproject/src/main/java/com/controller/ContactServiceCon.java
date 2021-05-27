package com.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.contactDAO;
import com.model.contactDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/ContactServiceCon")
public class ContactServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		   // title, writer, content�� ���� ���ڵ�
	      request.setCharacterEncoding("EUC-KR");

	      // �̹����� ���� ��� ����(���� �� ����)
	      // getServletContext : ������ ����
	      // getRealPath : ���� ���
	      String savePath = request.getServletContext().getRealPath("img");

	      System.out.println(savePath);

	      // �̹��� ũ�� ����
	      int maxSize = 5 * 1024 * 1024;

	      // ���� �̸� ���ڵ� ����
	      String encoding = "EUC-KR";
	      
	      // cos.jar ���Ͼȿ� �ִ� Ŭ���� ���
	      // ��û, ������, ������ �ִ� ũ��, ���ڵ� ���, DefaultFileRenamePolicy : �̹��������ߺ�����
	      MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	      
	      // �����ͺ��̽��� �����ϱ����ؼ� fileName, title, content ���� ���� ��������
	      String name = multi.getParameter("name");
	      String tel = multi.getParameter("tel");
	      // �̹����±׿� �ۼ� �� 16������ ��Ÿ������ؼ� ���ڵ��� ����
	      String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
	      String title = multi.getParameter("title");
	      String content = multi.getParameter("content");
	      
	      System.out.println(name);
	      System.out.println(tel);
	      System.out.println(fileName);
	      System.out.println(title);
	      System.out.println(content);
	      
	      contactDTO dto = new contactDTO(name, tel, fileName, title, content);
	      contactDAO dao = new contactDAO();
	      
	      int cnt = dao.upload(dto);
	      
	      if(cnt >0) {
	         System.out.println("���� ���ε� ����");
	      }else {
	         System.out.println("���� ���ε� ����");
	      }
	      
	      response.sendRedirect("main.jsp");
	      
	      
	      

	   }

}




