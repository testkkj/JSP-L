<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="write.js"></script>

<%request.setCharacterEncoding("utf-8");%>

<%
int num=0,ref=1,re_step=0,re_level=0;
int pageNum=1;

try{
	if(request.getParameter("num")!=null){
		num=Integer.parseInt(request.getParameter("num"));
		ref=Integer.parseInt(request.getParameter("ref"));
		re_step=Integer.parseInt(request.getParameter("re_step"));
		re_level=Integer.parseInt(request.getParameter("re_level"));
		pageNum=Integer.parseInt(request.getParameter("pageNum"));
	}
%>
<input type="hidden" id="num" value="<%=num%>">
<input type="hidden" id="ref" value="<%=ref%>">
<input type="hidden" id="re_step" value="<%=re_step%>">
<input type="hidden" id="re_level" value="<%=re_level%>">

<div id="writeForm" class="box"">
	<ul>
		<li><label for="subject">제목</label> <%if(num!=0) {%> <img
			src="../images/re.gif"> <%} %> <input id="subject" name="subject"
			type="text" size="50" placeholder="제목" maxlength="50">
		<li><label for="content">내용</label> <textarea id="content"
				rows="13" cols="50"></textarea>
		<li><label for="passwd">제목</label> <input id="passwd"
			name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자"
			maxlength="16">
		<li class="label2">
			<button id="regist" value="<%=pageNum %>">등록</button>
			<button id="cancle" value="<%=pageNum %>">취소</button>
	</ul>
</div>
<%}catch(Exception e){}%>