<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch12.board.BoardDBBean"%>
<%@ page import="ch12.board.BoardDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>

<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="list.js"></script>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	String id = "";
	int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) {
		pageNum = "1";
	}

	int count = 0;
	int currentPage = Integer.parseInt(pageNum);

	List<BoardDataBean> articleList = null;
	BoardDBBean dbPro = BoardDBBean.getInstance();
	count = dbPro.getArticleCount();

	if (count == (currentPage - 1) * pageSize) {
		currentPage -= 1;
	}

	int startRow = (currentPage - 1) * pageSize + 1;

	try {
		if (count > 0) {
			articleList = dbPro.getArticles(startRow, pageSize);
		}

		if (articleList.isEmpty()) {
			count = 0;
		}
	} catch (Exception e) {
	}
%>
<div id="list_head" class="box2">
	<h3 class="inline">
		글목록(전체 글:<%=count%>)
	</h3>
	<button id="new">글쓰기</button>
</div>

<%
	if (count == 0) {
%>
<div id="list_article" class="box2">
	<ul>
		<li><p>게시판에 저장된 글이 없습니다.
	</ul>
</div>
<%
	} else {
%>
<div id="list_article" class="box2">
	<%
		for (int i = 0; i < articleList.size(); i++) {
				BoardDataBean article = articleList.get(i);
	%>
	<ul>
		<li class="layout_f">
			<%
				String writer = article.getWriter();
						out.println(writer.substring(0, 4) + "****");
			%>
		
		<li class="layout_f">
			<%
				int wid = 0;
						if (article.getRe_level() > 0) {
							wid = 5 * (article.getRe_level());
			%> <img src="../images/level.gif" width="<%=wid%>"> <img
			src="../images/re.gif"> <%
 	} else {
 %> <img src="../images/level.gif" width="<%=wid%>" height="16"> <%
 	}
 %> <%
 	int num = article.getNum();
 			int ref = article.getRef();
 			int re_step = article.getRe_step();
 			int re_level = article.getRe_level();
 %> <%=article.getSubject()%>
			<p class="date"><%=sdf.format(article.getReg_date())%><br>
			<pre><%=article.getContent()%></pre><br> <%
 	try {
 				id = (String) session.getAttribute("id");
 			} catch (Exception e) {
 			}
 %> <%
 	if (id.equals(writer)) {
 %>
			<button id="edit" name="<%=num + "," + pageNum%>"
				onclick="edit(this)">수정</button>
			<button id="delete" name="<%=num + "," + pageNum%>"
				onclick="del(this)">삭제</button> <%
 	} else {
 %>
			<button id="reply"
				name="<%=num + "," + ref + "," + re_step + "," + re_level + "," + pageNum%>"
				onclick="reply(this)">댓글쓰기</button> <%
 	}
 %>
		
	</ul>
	<%
		}
	%>
</div>
<%
	}
%>

<div id="jump" class="box3">
	<%
		if (count > 0) {
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int startPage = 1;

			if (currentPage % pageSize != 0) {
				startPage = (int) (currentPage / pageSize) * pageSize + 1;
			} else {
				startPage = ((int) (currentPage / pageSize) - 1) * pageSize + 1;
			}

			int pageBlock = 3;
			int endPage = startPage + pageBlock - 1;

			if (endPage > pageCount) {
				endPage = pageCount;
			}

			if (startPage > pageBlock) {
	%>
	<button id="juP" name="<%=startPage - pageBlock%>" onclick="p(this)"
		class="w2">이전</button>
	&nbsp;
	<%
		}
			for (int i = startPage; i <= endPage; i++) {
				if (currentPage == i) {
	%>
	<button id="ju" name="<%=i%>" onclick="p(this)" class="w1"><%=i%></button>
	<%
		} else {
	%>
	<button id="ju" name="<%=i%>" onclick="p(this)" class="w"><%=i%></button>
	<%
		}
	%>
	&nbsp;
	<%
		}
			if (endPage < pageCount) {
	%>
	&nbsp;
	<button id="juN" name="<%=startPage + pageBlock%>" onclick="p(this)"
		class="w2">다음</button>
	<%
		}
		}
	%>
</div>