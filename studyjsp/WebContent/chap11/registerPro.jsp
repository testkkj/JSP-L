<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch11.logon.LogonDBBean"%>
<%@ page import="java.sql.Timestamp"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="ch11.logon.LogonDataBean">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
	member.setReg_date(new Timestamp(System.currentTimeMillis()));

	LogonDBBean manager = LogonDBBean.getInstance();

	manager.insertMember(member);
%>