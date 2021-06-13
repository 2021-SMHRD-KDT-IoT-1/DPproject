<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>

@font-face {
    font-family: 'SEBANG_Gothic_Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2104@1.0/SEBANG_Gothic_Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

body{
background-image : url('../images/tool1.jpg');
background-size : cover;
}

#board{
width : 500px;
height : 500px;
position:absolute;
left:30%;
top:35%;
margin-left:140px;
margin-top:-150px;
background-color : white;
}

#bu {

text-align: center;
margin-top : 50%;
}


.btn {  
width:200px; 
height:40px; 
line-height:40px; 
border:1px #3399dd solid;; 
margin:15px auto; 
background-color:#000; 
text-align:center; 
cursor: pointer; 
color:#fff; 
transition:all 0.9s, color 0.3; 
font-family: 'SEBANG_Gothic_Bold';
} 

table {
width : 100%;
font-size : 18px;
font-family: 'SEBANG_Gothic_Bold';
text-align : center;
margin-top : 20%;
}

</style>


<body>
			<div id = "board" >
				<form action="WriteCheckListServiceCon.do" method="post">
				<table class = "a" id="list">
					<tr>
						<td align = right width = 200px>��ǰ��ȣ</td>
						<td align = left><input type="text" name="product_id"> </td>
					</tr>
					
					<tr>
						<td align = right>�ǹ����̵�</td>
						<td align = left><input type="text" name="building_id"> </td>
					</tr>
					
					<tr>
						<td align = right>���˳�¥</td>
						<td align = left><input type="text" name="check_date"> </td>
					</tr>
					
					<tr>
						<td align = right>���±���</td>
						<td align = left>
						<input type="radio" name="state" value="����">����
						<input type="radio" name="state" value="�ҷ�">�ҷ�
						</td>
					</tr>
					
					<tr>
						<td align = right>���͸���ü��</td>
						<td align = left><input  type="text" name="battery"> </td>
					</tr>
					
					<tr>
						<td align = right>Ư�̻���</td>
						<td align = left>
						<textarea name = "remarks" rows="10" style = "resize:none;"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ" class = "btn">
							<input type="submit" value="�ۼ��ϱ�" class = "btn">
						</td>
					</tr>
				</table>
				</form>
			</div>
</body>
</html>