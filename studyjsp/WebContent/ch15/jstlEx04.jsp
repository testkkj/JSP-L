<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>JSTL core 태그 예제 - forTokens</h3>
<c:forTokens var="tech" items="금강불괴, 허공답보,열양기공,천마군림보" delims=",">
	<p>
		익혀야할 기술
		<c:out value="${tech}" />
	</p>
</c:forTokens>