<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>선언문과 스크립트릿에서 선언된 변수의 차이</title>
	</head>
	<body>
		<h2>선언문과 스크립트릿에서 선언된 변수의 차이점 확인</h2>
		
		<%!
			String str1 = "선언문에서 선언한 변수"; //멤버 변수
		%>
		
		<%
			String str2 = "스크립트릿에서 선언한 변수"; //지역 변수
		%>
	</body>
</html>