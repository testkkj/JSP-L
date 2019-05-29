<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<h2>application 내장객체</h2>
<%
	String path = application.getRealPath("/");
	application.log("my Log : /ex/ch04/ex04-02.jsp 에서 작성");
%>

<%= path %>

