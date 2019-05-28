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
		<%
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			
			if(id.equals("kingdora") && pass.equals("1234"))
				session.setAttribute("id", id);
			
			response.sendRedirect("sessionTestForm.jsp");
		%>
	</body>
</html>