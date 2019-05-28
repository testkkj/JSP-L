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
		<form method="post" action="updatePro.jsp">
			<table>
				<tr>
					<td class="label"><label for="idt">아이디</label>
					<td class="content"><input id="idt" name="idt" type="text" size="20"
						maxlength="50" placeholder="example@kings.com" autofocus required>
				<tr>
					<td class="label"><label for="passwd">비밀번호</label>
					<td class="content"><input id="passwd" name="passwd" type="password" size="20"
						maxlength="16" placeholder="6~16자 숫자/문자" required>
				<tr>
					<td class="label"><label for="name">이름</label>
					<td class="content"><input id="name" name="name" type="text" size="20"
						maxlength="10" placeholder="킹도라" required>
				<tr>
					<td class="label"><label for="addr">주소</label>
					<td class="content"><input id="addr" name="addr" type="text" size="20"
						maxlength="100" placeholder="서울시" required>
				<tr>
					<td class="label"><label for="tel">전화번호</label>
					<td class="content"><input id="tel" name="tel" type="text" size="20"
						maxlength="50" placeholder="010-1111-1111" required>
				<tr>
					<td class="label2" colspan="2"><input type="submit" value="수정완료">
						<input type="reset" value="다시작성">
			</table>
		</form>
		<button type="button" onclick="location.href='index.jsp'">되돌아가기</button>
	</body>
</html>