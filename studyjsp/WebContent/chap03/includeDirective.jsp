<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="color.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" 
		content="">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>include 디렉티브 에제</title>
	</head>
	<body bgcolor="<%=bodyback_c%>">
		<form action="">
			<dl>
				<dd>
					<label for="id"> 아이디 </label>
					<input id="id" type="email" placeholder="example@aaaa.com" required />
				</dd>
				<dd>
					<label for="pass"> 비밀번호 </label>
					<input id="pass" type="password" placeholder="비밀번호" required />
				</dd>
				<dd>
					<label for="name">이름</label>
					<input id="name" type="text" placeholder="홍길동" required />
				</dd>
				<dd>
					<input type="submit" value="등록">
				</dd>
			</dl>
		</form>

	</body>
</html>