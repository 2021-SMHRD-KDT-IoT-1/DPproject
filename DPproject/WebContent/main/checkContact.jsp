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
	// get ������� ���� num�޾ƿ���
	  String get_num = request.getParameter("num");
	  System.out.println(get_num);
	// String -> int ����ȯ
	  int num = Integer.parseInt(get_num);
	
	contactDAO dao = new contactDAO();
	contactDTO dto = dao.showOne(num);
	
		
	%>

	<div id="board">
		<table id="list">
			<tr>
				<td>����</td>
				<td><%= dto.getTitle() %></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><%= dto.getName() %></td>
			</tr>
			<tr>
				<td colspan="2">����</td>
			</tr>
			<tr>
				<td colspan="2">
				<img src="../img/<%= dto.getFilename() %>">
				<%= dto.getContent() %> 
				</td>
			</tr>
			<tr>
				<td colspan="2"><a href="#"><button>����</button></a></td>
				<td colspan="2"><a href="main.jsp#contact"><button>�ۼ�</button></a></td>
			</tr>
		</table>
	</div>
</body>
</html>