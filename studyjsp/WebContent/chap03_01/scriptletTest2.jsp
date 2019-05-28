<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>스크립트릿 예제 - 로직사용</title>
	</head>
	<body>
		<h2>스크립트릿 예제 - 로직사용</h2>
		<%
			int var1 = 2;
			if(var1 > 5){
		%>
			변수 var1의 값은 5보다 크다.
		<%}else{%>
			변수 var1의 값은 5보다 작거나 같다.
		<%}%>
	
	</body>
</html>