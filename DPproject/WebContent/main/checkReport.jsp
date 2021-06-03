<%@page import="com.model.reportDTO"%>
<%@page import="com.model.reportDAO"%>
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
	int num = Integer.parseInt(request.getParameter("num"));
	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(num);
%>
<div id="board">
		<table id="list">
			<tr>
				<td>이름</td>
				<td><%=result.getReport_name() %></td>
			</tr>
			
			<tr>
				<td>전화번호</td>
				<td><%=result.getReport_tel() %></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><%=result.getReport_title() %></td>
			</tr>
			
			<tr>
				<td>내용</td>
			</tr>
			
			<tr>
				<td><img src="../img/<%=result.getReport_filename() %>"></td>
			</tr>
			
			<tr>
				<td><%=result.getReport_content() %></td>
			</tr>
			
			<tr>
				<td><a href="reportList.jsp"><button>수정</button></a></td>
				<td><a href="main.jsp#report"><button>작성</button></a></td>
			</tr>
			
		</table>
	</div>
</body>
</html>