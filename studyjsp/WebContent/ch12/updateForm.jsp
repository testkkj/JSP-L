<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch12.board.BoardDBBean"%>
<%@ page import="ch12.board.BoardDataBean"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="../css/style.css" />
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="update.js"></script>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");

	BoardDBBean dbPro = BoardDBBean.getInstance();
	BoardDataBean article = dbPro.updateGetArticle(num);
%>
<div id="editForm" class="box">
	<ul>
		<li><p class="center">글수정
		<li><label for="subject">제목</label> <input id="subject"
			name="subject" type="text" size="50" maxlength="50"
			value="<%=article.getSubject()%>"> <input type="hidden"
			id="num" value="<%=num%>">
		<li><label for="content">내용</label> <textarea id="content"
				rows="13" cols="50"><%=article.getContent()%></textarea> <label
			for="passwd">비밀번호</label> <input id="passwd" name="passwd"
			type="password" size="20" maxlength="16" placeholder="6~16자 숫자/문자">
			<input type="hidden" id="num" value="<%=num%>">
		<li class="label2">
			<button id="update" value="<%=pageNum%>">수정</button>
			<button id="cancle" value="<%=pageNum%>">취소</button>
	</ul>
</div>