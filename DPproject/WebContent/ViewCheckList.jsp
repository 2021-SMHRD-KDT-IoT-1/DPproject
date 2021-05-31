<%@page import="com.model.memberDTO"%>
<%@page import="com.model.memberDAO"%>
<%@page import="com.model.productDAO"%>
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
		memberDTO dto = (memberDTO)session.getAttribute("dto");
		productDAO productDao = new productDAO();
		String building_id = productDao.buildingId(dto.getId());
		
	
		checklistDAO dao = new checklistDAO();
		ArrayList<checklistDTO> list = dao.showBoard(building_id);
		
	%>
	<div id="board">
		<table id="list" border="1">
			<tr>
				<td>번호</td>
				<td>제품번호</td>
				<td>점검날짜</td>
				<td>상태구분</td>
				<td>배터리교체일</td>
				<td>특이사항</td>
			</tr>

			<%for(int i = 0; i < list.size(); i++){ %>			
			<tr>
				<td><%= i+1 %></td>
				<td><%= list.get(i).getProduct_id()%></td>
				<td><%= list.get(i).getCheck_date() %></td>
				<td><%= list.get(i).getState() %></td>
				<td><%= list.get(i).getBattery() %></td>
				<td><%= list.get(i).getRemarks() %></td>
			</tr>
			<%} %>
			

		</table>

		<a href="member.jsp"><button id="writer">홈으로가기</button></a>
		<a href="WriteCheckList.jsp"><button id="writer">작성하러가기</button></a>
	</div>
</body>
</html>