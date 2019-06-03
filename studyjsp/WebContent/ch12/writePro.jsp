<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch12.board.BoardDBBean"%>
<%@ page import="java.sql.Timestamp"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
	<jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
	String id = "";
	try {
		id = (String) session.getAttribute("id");
	} catch (Exception e) {

	}

	article.setWriter(id);
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());

	BoardDBBean dbPro = BoardDBBean.getInstance();

	int check = dbPro.insertArticle(article);

	out.println(check);
%>