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
	System.out.println("�Ű�Ȯ�ι�ȣ : "+reportnum);

	reportDAO dao = new reportDAO();

	reportDTO result = dao.showOne(reportnum);
%>
	<div class="col-12">
		<table>
			<tr>
				<td>�ۼ���</td>
				<td><%=result.getReport_name() %></td>
			</tr>

			<tr>
				<td>��ȭ��ȣ</td>
				<td><%=result.getReport_tel() %></td>
			</tr>

			<tr>
				<td>����</td>
				<td><%=result.getReport_title() %></td>
			</tr>

			<tr>
				<td colspan = 2>
				<img src="../img/<%=result.getReport_filename() %>">
				</td>
			</tr>

			<tr>
				<td colspan = 2>
					<textarea readonly rows="6" style="resize: none;" class="col-12">
					<%=result.getReport_content() %>
					</textarea>
				</td>
			</tr>

			<tr>
				<td colspan = 2>
				<a href="main.jsp?reportnum=<%=reportnum%>#modifyReport"><button>����</button></a>
				<a href="main.jsp#report"><button>�ۼ�</button></a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>