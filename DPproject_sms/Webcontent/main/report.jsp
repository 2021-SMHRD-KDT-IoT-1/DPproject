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
		<h2>고장 신고</h2>
		<p>고장신고를 해주신 분들께 소정의 상품을 드립니다</p>
	</header>
	<form action="WriteReport.do" method="post"
		enctype="multipart/form-data">
		<div>
			<div class="row">
				<div class="col-6">
					<input type="text" name="report_name" placeholder="이름" />
				</div>
				<div class="col-6">
					<input type="text" name="report_tel" placeholder="전화번호" />
				</div>

				<!-- 파일첨부 추가 -->
				<input type='file' name="report_filename" accept="image/*"
					onchange="setThumbnail1(event);" />
				<div id="image_container1"></div>

				<div class="col-12">
					<input type="text" name="report_title" placeholder="제목" />
				</div>
				<div class="col-12">
					<form>
						<textarea name="report_content" placeholder="내용" rows="6"
							style="resize: none;" onKeyUp="javascript:fnChkByte(this,'1000')">
건물명 : 
건물주소 : 
제품번호 : 
상세내용 : </textarea>
						<span id="byteInfo">0</span> 1000bytes
					</form>
				</div>
				<div class="col-12" align="right">
					<input type="submit" value="작성" class = "btn-grad"/>
				</div>
			</div>
		</div>
	</form>
</body>
</html>