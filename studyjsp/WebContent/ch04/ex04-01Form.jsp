<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<h1>방명록</h1>
<form method="post" action="ex04-01Pro.jsp">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input id="name" name="name" type="text"
				placeholder="김개동" autofocus required>
		</dd>
		<dd>
			<label for="context">내용</label>
			<input id="context" name="context" type="text">
		</dd>
		<dd>
			<input type="submit" value="등록">
			<input type="reset" value="다시쓰기">
		</dd>
	</dl>
</form>