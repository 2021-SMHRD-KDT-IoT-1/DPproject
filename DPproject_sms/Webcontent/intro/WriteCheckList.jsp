<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
			<div id = "board">
				<form action="WriteCheckListServiceCon.do" method="post">
				<table id="list">
					<tr>
						<td>��ǰ��ȣ</td>
						<td><input type="text" name="product_id"> </td>
					</tr>
					
					<tr>
						<td>�ǹ����̵�</td>
						<td><input type="text" name="building_id"> </td>
					</tr>
					
					<tr>
						<td>���˳�¥</td>
						<td><input type="text" name="check_date"> </td>
					</tr>
					
					<tr>
						<td>���±���</td>
						<td>
						<input type="radio" name="state" value="����">����
						<input type="radio" name="state" value="�ҷ�">�ҷ�
						</td>
					</tr>
					
					<tr>
						<td>���͸���ü��</td>
						<td><input  type="text" name="battery"> </td>
					</tr>
					
					<tr>
						<td>Ư�̻���</td>
						<td>
						<textarea name = "remarks" rows="10" style = "resize:none;"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ">
							<input type="submit" value="�ۼ��ϱ�">
						</td>
					</tr>
				</table>
				</form>
			</div>
</body>
</html>