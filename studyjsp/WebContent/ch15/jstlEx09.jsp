<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="../css/style.css" />

<h3>JSTL sql 태그예제 - query</h3>

<sql:query var="rs" dataSource="jdbc/jsptest">
select * from member
</sql:query>

<table>
	<tr class="label2">
		<c:forEach var="columnName" items="${rs.columnNames}">
			<th><c:out value="${columnNmae }" /></th>
		</c:forEach>
	</tr>
	<c:forEach var="row" items="${rs.rowsByIndex}">
		<tr>
			<c:forEach var="column" items="${row}" varStatus="i">
				<td><c:if test="${column!=null}">
						<c:out value="${coulumn}" />
					</c:if> <c:if test="${column==null}">
					&npsp;
</c:if></td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>