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
	String contactnum = request.getParameter("num");
%>

<script type="text/javascript">
alert("����/�뿩 ���� ����");
<<<<<<< HEAD
document.location.href="main.jsp?contactnum="+<%=contactnum%>+"#checkContact";
</script>

</body>
</html>