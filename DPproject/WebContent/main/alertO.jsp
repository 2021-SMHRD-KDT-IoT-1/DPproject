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
%>

<script type="text/javascript">
alert("고장신고 성공");
</script>

<%response.sendRedirect("checkReport.jsp?num="+num); %>

</body>
</html>