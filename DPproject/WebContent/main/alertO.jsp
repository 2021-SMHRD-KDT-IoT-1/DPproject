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
	//확인 버튼을 클릭하면 checkReport.jsp로 이동
	document.location.href="checkReport.jsp?num="+<%=num%>;
</script>


</body>
</html>