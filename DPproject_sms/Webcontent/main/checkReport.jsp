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

.title {

font-size : 150%;
font-weight : 600;
}


</style>
<body>
	<%
	int reportnum = Integer.parseInt(request.getParameter("reportnum"));
	System.out.println("�Ű�Ȯ�ι�ȣ : "+reportnum);

	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(reportnum);
%>

	<h2>���� �Ű�</h2>
	
	<br>
	<div class="col-12">
		<table>
		
			<tr>
				<td class = title colspan = 2 align = center><%=result.getReport_title() %></td>
			</tr>
			
			<tr>
				<td></td>
				<td align=right><%=result.getReport_name() %>/<%=result.getReport_tel() %></td>
			</tr>
			
			<tr>
			</tr>
			

			<tr class="col-6">
				<td colspan = 2>
				<img src="../img/<%=result.getReport_filename() %>" width = 1031px, height = 700px>
				</td>
			</tr>

			<tr>
				<td colspan = 2>
					<textarea readonly rows="6" class="col-12"><%=result.getReport_content() %> </textarea>
				</td>
			</tr>

			<tr>
				<td colspan = 2  align="right">
				<a href="main.jsp?reportnum=<%=reportnum%>#modifyReport"><button >����</button></a>
				<a href="main.jsp#report"><button>�ۼ�</button></a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>