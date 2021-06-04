package com.controller;

import java.io.IOException;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;
import com.model.contactDAO;
import com.model.contactDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ContactServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;

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
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());

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

			//****�������� �� ��������, �������� �� ������ ���Ź��� �������� ���ư��� ����~!~!~!~!~!~!
			// ��� �� �� ���ϸ� �ڿ� ���̵� �̸��� ���� �˴ϴ�~!~!~!~!~
			if (cnt > 0) {
				System.out.println("����/�뿩 ���� ����");
				
				int check = dao.checkContact(dto);
				moveURL = "contact_alertO.jsp?num="+check;
			} else {
				System.out.println("����/�뿩 ���� ����");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		return moveURL;
	}

}
