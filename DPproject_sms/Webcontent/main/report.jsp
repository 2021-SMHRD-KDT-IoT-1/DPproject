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
	<form action="WriteReport.do" method="post"
		enctype="multipart/form-data">
		<div>
			<div class="row">
				<div class="col-6">
					<input type="text" name="report_name" placeholder="�̸�" />
				</div>
				<div class="col-6">
					<input type="text" name="report_tel" placeholder="��ȭ��ȣ" />
				</div>

				<!-- ����÷�� �߰� -->
				<input type='file' name="report_filename" accept="image/*"
					onchange="setThumbnail1(event);" />
				<div id="image_container1"></div>

				<div class="col-12">
					<input type="text" name="report_title" placeholder="����" />
				</div>
				<div class="col-12">
					<form>
						<textarea name="report_content" placeholder="����" rows="6"
							style="resize: none;" onKeyUp="javascript:fnChkByte(this,'1000')">
�ǹ��� : 
�ǹ��ּ� : 
��ǰ��ȣ : 
�󼼳��� : </textarea>
						<span id="byteInfo">0</span> 1000bytes
					</form>
				</div>
				<div class="col-12" align="right">
					<input type="submit" value="�ۼ�" class = "btn-grad"/>
				</div>
			</div>
		</div>
	</form>
</body>
</html>