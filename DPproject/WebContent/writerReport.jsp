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
				<form action="WriterReport" enctype="multipart/form-data" method="post">
					<div>
						<div>
							<div>
								<input type="text" name="report_name" placeholder="이름" />
							</div>
							<div>
								<input type="text" name="report_tel" placeholder="전화번호" />
							</div>
							

							<!-- 파일첨부 추가 -->
							<div>
							<input name="report_filename" type="file" style="float: right;">
							</div>
							
							<div>
								<input type="text" name="report_title" placeholder="제목" />
							</div>
							<div>
								<textarea name="report_content" placeholder="내용" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div align="right">
								<input type="submit" value="접수" />
							</div>
						</div>
					</div>
				</form>
</body>
</html>