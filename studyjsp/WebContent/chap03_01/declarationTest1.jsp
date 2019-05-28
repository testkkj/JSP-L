<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>선언문 예제 - 변수 선언</title>
	</head>
	<body>
		<h2>선언문 예제 - 변수선언</h2>
		<% //문자열과 전역 변수 str2의 값을 결합해 선언한 지역 변수 str1에 저장 
			String str1 = "Game Id - " + str2; // 문자열 결합
		%>
		<%! //전역 변수 str2 선언
			String str2 = "Kingdora";
		%>
		
		결과 : <%=str1 %>
	</body>
</html>