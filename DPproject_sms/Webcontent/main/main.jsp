<%@page import="com.sun.jdi.Location"%>
<%@page import="com.model.reportDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.reportDAO"%>

<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>DaeB</title>
<meta charset="EUC-KR" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

s<%
	memberDTO dto = (memberDTO)session.getAttribute("dto");

	String reportnum = request.getParameter("reportnum");
	String contactnum = request.getParameter("contactnum");
%>

	<!-- Wrapper-->
	<div id="wrapper">

		<!-- �޴� ��ư -->
		<nav id="nav">
			<a href="#home" class="icon solid fa-home"><span>Home</span></a> <a
				href="#company" class="icon solid fa-bold"><span>About</span></a> <a
				href="#product" class="icon solid fa-fire"><span>Product</span></a>
			<a href="#report" class="icon solid fa-bullhorn"><span>Report</span></a>
			<a href="#contact" class="icon solid fa-comments-dollar"><span>Contact</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			<article id="home" class="panel intro"></article>

			<article id="company" class="panel intro"></article>

			<!-- ��ǰ �Ұ� -->
			<article id="product" class="panel"></article>

			<!-- ����Ű�(report) -->
			<article id="report" class="panel"></article>

			<article id="checkReport" class="panel"></article>

			<article id="modifyReport" class="panel"></article>

			<!-- Contact -->
			<article id="contact" class="panel"></article>

			<article id="checkContact" class="panel"></article>

			<article id="modifyContact" class="panel"></article>


		</div>

		<!-- Footer -->
		<div id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				<%if(dto!=null){ %>
				<li><a href="../intro/member.jsp">Intro</a></li>
				<%}else { %>
				<li><a href="../intro/intro.jsp">Intro</a></li>
				<%} %>
			</ul>
		</div>
	</div>

	<script type="text/javascript">

		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}
		function setThumbnail1(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				document.querySelector("div#image_container1").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}
		
		function fnChkByte(obj, maxByte)
		{
		    var str = obj.value;
		    var str_len = str.length;


		    var rbyte = 0;
		    var rlen = 0;
		    var one_char = "";
		    var str2 = "";


		    for(var i=0; i<str_len; i++)
		    {
		        one_char = str.charAt(i);
		        if(escape(one_char).length > 4) {
		            rbyte += 2;                                         //�ѱ�2Byte
		        }else{
		            rbyte++;                                            //���� �� ������ 1Byte
		        }
		        if(rbyte <= maxByte){
		            rlen = i+1;                                          //return�� ���ڿ� ����
		        }
		     }
		     if(rbyte > maxByte)
		     {
		        // alert("�ѱ� "+(maxByte/2)+"�� / ���� "+maxByte+"�ڸ� �ʰ� �Է��� �� �����ϴ�.");
		        alert("�޼����� �ִ� " + maxByte + "byte�� �ʰ��� �� �����ϴ�.")
		        str2 = str.substr(0,rlen);                                  //���ڿ� �ڸ���
		        obj.value = str2;
		        fnChkByte(obj, maxByte);
		     }
		     else
		     {
		        document.getElementById('byteInfo').innerText = rbyte;
		     }
		}
		
		function fnChkByte1(obj, maxByte)
		{
		    var str = obj.value;
		    var str_len = str.length;


		    var rbyte = 0;
		    var rlen = 0;
		    var one_char = "";
		    var str2 = "";


		    for(var i=0; i<str_len; i++)
		    {
		        one_char = str.charAt(i);
		        if(escape(one_char).length > 4) {
		            rbyte += 2;                                         //�ѱ�2Byte
		        }else{
		            rbyte++;                                            //���� �� ������ 1Byte
		        }
		        if(rbyte <= maxByte){
		            rlen = i+1;                                          //return�� ���ڿ� ����
		        }
		     }
		     if(rbyte > maxByte)
		     {
		        // alert("�ѱ� "+(maxByte/2)+"�� / ���� "+maxByte+"�ڸ� �ʰ� �Է��� �� �����ϴ�.");
		        alert("�޼����� �ִ� " + maxByte + "byte�� �ʰ��� �� �����ϴ�.")
		        str2 = str.substr(0,rlen);                                  //���ڿ� �ڸ���
		        obj.value = str2;
		        fnChkByte(obj, maxByte);
		     }
		     else
		     {
		        document.getElementById('byteInfo1').innerText = rbyte;
		     }
		}
		
	</script>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>

	<script src="../assets/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
		// ������ ��ȯ�� ����
		/* ������ �ҷ����� (�ٲ� div id�Է� , ������ ����) */
		function btnclick(inner, _url) {
			
			
			$.ajax({
				url : _url,
				type : 'get',
				success : function(data) {
					$('#' + inner).html(data);
				},
				error : function() {
					$('#' + inner).text('������ ������ �Դϴ�.');
				}
			});
		}
	
		// ����ȭ��
		btnclick("home", "home.jsp");
		
		//ȸ��Ұ�
		btnclick("company", "company.jsp");
		
		//��ǰ�Ұ�
		btnclick("product", "product.jsp");
		
		//����Ű�
		btnclick("report", "report.jsp");
		btnclick("checkReport", "checkReport.jsp?reportnum="+<%=reportnum%>);
		btnclick("modifyReport", "modifyReport.jsp?reportnum="+<%=reportnum%>);
		
		//���Ź���
		btnclick("contact", "contact.jsp");
 		btnclick("checkContact", "checkContact.jsp?contactnum="+<%=contactnum%>);
		btnclick("modifyContact", "modifyContact.jsp?contactnum="+<%=contactnum%>);
	</script>
</body>
</html>