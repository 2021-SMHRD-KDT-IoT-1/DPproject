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
<style> 

textarea {
width : 100%;
resize : none;
}

.title {

font-size : 150%;
font-weight : 600;
}


</style>
<body>

	<%
	// get ������� ���� num�޾ƿ���
	  String get_num = request.getParameter("contactnum");
	  System.out.println(get_num);
	// String -> int ����ȯ
	  int contactnum = Integer.parseInt(get_num);
	
	contactDAO dao = new contactDAO();
	contactDTO dto = dao.showOne(contactnum);
	
	System.out.println(dto.getNum());	
	%>
	
	<h1>����/�뿩</h1>
	
	<br>

	<div id="board">
		<table id="list">
			<tr>
				<td class = title align = center><%= dto.getTitle() %></td>
			</tr>
				<td></td>
			<tr>
				<td align = right><%= dto.getName() %>/<%= dto.getTel() %></td>
			</tr>
			
			<tr>
			</tr>
			
			<tr>
			</tr>
			
			<tr>
				<td><img src="../img/<%= dto.getFilename() %>" width=1031px, height =800px></td>
			</tr>
			
			<tr>
				<td><textarea readonly rows="10" cols="40" style="resize:none;">
<%= dto.getContent() %>
				</textarea></td>
			</tr>
				
			<tr align = right>
				<td colspan = 2  align="right">
				<a href="main.jsp?contactnum=<%=contactnum%>#modifyContact"><button>����</button></a>
				<a href="main.jsp#contact"><button>�ۼ�</button></a>
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>