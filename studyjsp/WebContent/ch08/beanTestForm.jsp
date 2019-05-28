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
		<form method="post" action="beanTestPro.jsp">
			<dl>
				<dd>
					<label for="id">아이디</label>
					<input id="id" name="id" type="text" 
						placeholder="aaaa" autofocus required>
				</dd>
				<dd>
					<input type="submit" value="입력완료">
				</dd>
			</dl>
		</form>
	</body>
</html>