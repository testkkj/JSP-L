<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>선언문 예제 - 메소드 선언</title>
	</head>
	<body>
		<h2>선언문 예제 - 메소드 선언</h2>
		
		<%!
		String id = "Kingdora";
		
		public String getId() {
			return id;
		}
		%>
		
		id 변수 : <%=id %> <br>
		getId() 메소드 실행결과 : <%= getId() %>
	</body>
</html>