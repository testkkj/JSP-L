<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
		session="true"
		buffer="8kb"
		autoFlush="true"
		isThreadSafe="true"
		%> 
	<%-- session : HttpSession을 사용할지 여부를 지정 --%>
	<%-- buffer : JSP페이지의 출력 버퍼의 크기를 지정 --%>
	<%-- autoFlush : 웹 브라우저에 출력되기전에 출력버퍼가 다 찰 경우, 저장되어 있는 내용들을 어떻게 처리할지... --%>
	<%-- isThreadSafe : JSP페이지에서 멀티 쓰레드를 사용할 수 있도록 지정하는 속성 기본값은 "true" --%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>page 디렉티브 예제2 - import, session, buffer, autoFlush, isThreadSafe 속성</title>
	</head>
	<body>
		<h2>page 디렉티브 예제2 - import, session, buffer, autoFlush, isThreadSafe 속성</h2>
		<%
			Timestamp now = new Timestamp(System.currentTimeMillis());
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = format.format(now);
		%>
		
		오늘은 <%=strDate %> 입니다.
	</body>
</html>