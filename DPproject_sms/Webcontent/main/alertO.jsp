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
	alert("����Ű� ����");
	//Ȯ�� ��ư�� Ŭ���ϸ� checkReport.jsp�� �̵�
	document.location.href="checkReport.jsp?num="+<%=num%>;
</script>


</body>
</html>