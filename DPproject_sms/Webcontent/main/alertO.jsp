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
	//window.location.search
/* 	const url = new URL("http://localhost:8096/DPproject_sms/main/alertO.jsp");
	const urlParams = url.searchParams;
	// URLSearchParams.get()
	var reportnum = urlParams.get('num'); */
	
	document.location.href="main.jsp#checkReport?reportnum="<%=num%>;
</script>


</body>
</html>