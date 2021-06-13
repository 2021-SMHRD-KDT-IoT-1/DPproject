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
<style> 

textarea {
width : 100%;
resize : none;
}

</style>
<body>
	<%
	int reportnum = Integer.parseInt(request.getParameter("reportnum"));
	System.out.println("신고확인번호 : "+reportnum);

	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(reportnum);
%>

	<h2>고장 신고</h2>
	
	<br>
	<div>
		<table>
		
			<tr>
				<td class = title> <%=result.getReport_title() %></td>
				<td align=right><%=result.getReport_name() %> / <%=result.getReport_tel() %></td>
			</tr>
			<tr>

			</tr>

			<tr>
				<td colspan = 2>
				<img src="../img/<%=result.getReport_filename() %>" width = 800px>
				</td>
			</tr>

			<tr>
				<td colspan = 2>
					<textarea readonly rows="6"><%=result.getReport_content() %> </textarea>
				</td>
			</tr>

			<tr>
				<td colspan = 2 align="right">
				<a href="main.jsp?reportnum=<%=reportnum%>#modifyReport"><button >수정</button></a>
				<a href="main.jsp#report"><button>작성</button></a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>