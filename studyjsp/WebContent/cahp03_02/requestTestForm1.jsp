<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>request 예제 - 요청 메소드</h2>
		<form method="post" action="requestTest1.jsp">
			<dl>
				<dd>
					<label for="name">이름</label>
					<input id="name" name="name" type="text"
						placeholder="김개동" autofocus required>
				</dd>
				<dd>
					<label for="age">나이</label>
					<input id="age" name="age" type="number"
						min="20" max="99" value="20" required>
				</dd>
				<dd><fieldset>
					<legend>성별</legend>
					<input id="gender" name="gender" type="radio" value="m" checked>
					<label for="gender">남</label>
					<input id="gender" name="gender" type="radio" vlaue="f">
					<label for="gender">여</label>
				</fieldset></dd>
				<dd>
					<label for="hobby">취미</label>
					<select id="hobby" name="hobby" required>
						<option value="잠자기" selected>잠자기</option>
						<option value="무협지보기">무협지보기</option>
						<option value="애니메이션시청">애니메이션시청</option>
						<option value="건프라">건프라</option>
					</select>
				</dd>
				<dd>
					<input type="submit" value="전송">
				</dd>
			</dl>
		</form>
	</body>
</html>