<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>대#ㅣ</title>
<link href="../css/basic.css" rel="stylesheet" type="text/css">
<link href="../css/intro.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">

<!-- 1. 로그인한 회원 주소, 아이디 출력 -->
</head>
<body class="is-preload">
	<%
		memberDTO dto = (memberDTO)session.getAttribute("dto");
	%>
	<section class="intro_top">
		<div class="slogan sprite">로고나 슬로건</div>
		<p class="s_title">PreparEscape</p>

		<!-- 여기에 주소 출력!~!~!~!~! -->
		<div>
			<%if(dto!=null){%>
			<span>주소 : <%=dto.getAddress() %></span>
			<%}else {%>
			<a href="#">로그인이 필요합니다! </a>
			<%} %>
		</div>

		<!-- 여기에 아이디 출력!~!~!~!~! -->
		<div>
			<%if(dto!=null){%>
			<span> <%=dto.getId()%> 님 환영합니다!!
			</span>
			<%}else {%>
			<a href="#">로그인이 필요합니다!</a>
			<%} %>

		</div>

		<ul class="banner">
			<%if(dto.getId().equals("master")) { %>
			
			<li><a href="memberSelect.jsp"> <span>뭐라고 할까요</span>
					<p class="title">회원관리</p>
					<p class="s_title">뭐라고 할까요</p>
			</a></li>

			<li><a href="reportList.jsp"> <span>뭐라고 할까요</span>
					<p class="title">고장신고목록</p>
					<p class="s_title">뭐라고 할까요</p>
			</a></li>

			<li><a href="contactBoardMain.jsp"> <span>뭐라고 할까요</span>
					<p class="title">구매/대여목록</p>
					<p class="s_title">뭐라고 할까요</p>
			</a></li>
			
			<%}else {%>
			<li><a href="#"> <span>뭐라고하징</span>
					<p class="title"></p>
					<p class="s_title">실시간 화재 감시</p>
			</a></li>
			<li><a href="ViewCheckList.jsp"> <span>PreparEscape</span>
					<p class="title"></p>
					<p class="s_title">점검현황</p>
			</a></li>
			<% }%>
		</ul>
	</section>

	<!-- 2. 로그아웃 버튼(위치는 나중에 수정해도 되니까 아무렇게나 만들어도 괜찮아요!) -->
	<!-- 로그아웃 버튼 만들고 로그아웃 기능 구현~!~!~!~!~!~!~ -->
	<%if(dto!=null) {%>
	<a href="LogoutServiceCon.do">로그아웃</a>
	<!-- <a href="#">개인정보 수정</a>
			<a href="#">회원탈퇴</a> -->
	<%} %>

	<!--푸터영역 -->
	<footer id="intro_footer">
		<div class="container">
			<h1 class="logo_bottom sprite">화생방 로고</h1>
			<div class="copyright">
				<p>
					<br> 대표전화 <b>062)000-0000</b>
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
