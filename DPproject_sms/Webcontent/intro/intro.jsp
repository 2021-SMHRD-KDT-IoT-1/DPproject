<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>대피</title>
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
				<span>로그인 / 회원가입</span>
				<p class="s_title">회원 서비스</p>
			</a></li>
			
			<li onclick="openWindow()"><a> 
					<span>PreparEscape</span>
					<p class="s_title">화생방 홈페이지</p>
					
			</a></li>
			
	<script>
		var newWindowObj;
		// 변수 strWindowFeatures를 통해 새롭게 여는 웹 브라우저 창의 옵션들을 일일이 설정할 수 있음.
		var strWindowFeatures = "menubar = yes,location = yes,resizable = yes,scrollbars = yes,status = yes";
		function openWindow() {
			newWindowObj = window.open("../main/main.jsp", "메인", strWindowFeatures);
		}
	</script>
			
			
		</ul>
		
		
	<!--로그인 메뉴********  -->	
	
	<nav id="menu">
	<div class="inner links">
		<ul>
			<li><h5>로그인</h5></li>
			<form action="LoginServiceCon.do" method="post">
				<li><input type="text" placeholder="ID" name="id"></li>
				<li><input type="password" placeholder="PASSWORD" name="pw"></li>
				<li><input type="submit" value="LOGIN" class="button fit"></li>
			</form>
				<li><input type ="button" class="button fit" value="JOIN" onclick="#join"></li>
		</ul>
		</div>
	</nav>
	
	<!-- ******회원가입******** -->
	<nav id = "join">
		<ul class="inner links">
			<li><h5>회원가입</h5></li>
			<form action="JoinServiceCon.do" method="post">
				<li><input type="text" placeholder="ID를 입력하세요" name="id"></li>
				<li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>
				<li><input type="text" placeholder="이름을 입력하세요" name="name"></li>
				<li><input type="text" placeholder="전화번호를 입력하세요(-제외)" name="tel"></li>
				<li><input type="text" placeholder="집주소를 입력하세요" name="address"></li>
				<li><input type="submit" value="JoinUs" class="button fit"></li>
			</form>
		</ul>
	
	</nav>

	<!--푸터영역 -->
	<footer id="intro_footer">
		<div>
			<!-- <h1 class="logo_bottom sprite">화생방 로고</h1> -->
			<div class="copyright">
				<p> 
				<span>화생방</span> 
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
