<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<meta name="description" content="����">
<meta name="keywords" content="����">
<meta property="og:type" content="website">
<meta property="og:site_name" content="����">
<meta property="og:title" content="����">
<meta property="og:description" content="����">
<title>����</title>
<link href="css/basic.css" rel="stylesheet" type="text/css">
<!-- <link href="css/all.css" rel="stylesheet" type="text/css"> -->
<link href="css/intro.css" rel="stylesheet" type="text/css">


</head>
<body>
	<section class="intro_top">
		<div class="slogan sprite">�ΰ� ���ΰ�</div>
		<p class="s_title">PreparEscape</p>
		<ul class="banner">
			<li><a href="#menu"> <span>�������¡</span>
					<p class="title">ȸ��������</p>
					<p class="s_title">�ǽð� ȭ�� ����</p>
			</a></li>
			<li><a href="main.jsp"> <span>PreparEscape</span>
					<p class="title">��#��</p>
					<p class="s_title">Ȩ������</p>
			</a></li>
		</ul>
	</section>

	<!--�α��� �޴�********  -->	
	<nav id="menu">
		<ul class="links">
			<li><h5>�α���</h5></li>
			<form action="LoginServiceCon.do" method="post">
				<li><input type="text" placeholder="ID" name="id"></li>
				<li><input type="password" placeholder="PASSWORD" name="pw"></li>
				<li><input type="submit" value="LOGIN" class="button fit"></li>
			</form>
		</ul>
	</nav>
	
	<!-- ******ȸ������******** -->
	<nav id = "joinmenu">
		<ul class="actions vertical">
			<li><h5>ȸ������</h5></li>
			<form action="JoinServiceCon.do" method="post">
				<li><input type="text" placeholder="ID�� �Է��ϼ���" name="id"></li>
				<li><input type="password" placeholder="PW�� �Է��ϼ���" name="pw"></li>
				<li><input type="text" placeholder="�̸��� �Է��ϼ���" name="name"></li>
				<li><input type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���(-����)" name="tel"></li>
				<li><input type="text" placeholder="���ּҸ� �Է��ϼ���" name="address"></li>
				<li><input type="submit" value="JoinUs" class="button fit"></li>
			</form>
		</ul>
	
	</nav>

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

</body>
</html>
