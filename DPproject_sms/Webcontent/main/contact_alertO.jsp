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
alert("구매/대여 문의 성공");
<<<<<<< HEAD
document.location.href="main.jsp?contactnum="+<%=contactnum%>+"#checkContact";
=======
document.location.href="main.jsp?contactnum="+<%=num%>+"#checkContact";
>>>>>>> branch 'mjh' of https://github.com/2021-SMHRD-KDT-IoT-1/DPproject.git
</script>

</body>
</html>