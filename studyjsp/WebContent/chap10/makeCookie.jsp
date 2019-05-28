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
			Cookie cookie = new Cookie("id", "kingdora");
			cookie.setMaxAge(60*2);
			response.addCookie(cookie);
			
			out.println("쿠키가 생성되었습니다.");
		%>
		<form method="post" action="useCookie.jsp">
			<table>
			
				<tr>
					<td><input type="submit" value="생성된 쿠키 확인"/>
			</table>
		</form>
	</body>
</html>