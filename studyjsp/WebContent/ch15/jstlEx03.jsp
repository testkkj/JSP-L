<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>Header ����:</h3>



<c:forEach var="head" items="${headerValues}">
	<p>
		param:
		<c:out value="${head.key}" />
	<p>
		values:

		<c:forEach var="val" items="${head.value }">
			<c:out value="${val}" />
		</c:forEach>
</c:forEach>