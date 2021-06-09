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
	int reportnum = Integer.parseInt(request.getParameter("reportnum"));
	System.out.println("신고확인번호 : "+reportnum);

	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(reportnum);
%>
		<table>
			<tr class="col-6">
				<td>작성자</td>
				<td><%=result.getReport_name() %></td>
			</tr>

			<tr class="col-6">
				<td>전화번호</td>
				<td><%=result.getReport_tel() %></td>
			</tr>

			<tr class="col-12">
				<td>제목</td>
				<td><%=result.getReport_title() %></td>
			</tr>

			<tr class="col-12">
				<td>내용</td>
			</tr>

			<tr class="col-12">
				<td><img src="../img/<%=result.getReport_filename() %>"></td>
			</tr>

			<tr class="col-12">
				<td><textarea readonly rows="10" cols="40"
						style="resize: none;"><%=result.getReport_content() %></textarea></td>
			</tr>

			<tr>
				<td><a href="main.jsp?num=<%=reportnum %>#modifyReport"><button>수정</button></a></td>
				<td><a href="main.jsp#report"><button>작성</button></a></td>
			</tr>
		</table>
</body>
</html>