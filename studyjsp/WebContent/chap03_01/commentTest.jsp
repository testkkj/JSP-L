<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>주석 예제</title>
	</head>
	<body>
		<h2>주석 예제</h2>
		<%
			//자바 주석입니다.
			//문자열 변수 선언 및 초기값 할당
			String str1 = "소스보기를 하면 화면에 표시됩니다.";
			String str2 = "소스보기를 해도 화면에 표시되지 않습ㄴ디ㅏ.";
		%>
		
		<!-- HTML 주석입니다. <%=str1%> -->
		<%-- JSP 주석입니다. <%=str2%> --%>
	</body>
</html>