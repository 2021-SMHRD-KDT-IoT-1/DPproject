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
		<h2>���š��뿩 ����</h2>
	</header>
	<form action="ContactServiceCon.do" method="post"
		enctype="multipart/form-data">
		<div>
			<div class="row">
				<div class="col-6">
					<input type="text" name="name" placeholder="�̸�" />
				</div>
				<div class="col-6">
					<input type="text" name="tel" placeholder="��ȭ��ȣ" />
				</div>

				<!-- ����÷�� �߰� -->
				<input type="file" name="fileName" id="image" accept="image/*"
					onchange="setThumbnail(event);" />
				<div id="image_container"></div>

				<div class="col-12">
					<input type="text" name="title" placeholder="����" />
				</div>
				<div class="col-12">
					<form>
						<textarea name="content" placeholder="����" rows="6"
							style="resize: none;"
							onKeyUp="javascript:fnChkByte1(this,'1000')">
�ǹ��� : 
�ǹ��ּ� : 
��ǰ��ȣ : 
�󼼳��� :</textarea>
						<span id="byteInfo1">0</span> 1000bytes
					</form>
				</div>
				<div class="col-12" align="right">
					<input type="submit" value="����" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>