<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<%
		request.setAttribute("id", "kingdora@kings.com");
		request.setAttribute("name", "김개동");
	%>
	
	forwardFrom.jsp 페이지입니다. <br>
	화면에 절대로 표시되지 않습니다. <br>
	
	<jsp:forward page="forwardTo.jsp"/>
</body>
</html>