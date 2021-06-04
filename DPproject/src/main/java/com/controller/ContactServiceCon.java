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
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());

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

			//****성공했을 때 메인으로, 실패했을 때 메인의 구매문의 구역으로 돌아가게 수정~!~!~!~!~!~!
			// 경로 쓸 때 파일명 뒤에 아이디 이름도 쓰면 됩니당~!~!~!~!~
			if (cnt > 0) {
				System.out.println("구매/대여 문의 성공");
				
				int check = dao.checkContact(dto);
				moveURL = "contact_alertO.jsp?num="+check;
			} else {
				System.out.println("구매/대여 문의 실패");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		return moveURL;
	}

}
