<%@page import="com.model.reportDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.reportDAO"%>

<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>DaeB</title>
<meta charset="EUC-KR" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>

</head>
<body class="is-preload">
`
<%
	memberDTO dto = (memberDTO)session.getAttribute("dto");	
%>

	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#home" class="icon solid fa-home"><span>Home</span></a> <a
				href="#company" class="icon solid fa-bold"><span>About</span></a> <a
				href="#product" class="icon solid fa-fire"><span>Product</span></a> <a
				href="#report" class="icon solid fa-bullhorn"><span>Report</span></a>
			<a href="#contact" class="icon solid fa-comments-dollar"><span>Contact</span></a>
		</nav>
		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>
					<h1>�ΰ��� ���� ������...</h1>
					<p>�ο������� ���� ������...</p>
				</header>
				<!-- <a href="#work" class="jumplink pic">  -->
					<span class="arrow icon solid fa-chevron-right">
					<span> ���� ������ �����̴ϴ�..</span>
					</span> <img src="images/me.jpg" alt="" />
				<!-- </a> -->
			</article>
			<article id="company" class="panel intro">
				<header>
					<h1>ȭ����</h1>
					<p>ȭ��κ��� ������ ���ϴ� ���</p>
				</header>
				<div>
					<!-- <a> -->
					<!-- class="jumplink pic" -->
					<!-- <span class="arrow icon solid fa-chevron-right"> -->
					<!-- <span>See my work</span> -->
					<!-- </span> -->
					<!-- <img src="images/me.jpg" alt="" /> -->
					<!-- </a> -->
				</div>
			</article>

			<!-- ��ǰ �Ұ� -->
			<article id="product" class="panel">
				<header>
					<h1> ��ǰ �Ұ� </h1>
					<h3> ��#��</h3>
					<p>�� �κ��� �Ƹ� ���� �̹����� ��ü���� ������..</p>
				</header>
				<p>ȭ�� �� ���� �ý���</p>
				<section>
					<div class="row">
						<div class="col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg" alt=""></a> 
								<span> 
								1. ���� ������, ��Ȯ�ϰ�
								<p> ����� ���� ���ÿ� �����Ͽ� �� ������ ��Ȯ�� ȭ�� �˸�</p> 
								</span>
						</div>
					</div>
				</section>
			</article>

<!-- *******************��� ���� �κ� �������!!!!!!!!******************* -->


			<!-- ����Ű�(report) -->
			<!-- ReportServiceCon���� �Էµ� �� �޾Ƽ� DB�� �����ϱ� -->
			<article id="report" class="panel">
				<header>
					<h2>���� �Ű�</h2>
					<p>����Ű��� ���ֽ� �е鲲 ������ ��ǰ�� �帳�ϴ�</p>
				</header>
				<form action="WriteReport.do" method="post" enctype="multipart/form-data">
					<div>
						<div class="row">
							<div class="col-6">
								<input type="text" name="report_name" placeholder="�̸�" />
							</div>
							<div class="col-6">
								<input type="text" name="report_tel" placeholder="��ȭ��ȣ" />
							</div>
							
							<!-- ����÷�� �߰� -->
							<div>
							<input name="report_filename" type="file" style="float: right;">
							</div>
							
							<div class="col-12">
								<input type="text" name="report_title" placeholder="����" />
							</div>
							<div class="col-12">
								<textarea name="report_content" placeholder="����" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div class="col-12" align="right">
								<input type="submit" value="�ۼ�" />
							</div>
						</div>
					</div>
				</form>
			</article>			
							
			<!-- Contact -->
			<!-- ContactServiceCon���� �Էµ� �� �޾Ƽ� DB�� �����ϱ� -->
			<article id="contact" class="panel">
				<header>
					<h2>���š��뿩 ����</h2>
				</header>
				<form action="ContactServiceCon.do" method="post" enctype="multipart/form-data">
					<div>
						<div class="row">
							<div class="col-6">
								<input type="text" name="name" placeholder="�̸�" />
							</div>
							<div class="col-6">
								<input type="text" name="tel" placeholder="��ȭ��ȣ" />
							</div>
							
							<!-- ����÷�� �߰� -->
							<div>
							<input name="fileName" type="file" style="float: right;">
							</div>
							
							<div class="col-12">
								<input type="text" name="title" placeholder="����" />
							</div>
							<div class="col-12">
								<textarea name="content" placeholder="����" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div class="col-12" align="right">
								<input type="submit" value="����" />
							</div>
						</div>
					</div>
				</form>
			</article>

		</div>

		<!-- Footer -->
		<div id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				<%if(dto!=null){ %>
				<li><a href="../intro/member.jsp">Main</a></li>
				<%}else { %>
				<li><a href="../intro/intro.jsp">Main</a></li>
				<%} %>
			</ul>
		</div>
	</div>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>

</body>
</html>