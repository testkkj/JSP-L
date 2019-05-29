<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="templateTest.jsp">
		<jsp:param name="CONTENTPAGE" value="content.jsp"/>
	</jsp:forward>
</body>
</html>