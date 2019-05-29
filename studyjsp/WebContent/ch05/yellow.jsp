<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Insert title here</title>
<style>
		<!-- 
			img{
				border: 0;
				width: 70px;
				height: 30;
			}
		-->
	</style>
</head>
<body>
	<%
		String name= request.getParameter("name");
		String selectedColor = request.getParameter("selectedColor");
	%>
	<h2>포워딩되는페이지 - <%=selectedColor +".jsp"%></h2>
	<b><%= name %></b>님의 좋아하는 색은 "<%=selectedColor %>"이고
	빛의 밝음과 따듯함을 상징하는 색입니다.<br>
	<img src="<%=selectedColor + ".jpg" %>">
</body>
</html>