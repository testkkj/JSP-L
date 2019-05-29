<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8"); %>
<title>if-else문 예제 - 좋아하는 색 선택</title>
</head>
<body>
	<h2>if-else문 예제 - 좋아하는 색 선택</h2>
	<%
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String selectColor ="";
		if(color.equals("blue")){
			selectColor="파랑색";
		}else if(color.equals("green")) {
			selectColor="초록색";
		}else if(color.equals("red")) {
			selectColor="빨강색";
		}else {
			selectColor="기타색";
		}
	%>
	
	<%=name %>님이 선택한 색은 <%=selectColor %>입니다 <p>
	선택한 색:<br>
	<img src="<%=color + ".jpg" %>" border="0">
</body>
</html>