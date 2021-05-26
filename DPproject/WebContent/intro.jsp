<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<meta name="description" content="대피">
<meta name="keywords" content="대피">
<meta property="og:type" content="website">
<meta property="og:site_name" content="대피">
<meta property="og:title" content="대피">
<meta property="og:description" content="대피">
<title>대피</title>
<link href="css/basic.css" rel="stylesheet" type="text/css">
<!-- <link href="css/all.css" rel="stylesheet" type="text/css"> -->
<link href="css/intro.css" rel="stylesheet" type="text/css">


</head>
<body>
	<section class="intro_top">
		<div class="slogan sprite">로고나 슬로건</div>
		<p class="s_title">PreparEscape</p>
		<ul class="banner">
			<li><a href="#menu"> <span>뭐라고하징</span>
					<p class="title">회원페이지</p>
					<p class="s_title">실시간 화재 감시</p>
			</a></li>
			<li><a href="main.jsp"> <span>PreparEscape</span>
					<p class="title">대#ㅣ</p>
					<p class="s_title">홈페이지</p>
			</a></li>
		</ul>
	</section>

	<!--로그인 메뉴********  -->	
	<nav id="menu">
		<ul class="links">
			<li><h5>로그인</h5></li>
			<form action="LoginServiceCon.do" method="post">
				<li><input type="text" placeholder="ID" name="id"></li>
				<li><input type="password" placeholder="PASSWORD" name="pw"></li>
				<li><input type="submit" value="LOGIN" class="button fit"></li>
			</form>
		</ul>
	</nav>
	
	<!-- ******회원가입******** -->
	<nav id = "joinmenu">
		<ul class="actions vertical">
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
		<div class="container">
			<h1 class="logo_bottom sprite">화생방 로고</h1>
			<div class="copyright">
				<p>
					<br> 대표전화 <b>062)000-0000</b>
				</p>
			</div>
		</div>
	</footer>

</body>
</html>
