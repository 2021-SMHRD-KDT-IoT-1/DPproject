<%@page import="com.model.contactDTO"%>
<%@page import="com.model.contactDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// get ������� ���� num�޾ƿ���
	  String get_num = request.getParameter("num");
	  System.out.println(get_num);
	// String -> int ����ȯ
	  int num = Integer.parseInt(get_num);
	  System.out.println(num);
	  
	contactDAO dao = new contactDAO();
	contactDTO dto = dao.showOne(num);
	
	%>

	<div id = "board">
		<form action="ModifyContactServiceCon.do" method="post">
			<table id="list">
				<tr>
					<td>�ۼ���</td>
					<td><input type="text" name="ModifyName" value="<%=dto.getName()%>"></td>
				</tr>
				<tr>
					<td>��ȭ��ȣ</td>
					<td><input type="text" name="ModifyTel" value="<%=dto.getTel()%>"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" name="ModifyTitle" value="<%=dto.getTitle()%>"></td>
				</tr>
				<tr>
					<td colspan="2">����</td>
				</tr>
				<tr>
					<td colspan="2">
						<img src="../img/<%=dto.getFilename()%>">
						<textarea name="ModifyContent" rows="6" style = "resize:none;" ><%=dto.getContent()%></textarea>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="����"></td>
				</tr>
			</table>
			<input type = "hidden" name = "ModifyNum" value="<%=dto.getNum()%>">
		</form>
	</div>


</body>
</html>