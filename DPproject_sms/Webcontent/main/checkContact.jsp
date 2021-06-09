<%@page import="com.model.contactDTO"%>
<%@page import="com.model.contactDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	// get 방식으로 보낸 num받아오기
	  String get_num = request.getParameter("contactnum");
	  System.out.println(get_num);
	// String -> int 형변환
	  int contactnum = Integer.parseInt(get_num);
	
	contactDAO dao = new contactDAO();
	contactDTO dto = dao.showOne(contactnum);
	
	System.out.println(dto.getNum());	
	%>

	<div id="board">
		<table id="list">
			<tr>
				<td>작성자</td>
				<td><%= dto.getName() %></td>
			</tr>
			
			<tr>
				<td>전화번호</td>
				<td><%= dto.getTel() %></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><%= dto.getTitle() %></td>
			</tr>
			
			<tr>
				<td>내용</td>
			</tr>
			
			<tr>
				<td><img src="../img/<%= dto.getFilename() %>"></td>
			</tr>
			
			<tr>
				<td><textarea readonly rows="10" cols="40" style="resize:none;"><%= dto.getContent() %> </textarea></td>
			</tr>
				
			<tr>
				<td><a href="main.jsp?contactnum=<%=contactnum%>#modifyContact"><button>수정</button></a></td>
				<td><a href="main.jsp#contact"><button>작성</button></a></td>
			</tr>
			
		</table>
	</div>
</body>
</html>