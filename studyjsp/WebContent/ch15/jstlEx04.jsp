<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../scc/style.css">

<h3>JSTL core �±� ���� - forTokens</h3>
<c:forTokens var="tech" items="�ݰ��ұ�, ����亸,������,õ��������" delims=",">
	<p>
		�������� ���
		<c:out value="${tech}" />
	</p>
</c:forTokens>