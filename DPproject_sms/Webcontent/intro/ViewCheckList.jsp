<%@page import="com.model.memberDTO"%>
<%@page import="com.model.memberDAO"%>
<%@page import="com.model.productDAO"%>
<%@page import="com.model.checklistDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.checklistDAO"%>
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
width : 60%;
height : 750px;
position:absolute;
left:30%;
top:35%;
margin-left:-200px;
margin-top:-200px;
background-color : white;
}

#bu {

text-align: center;
margin-top : 50%;
}


table {
width : 100%;
font-size : 23px;
font-family: 'SEBANG_Gothic_Bold';
}

table.a {
    
}
table.a th {
   
}
table.a td {
   
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


</style>


<body>
	<%
		memberDTO dto = (memberDTO)session.getAttribute("dto");
		productDAO productDao = new productDAO();
		String building_id = productDao.buildingId(dto.getId());
		
		checklistDAO dao = new checklistDAO();
		ArrayList<checklistDTO> list = dao.showBoard(building_id);
		
	%>
	<div id="board">
		<table class = "a" id="list" border="1">
			<tr>
				<th align = center>��ȣ</th>
				<th align = center>��ǰ��ȣ</th>
				<th align = center>���˳�¥</th>
				<th align = center>���±���</th>
				<th align = center>���͸���ü��</th>
				<th align = center>Ư�̻���</th>
			</tr>

			<%for(int i = 0; i < list.size(); i++){ %>			
			<tr>
				<td align = center><%= i+1 %></td>
				<td align = center><%= list.get(i).getProduct_id()%></td>
				<td align = center><%= list.get(i).getCheck_date() %></td>
				<td align = center><%= list.get(i).getState() %></td>
				<td align = center><%= list.get(i).getBattery() %></td>
				<td align = center><%= list.get(i).getRemarks() %></td>
			</tr>
			<%} %>
			
			
			
			

		</table>
		
			<div id = "bu">
			<a href="member.jsp" ><button class = "btn" id="writer">Ȩ���ΰ���</button></a>
			<a href="WriteCheckList.jsp"><button class = "btn" id="writer">�ۼ��Ϸ�����</button></a>
			</div>
		
		
	</div>
</body>
</html>