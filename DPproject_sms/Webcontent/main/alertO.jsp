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
	String num = request.getParameter("num");
%>	

<script type="text/javascript">
	alert("고장신고 성공");
	document.location.href="main.jsp?reportnum="+<%=num%>+"#checkReport";
</script>


</body>
</html>