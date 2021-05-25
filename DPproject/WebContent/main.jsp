<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Astral by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

</head>
<body class="is-preload">
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
					<h1>로고가 들어가지 않을까...</h1>
					<p>부연설명을 넣지 않을까...</p>
				</header>
				<!-- <a href="#work" class="jumplink pic">  -->
					<span class="arrow icon solid fa-chevron-right">
					<span> 뭔가 사진을 넣을겁니다..</span>
					</span> <img src="images/me.jpg" alt="" />
				<!-- </a> -->
			</article>
			<article id="company" class="panel intro">
				<header>
					<h1>화생방</h1>
					<p>화재로부터 생명을 구하는 방법</p>
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

			<!-- 제품 소개 -->
			<article id="product" class="panel">
				<header>
					<h1> 제품 소개 </h1>
					<h3> 대#ㅣ</h3>
					<p>이 부분은 아마 전부 이미지로 대체하지 않을까..</p>
				</header>
				<p>화재 시 대피 시스템</p>
				<section>
					<div class="row">
						<div class="col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg" alt=""></a> 
								<span> 
								1. 보다 빠르게, 정확하게
								<p> 연기와 열을 동시에 감지하여 더 빠르고 정확한 화재 알림</p> 
								</span>
						</div>
					</div>
				</section>
			</article>

<!-- *******************기능 넣을 부분 여기부터!!!!!!!!******************* -->


			<!-- 고장신고(report) -->
			<!-- ReportServiceCon에서 입력된 값 받아서 DB에 저장하기 -->
			<article id="report" class="panel">
				<header>
					<h2>고장 신고</h2>
					<p>고장신고를 해주신 분들께 소정의 상품을 드립니다</p>
				</header>
				<form action="ReportServiceCon" method="post">
					<div>
						<div class="row">
							<div class="col-6">
								<input type="text" name="report_name" placeholder="이름" />
							</div>
							<div class="col-6">
								<input type="text" name="report_tel" placeholder="전화번호" />
							</div>
							<div class="col-12">
								<input type="text" name="report_title" placeholder="제목" />
							</div>
							<div class="col-12">
								<textarea name="reprot_content" placeholder="내용" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div class="col-12" align="right">
								<input type="submit" value="접수" />
							</div>
						</div>
					</div>
				</form>
			</article>


			<!-- Contact -->
			<!-- ContactServiceCon에서 입력된 값 받아서 DB에 저장하기 -->
			<article id="contact" class="panel">
				<header>
					<h2>구매·대여 문의</h2>
				</header>
				<form action="ContactServiceCon" method="post">
					<div>
						<div class="row">
							<div class="col-6">
								<input type="text" name="contact_name" placeholder="이름" />
							</div>
							<div class="col-6">
								<input type="text" name="contact_tel" placeholder="전화번호" />
							</div>
							<div class="col-12">
								<input type="text" name="contact_title" placeholder="제목" />
							</div>
							<div class="col-12">
								<textarea name="contact_content" placeholder="내용" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div class="col-12" align="right">
								<input type="submit" value="문의" />
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
			</ul>
		</div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>