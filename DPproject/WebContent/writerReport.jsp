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
					<h2>���� �Ű�</h2>
					<p>����Ű� ���ֽ� �е鲲 ������ ��ǰ�� �帳�ϴ�</p>
				</header>
				<form action="WriterReport" enctype="multipart/form-data" method="post">
					<div>
						<div>
							<div>
								<input type="text" name="report_name" placeholder="�̸�" />
							</div>
							<div>
								<input type="text" name="report_tel" placeholder="��ȭ��ȣ" />
							</div>
							

							<!-- ����÷�� �߰� -->
							<div>
							<input name="report_filename" type="file" style="float: right;">
							</div>
							
							<div>
								<input type="text" name="report_title" placeholder="����" />
							</div>
							<div>
								<textarea name="report_content" placeholder="����" rows="6"
									style="resize: none;"></textarea>
							</div>
							<div align="right">
								<input type="submit" value="����" />
							</div>
						</div>
					</div>
				</form>
</body>
</html>