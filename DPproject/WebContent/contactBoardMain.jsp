<%@page import="com.model.contactDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.contactDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

		<link rel="stylesheet" href="assetsBoard/css/main.css" />
		<link rel="stylesheet" href="assetsBoard/css/board.css" />

</head>
<body>

	<%
	contactDAO dao = new contactDAO();
	ArrayList<contactDTO> list = dao.showBoard();
	%>
	
	<div id="board">
		<table id="list">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>�ۼ���</td>
				<td>��ȭ��ȣ</td>
				<td>�ð�</td>
			</tr>

			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=i + 1%></td>
				<td><a href="contactViewBoard.jsp?num=<%=list.get(i).getNum()%>">
						<%=list.get(i).getTitle()%>
				</a></td>
				<td><%=list.get(i).getName()%></td>
				<td><%=list.get(i).getTel()%></td>			
				<td><%=list.get(i).getDatetime()%></td>
			</tr>
			<%
			}
			%>

		</table>

		<a href="main.jsp"><button id="writer">Ȩ���ΰ���</button></a> 
		<a href="main.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
	</div>
	<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>