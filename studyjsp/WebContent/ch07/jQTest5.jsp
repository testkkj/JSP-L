<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>jQuery Ajax메소드 -load() 응답처리</title>
<style type="text/css">
	#result{
		width  : 200px;
		height : 200px;
		border : 5px double #6699FF;
	}
</style>
<script src="../js/jquery-3.4.0.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			$("#result").load("xhrTest3.txt",function(response,stu,xhr){
				if(stu=="success")
					alert("로드 성공!");
				if(stu=="error")
					alert("에러: " +xhr.status + ": " + xhr.stu);
			});
		});
	});
</script>
</head>
<body>
	<button id="b1">결과</button>
	<div id="result"></div>
</body>
</html>