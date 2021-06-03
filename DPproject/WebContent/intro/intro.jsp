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
	<section class="intro_top">
	
		<div class="slogan sprite">로고나 슬로건</div>
		<p class="s_title">PreparEscape</p>
		<ul class="banner">
			<li><a href="#menu"> <span>뭐라고하징</span>
					<p class="title">회원페이지</p>
					<p class="s_title">실시간 화재 감시</p>
			</a></li>
<!-- 			
			<li><a onclick="openWindow()"> <span>PreparEscape</span>
					<p class="title">대#ㅣ</p>
					<p class="s_title">홈페이지</p>
					
			</a></li>
 -->			
 			
 			<li onclick="openWindow()"><span>PreparEscape</span>
				<p class="title">대#ㅣ</p>
				<p class="s_title">홈페이지</p>
			</li>
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
		<ul class="links">
			<li><h5>로그인</h5></li>
			<form action="LoginServiceCon.do" method="post">
				<li><input type="text" placeholder="ID" name="id"></li>
				<li><input type="password" placeholder="PASSWORD" name="pw"></li>
				<li><input type="submit" value="LOGIN" class="button fit"></li>
			</form>
			<li><a href = "#join"><botton>JOIN</botton></a></li>
		</ul>
	</nav>
	
	<!-- ******회원가입******** -->
	<nav id = "join">
		<ul class="links">
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
	
	</section>


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
		<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.scrolly.min.js"></script>
		<script src="../assets/js/jquery.scrollex.min.js"></script>
		<script src="../assets/js/browser.min.js"></script>
		<script src="../assets/js/breakpoints.min.js"></script>
		<script src="../assets/js/introutil.js"></script>
		<script src="../assets/js/intro.js"></script>

</body>
</html>
