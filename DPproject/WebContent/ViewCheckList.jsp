<%@page import="com.model.checklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.checklistDAO"%>
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
	
		checklistDAO dao = new checklistDAO();
		ArrayList<checklistDTO> list = dao.showBoard("building_id");
		
		
	%>
	<div id="board">
		<table id="list">
			<tr>
				<td>��ȣ</td>
				<td>��ǰ��ȣ</td>
				<td>�ǹ����̵�</td>
				<td>���˳�¥</td>
				<td>���±���</td>
				<td>���͸���ü��</td>
				<td>Ư�̻���</td>
			</tr>

			<% for (int i = 0; i < list.size(); i++) { %>
			
			<tr>
				<td><%=i + 1%></td>
				<td><a href="WriteCheckList.jsp?num=<%=list.get(i).getCheck_num()%>">
						<%=list.get(i).getProduct_id()%>
				</a></td>
				<td><%=list.get(i).getBuilding_id()%></td>
				<td><%=list.get(i).getCheck_date()%></td>
				<td><%=list.get(i).getState()%></td>
				<td><%=list.get(i).getBattery()%></td>
				<td><%=list.get(i).getRemarks()%></td>
			</tr>
			<% } %>

		</table>

		<a href="member.jsp"><button id="writer">Ȩ���ΰ���</button></a>
		<a href="WriteCheckList.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
	</div>
</body>
</html>