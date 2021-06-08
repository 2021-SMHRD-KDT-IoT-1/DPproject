<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h2>구매·대여 문의</h2>
	</header>
	<form action="ContactServiceCon.do" method="post"
		enctype="multipart/form-data">
		<div>
			<div class="row">
				<div class="col-6">
					<input type="text" name="name" placeholder="이름" />
				</div>
				<div class="col-6">
					<input type="text" name="tel" placeholder="전화번호" />
				</div>

				<!-- 파일첨부 추가 -->
				<input type="file" name="fileName" id="image" accept="image/*"
					onchange="setThumbnail(event);" />
				<div id="image_container"></div>

				<div class="col-12">
					<input type="text" name="title" placeholder="제목" />
				</div>
				<div class="col-12">
					<form>
						<textarea name="content" placeholder="내용" rows="6"
							style="resize: none;"
							onKeyUp="javascript:fnChkByte1(this,'1000')">
건물명 : 
건물주소 : 
제품번호 : 
상세내용 :</textarea>
						<span id="byteInfo1">0</span> 1000bytes
					</form>
				</div>
				<div class="col-12" align="right">
					<input type="submit" value="문의" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>