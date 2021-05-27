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
		   // title, writer, content에 대한 인코딩
	      request.setCharacterEncoding("EUC-KR");

	      // 이미지의 저장 경로 지정(서버 내 폴더)
	      // getServletContext : 서블릿의 정보
	      // getRealPath : 실제 경로
	      String savePath = request.getServletContext().getRealPath("img");

	      System.out.println(savePath);

	      // 이미지 크기 지정
	      int maxSize = 5 * 1024 * 1024;

	      // 사진 이름 인코딩 설정
	      String encoding = "EUC-KR";
	      
	      // cos.jar 파일안에 있는 클래스 사용
	      // 요청, 저장경로, 사이즈 최대 크기, 인코딩 방식, DefaultFileRenamePolicy : 이미지파일중복제거
	      MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	      
	      // 데이터베이스에 저장하기위해서 fileName, title, content 등의 정보 가져오기
	      String name = multi.getParameter("name");
	      String tel = multi.getParameter("tel");
	      // 이미지태그에 작성 시 16진수로 나타내줘야해서 인코딩을 진행
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
	         System.out.println("파일 업로드 성공");
	      }else {
	         System.out.println("파일 업로드 실패");
	      }
	      
	      response.sendRedirect("main.jsp");
	      
	      
	      

	   }

}




