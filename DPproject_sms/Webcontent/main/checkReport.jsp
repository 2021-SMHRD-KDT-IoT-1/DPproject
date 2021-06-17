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
	<div id = "board">
	<form>
			<div>
			<div class="row">
				<div class="col-6">
					<input type="text" readonly name="modifyReportName" value="<%=result.getReport_name()%>"/>
				</div>
				<div class="col-6">
					<input type="text" readonly name="modifyReportTel" value="<%=result.getReport_tel()%>" />
				</div>
				<div class="col-12">
					<input type="text" readonly name="modifyReportTitle" value="<%=result.getReport_title() %>">
				</div>
				<div class="col-12">
					<img src="../img/<%=result.getReport_filename() %>" width=800px;>
					<form>
					<textarea name="modifyReportContent" readonly rows="6" style = "resize:none;" onKeyUp="javascript:fnChkByte(this,'1000')">
<%=result.getReport_content() %>
					</textarea>
					<span id="byteInfo">0</span> 1000bytes
					</form>
				</div>
			</div>
		</div>
		</form>
				<div class="col-12" align="right">
				<a href="main.jsp?reportnum=<%=reportnum%>#modifyReport"><button id="button">수정</button></a>
				<a href="main.jsp#report"><button id="button">작성</button></a>
				</div>
	</div>
</body>
</html>