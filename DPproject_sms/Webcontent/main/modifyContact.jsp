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
	// get 방식으로 보낸 num받아오기
	  String get_num = request.getParameter("contactnum");
	  System.out.println(get_num);
	// String -> int 형변환
	  int num = Integer.parseInt(get_num);
	  System.out.println(num);
	  
	contactDAO dao = new contactDAO();
	contactDTO dto = dao.showOne(num);
	
	%>
	
	<h1>구매/대여</h1>
	<br>

	<div id = "board">
		<form action="ModifyContactServiceCon.do" method="post">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" name="ModifyTitle" value="<%=dto.getTitle()%>"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="ModifyName" value="<%=dto.getName()%>"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="ModifyTel" value="<%=dto.getTel()%>"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2">
						<img src="../img/<%=dto.getFilename()%>"  width = 1031px, height = 700px>
						<textarea name="ModifyContent" rows="6" style = "resize:none;" ><%=dto.getContent()%></textarea>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "right"><input type="submit" value="수정"></td>
				</tr>
			</table>
			<input type = "hidden" name = "ModifyNum" value="<%=dto.getNum()%>">
		</form>
	</div>


</body>
</html>