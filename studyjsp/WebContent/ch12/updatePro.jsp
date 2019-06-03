<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch12.board.BoardDBBean"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
	<jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
	BoardDBBean dbPro = BoardDBBean.getInstance();

	int check = dbPro.updateArticle(article);

	out.println(check);
%>