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
		<table>
			<tr class="col-6">
				<td>�ۼ���</td>
				<td><%=result.getReport_name() %></td>
			</tr>

			<tr class="col-6">
				<td>��ȭ��ȣ</td>
				<td><%=result.getReport_tel() %></td>
			</tr>

			<tr class="col-12">
				<td>����</td>
				<td><%=result.getReport_title() %></td>
			</tr>

			<tr class="col-12">
				<td>����</td>
			</tr>

			<tr class="col-12">
				<td><img src="../img/<%=result.getReport_filename() %>"></td>
			</tr>

			<tr class="col-12">
				<td><textarea readonly rows="10" cols="40"
						style="resize: none;"><%=result.getReport_content() %></textarea></td>
			</tr>

			<tr>
				<td><a href="main.jsp?num=<%=reportnum %>#modifyReport"><button>����</button></a></td>
				<td><a href="main.jsp#report"><button>�ۼ�</button></a></td>
			</tr>
		</table>
</body>
</html>