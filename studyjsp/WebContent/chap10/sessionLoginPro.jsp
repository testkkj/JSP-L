<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="ch10.logon.LogonDBBean" %>
	
		<%
			String id = request.getParameter("idt");
			String passwd = request.getParameter("passwd");
			
			LogonDBBean logon = LogonDBBean.getInstance();
			int check = logon.userCheck(id, passwd);
			
			if(check==1){
				session.setAttribute("id", id);
				response.sendRedirect("sessionLogin.jsp");
			}else if(check==0){ %>
				<script>
					alert("비밀번호가 맞지 않습니다.");
					history.go(-1);
				</script>
			<% }else{ %>
				<script>
					alert("아이디 확인해라");
					history.go(-1);
				</script>
				<%}
		%>