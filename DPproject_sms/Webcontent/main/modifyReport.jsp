<%@page import="com.model.reportDTO"%>
<%@page import="com.model.reportDAO"%>
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
	int reportnum = Integer.parseInt(request.getParameter("reportnum"));
	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(reportnum);
	
	%>

	<div id = "board">
		<form action="ModifyReportServiceCon.do" method="post">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" name="modifyReportTitle" value="<%=result.getReport_title() %>"></td>
					
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="modifyReportName" value="<%=result.getReport_name() %>"></td>
					
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="modifyReportTel" value="<%=result.getReport_tel() %>"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2">
						<img src="../img/<%=result.getReport_filename() %>" width = 1031px, height = 700px>
						<textarea name="modifyReportContent" rows="6" style = "resize:none;" ><%=result.getReport_content() %></textarea>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align="right"><input type="submit" value="수정"></td>
				</tr>
			</table>
			<input type = "hidden" name = "modifyReportNum" value="<%=result.getReport_num()%>">
		</form>
	</div>


</body>
</html>