<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��#��</title>
<link href="../css/basic.css" rel="stylesheet" type="text/css">
<link href="../css/member.css" rel="stylesheet" type="text/css">

<!-- 1. �α����� ȸ�� �ּ�, ���̵� ��� -->
</head>
<body class="is-preload">
	<%
		memberDTO dto = (memberDTO)session.getAttribute("dto");
	%>
		
		<section id = "wrapper" class="intro_top">
		
		<div class="logout">
		<%if(dto!=null) {%>
			<p> <%=dto.getId()%>��</p>
			<a href="LogoutServiceCon.do">�α׾ƿ�</a>
		</div>
		<%} %>
		
		<div align="center"><img src="../images/logo.png" width = 200px></div>
		<p class="s_title">PreparEscape
		</p>

		<div class="member">			
			<%if(dto!=null){%>
			<p><%=dto.getAddress() %></p>
			<%}%>
		</div>

		<ul class="banner">
			<%if(dto.getId().equals("master")) { %> 
			
			<li><a href="memberSelect.jsp"> <span></span>
					<p class="s_title">ȸ������</p>
			</a></li>

			<li><a href="reportList.jsp"> <span></span>
					<p class="s_title">����Ű� ���</p>
			</a></li>

			<li><a href="contactBoardMain.jsp"> <span></span>
					<p class="s_title">����/�뿩���� ���</p>
			</a></li>
			<%}else{%>
			<li><a href="realrealTime.jsp"> <span>EscapE</span>
					<p class="s_title">�ǽð� ȭ�� ����</p>
			</a></li>
			<li><a href="ViewCheckList.jsp"> <span>PreparE</span>
					<p class="s_title">������Ȳ</p>
			</a></li>
			<%} %>
		</ul>

<!--Ǫ�Ϳ��� -->
	<footer id="intro_footer">
		<div>
			<!-- <h1 class="logo_bottom sprite">ȭ���� �ΰ�</h1> -->
			<div class="copyright">
				<p> 
				<span>ȭ����</span> 
				<span>Call : 062)000-0000</span> 
				</p>
			</div>
		</div>
	</footer>
	</section>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/introutil.js"></script>
	<script src="assets/js/intro.js"></script>

</body>
</html>
