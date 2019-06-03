<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%
	String id = "";
	try {
		id = (String) session.getAttribute("id");
%>

<%
	if (id == null || id.equals("")) {
%>
<div id="display_board" class="box2">로그인하세요! 게시판은 회원만 볼 수 있습니다.</div>
<%
	} else {
%>
<div id="display_board" class="box2"><jsp:include page="list.jsp" /></div>
<%
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>