<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>JSTL core �±� ���� - if, choose, when, otherwise</h3>
<c:set var="country" value="${'Korea'}" />
<c:if test="${country != null}">
	������:<c:out value="${country}"></c:out>
	<br>
</c:if>

<c:choose>
	<c:when test="${country=='Korea'}">
		<p>
			<c:out value="${country}" />
			�� �ܿ��� ���.
	</c:when>
	<c:when test="${country=='Canada'}">
		<p>
			<c:out value="${country}" />
			�� �ܿ��� �ʹ� ���.
	</c:when>
	<c:otherwise>
		<p>�׿��� ������� �ܿ��� �� �� ����.
	</c:otherwise>
</c:choose>