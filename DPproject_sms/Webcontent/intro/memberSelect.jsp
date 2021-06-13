<%@page import="com.model.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<style>

background-color : black;

</style>

<body>
	<%
		memberDAO dao = new memberDAO();
		ArrayList<memberDTO> list = dao.select();
		
	%>
	
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<table>
							<caption><h2>회원관리페이지</h2></caption>
							<tr>
								<td>아이디</td>
								<td>이름</td>
								<td>전화번호</td>
								<td>주소</td>							
							</tr>
							
							<%for(int i = 0;i<list.size();i++){%>
							
								<tr>
									<td><%=list.get(i).getId() %></td>
									<td><%=list.get(i).getName() %></td>
									<td><%=list.get(i).getTel() %></td>
									<td><%=list.get(i).getAddress() %></td>							
								</tr>
							
							
							<%}%>
						</table>
					</nav>		
					<a href="member.jsp" class="button next scrolly">되돌아가기</a>	
			</div>
</body>
</html>