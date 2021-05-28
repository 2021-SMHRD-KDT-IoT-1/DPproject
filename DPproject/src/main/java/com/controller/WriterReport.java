package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.reportDAO;
import com.model.reportDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/WriterReport")
public class WriterReport extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String savePath = request.getServletContext().getRealPath("img");

		System.out.println(savePath);

		int maxSize = 5 * 1024 * 1024;

		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String report_name = multi.getParameter("report_name");
		String report_tel = multi.getParameter("report_tel");
		String report_title = multi.getParameter("report_title");
		String report_filename = URLEncoder.encode(multi.getFilesystemName("report_filename"), "EUC-KR");
		String report_content = multi.getParameter("report_content");

		System.out.println(report_name);
		System.out.println(report_tel);
		System.out.println(report_title);
		System.out.println(report_filename);
		System.out.println(report_content);

		reportDTO dto = new reportDTO(report_name, report_tel, report_title, report_filename, report_content);
		reportDAO dao = new reportDAO();
		int cnt = dao.upload(dto);

		if (cnt > 0) {
			System.out.println("���� ���ε� ����");

		} else {
			System.out.println("���� ���ε� ����");
		}
		
		response.sendRedirect("main.jsp");
	}

}
