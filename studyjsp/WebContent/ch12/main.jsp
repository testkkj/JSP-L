<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<div id="main_user_cert" class="box2">
	<div id="main_image" class="box">
		<img class="noborder" id="logo" src="molahalf.png" />
		<div id="main_auth" class="box">
			<jsp:include page="loginForm.jsp" />
		</div>
	</div>
	<div id="main_board" class="box2"><jsp:include
			page="main_board.jsp"></jsp:include>
	</div>