<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>JSTL core �±� ���� - set,out,remove</h3>
<p>
	������ ������ ����
	<c:set var="browser" value="${header['User-Agent']}" />
	<br>
	<c:out value="${browser}" />
<p>
<p>
	������ ������ ����
	<c:remove var="browser" />
	<c:out value="${browser}" />