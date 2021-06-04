<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��#��</title>
<link href="../css/basic.css" rel="stylesheet" type="text/css">
<link href="../css/intro.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">

<!-- 1. �α����� ȸ�� �ּ�, ���̵� ��� -->
</head>
<body class="is-preload">
	<%
		memberDTO dto = (memberDTO)session.getAttribute("dto");
	%>
	<section class="intro_top">
		<div class="slogan sprite">�ΰ� ���ΰ�</div>
		<p class="s_title">PreparEscape</p>

		<!-- ���⿡ �ּ� ���!~!~!~!~! -->
		<div>
			<%if(dto!=null){%>
			<span>�ּ� : <%=dto.getAddress() %></span>
			<%}else {%>
			<a href="#">�α����� �ʿ��մϴ�! </a>
			<%} %>
		</div>

		<!-- ���⿡ ���̵� ���!~!~!~!~! -->
		<div>
			<%if(dto!=null){%>
			<span> <%=dto.getId()%> �� ȯ���մϴ�!!
			</span>
			<%}else {%>
			<a href="#">�α����� �ʿ��մϴ�!</a>
			<%} %>

		</div>

		<ul class="banner">
			<%if(dto.getId().equals("master")) { %>
			
			<li><a href="memberSelect.jsp"> <span>����� �ұ��</span>
					<p class="title">ȸ������</p>
					<p class="s_title">����� �ұ��</p>
			</a></li>

			<li><a href="reportList.jsp"> <span>����� �ұ��</span>
					<p class="title">����Ű���</p>
					<p class="s_title">����� �ұ��</p>
			</a></li>

			<li><a href="contactBoardMain.jsp"> <span>����� �ұ��</span>
					<p class="title">����/�뿩���</p>
					<p class="s_title">����� �ұ��</p>
			</a></li>
			
			<%}else {%>
			<li><a href="#"> <span>�������¡</span>
					<p class="title"></p>
					<p class="s_title">�ǽð� ȭ�� ����</p>
			</a></li>
			<li><a href="ViewCheckList.jsp"> <span>PreparEscape</span>
					<p class="title"></p>
					<p class="s_title">������Ȳ</p>
			</a></li>
			<% }%>
		</ul>
	</section>

	<!-- 2. �α׾ƿ� ��ư(��ġ�� ���߿� �����ص� �Ǵϱ� �ƹ����Գ� ���� �����ƿ�!) -->
	<!-- �α׾ƿ� ��ư ����� �α׾ƿ� ��� ����~!~!~!~!~!~!~ -->
	<%if(dto!=null) {%>
	<a href="LogoutServiceCon.do">�α׾ƿ�</a>
	<!-- <a href="#">�������� ����</a>
			<a href="#">ȸ��Ż��</a> -->
	<%} %>

	<!--Ǫ�Ϳ��� -->
	<footer id="intro_footer">
		<div class="container">
			<h1 class="logo_bottom sprite">ȭ���� �ΰ�</h1>
			<div class="copyright">
				<p>
					<br> ��ǥ��ȭ <b>062)000-0000</b>
				</p>
			</div>
		</div>
	</footer>

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
