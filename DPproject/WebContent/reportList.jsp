<%@page import="com.model.reportDTO"%>
<%@page import="java.util.ArrayList"%>
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
    	reportDAO dao=new reportDAO();
        ArrayList<reportDTO> list=dao.showReport();
    %>
	<article>
	<div id="board">
		<table id="list">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>�ۼ���</td>
				<td>�ð�</td>
			</tr>

			<%for(int i=0;i<list.size();i++) {%>
			<tr>
				<td><%=i+1 %></td>
				<td><a
					href="viewReport.jsp?num=<%=list.get(i).getReport_num()%>"> <%=list.get(i).getReport_title()%></a></td>
				<td><%=list.get(i).getReport_name() %></td>
				<td><%=list.get(i).getDatetime() %></td>
			</tr>

			<%} %>

		</table>
		<a href="main.jsp#report"><button>�ڷΰ���</button></a>
	</div>
	</article>
</body>
</html>