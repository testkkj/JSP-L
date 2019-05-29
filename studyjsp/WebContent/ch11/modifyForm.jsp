<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch11.logon.LogonDataBean"%>
<%@ page import="ch11.logon.LogonDBBean"%>

<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="modify.js"></script>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	String id = (String) session.getAttribute("id");
	String passwd = request.getParameter("passwd");

	LogonDBBean manager = LogonDBBean.getInstance();
	LogonDataBean m = manager.getMember(id, passwd);

	try {
%>

<div id="regForm" class="box">
	<ul>
		<li><p class="center">회원 정보 수정
		<li><label for="id">아이디</label> <input id="id" name="id"
			type="email" size="20" maxlength="50" value="<%=id%>" readonly
			disable></li>
		<li><label for="passwd">비밀번호</label> <input id="passwd"
			name="passwd" type="password" size="20" maxlength="16"
			placeholder="6~16자 숫자/문자"></li>
		<li><label for="name">이름</label> <input id="name" name="name"
			type="text" size="20" maxlength="10" value="<%=m.getName()%>">
		</li>
		<li><label for="address">주소</label> <input id="address"
			name="address" type="text" size="30" maxlength="50"
			value="<%=m.getAddress()%>"></li>
		<li><label for="tel">전화번호</label> <input id="tel" name="tel"
			type="tel" size="20" maxlength="20" value="<%=m.getTel()%>">
		</li>
		<li class="label2"><button id="modifyProcess">수정</button>
			<button id="cancle">취소</button></li>
	</ul>
</div>
<%
	} catch (Exception e) {
	}
%>