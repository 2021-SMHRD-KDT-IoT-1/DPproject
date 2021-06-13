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
	
	<h1>고장 신고</h1>
	<br>

	<div id = "board">
		<form action="ModifyReportServiceCon.do" method="post">
			<div>
			<div class="row">
				<div class="col-6">
					<input type="text" name="modifyReportName" value="<%=result.getReport_name()%>"/>
				</div>
				<div class="col-6">
					<input type="text" name="modifyReportTel" value="<%=result.getReport_tel()%>" />
				</div>
				<div class="col-12">
					<input type="text" name="modifyReportTitle" value="<%=result.getReport_title() %>">
				</div>
				<div class="col-12">
					<img src="../img/<%=result.getReport_filename() %>" width=800px;>
					<form>
					<textarea name="modifyReportContent" rows="6" style = "resize:none;" onKeyUp="javascript:fnChkByte(this,'1000')">
<%=result.getReport_content() %>
					</textarea>
					<span id="byteInfo">0</span> 1000bytes
					</form>
				</div>
				<div class="col-12" align="right">
					<input type="submit" value="수정"/>
				</div>
				<input type = "hidden" name = "modifyReportNum" value="<%=result.getReport_num()%>">
			</div>
		</div>
	</form>
			
	</div>


</body>
</html>