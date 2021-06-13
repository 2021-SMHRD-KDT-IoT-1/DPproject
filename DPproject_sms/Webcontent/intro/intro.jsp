<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>����</title>
<meta charset="EUC-KR">
<link href="../css/basic.css" rel="stylesheet" type="text/css">
<link href="../css/intro.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">

</head>
<body class="is-preload">
	<section id = "wrapper" class="intro_top">
		<div class="slogan"><img src="../images/logo.png" width = 500px></div>
		<p class="s_title">PreparEscape</p>
		<ul class="banner">
			<li><a href="#menu"> 
				<span>�α��� / ȸ������</span>
				<p class="s_title">ȸ�� ����</p>
			</a></li>
			
			<li onclick="openWindow()"><a> 
					<span>PreparEscape</span>
					<p class="s_title">ȭ���� Ȩ������</p>
					
			</a></li>
			
	<script>
		var newWindowObj;
		// ���� strWindowFeatures�� ���� ���Ӱ� ���� �� ������ â�� �ɼǵ��� ������ ������ �� ����.
		var strWindowFeatures = "menubar = yes,location = yes,resizable = yes,scrollbars = yes,status = yes";
		function openWindow() {
			newWindowObj = window.open("../main/main.jsp", "����", strWindowFeatures);
		}
	</script>
			
			
		</ul>
		
		
	<!--�α��� �޴�********  -->	
	
	<nav id="menu">
	<div class="inner links">
		<ul>
			<li><h5>�α���</h5></li>
			<form action="LoginServiceCon.do" method="post">
				<li><input type="text" placeholder="ID" name="id"></li>
				<li><input type="password" placeholder="PASSWORD" name="pw"></li>
				<li><input type="submit" value="LOGIN" class="button fit"></li>
			</form>
				<li><input type ="button" class="button fit" value="JOIN" onclick="#join"></li>
		</ul>
		</div>
	</nav>
	
	<!-- ******ȸ������******** -->
	<nav id = "join">
		<ul class="inner links">
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
		<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.scrolly.min.js"></script>
		<script src="../assets/js/jquery.scrollex.min.js"></script>
		<script src="../assets/js/browser.min.js"></script>
		<script src="../assets/js/breakpoints.min.js"></script>
		<script src="../assets/js/introutil.js"></script>
		<script src="../assets/js/intro.js"></script>

</body>
</html>
