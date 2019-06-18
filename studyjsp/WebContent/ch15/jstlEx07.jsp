<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>JSTL fmt 태그 예제 - bundle, message</h3>
<%-- <fmt:setLocale value="en"/> --%>
<fmt:bundle basename="ch15bundle.testBundle">
	<fmt:message key="name" />
	<fmt:message key="message" var="msg" />
	<p>
		<c:out value="${msg}" />
</fmt:bundle>