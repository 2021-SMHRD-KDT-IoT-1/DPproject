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
						<td>제품번호</td>
						<td><input type="text" name="product_id"> </td>
					</tr>
					
					<tr>
						<td>건물아이디</td>
						<td><input type="text" name="building_id"> </td>
					</tr>
					
					<tr>
						<td>점검날짜</td>
						<td><input type="text" name="check_date"> </td>
					</tr>
					
					<tr>
						<td>상태구분</td>
						<td>
						<input type="radio" name="state" value="정상">정상
						<input type="radio" name="state" value="불량">불량
						</td>
					</tr>
					
					<tr>
						<td>배터리교체일</td>
						<td><input  type="text" name="battery"> </td>
					</tr>
					
					<tr>
						<td>특이사항</td>
						<td>
						<textarea name = "remarks" rows="10" style = "resize:none;"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="작성하기">
						</td>
					</tr>
				</table>
				</form>
			</div>
</body>
</html>