<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	</head>
	<body>
		<h2>response 객체 예제 - sendRedirect() 메소드의 사용</h2> <%-- 출력버퍼에 추가 --%>
		현재 페이지는 <b>responseRedirect.jsp</b> 페이지입니다. <%-- 출력버퍼에 추가 --%>
		<% response.sendRedirect("responseRedirected.jsp"); %> <%-- 출력버퍼비움 --%>
	</body>
</html>