var wStatus = true;

$(document).ready(function() {

	$("#update").click(function() {
		formCheckIt();
		if (wStatus) {
			var pageNum = $("#update").val();

			var query = {
				subject : $("#subject").val(),
				content : $("#content").val(),
				passwd : $("#passwd").val(),
				num : $("#num").val()
			};

			$.ajax({
				type : "POST",
				url : "updatePro.jsp",
				data : query,
				success : function(data) {
					if (data == 1) {
						alert("글이 수정되었습니다.");
						var query = "list.jsp?pageNum=" + pageNum;
						$("#main_board").load(query);
					} else {
						alert("비밀번호 틀림.");
						$("#passwd").val("");
						$("#passwd").focus();
					}
				}
			});
		}
	});

	$("#cancle").click(function() {
		var pageNum = $("#cancle").val();
		var query = "list.jsp?pageNum=" + pageNum;
		$("#main_board").load(query);
	});
});

function formCheckIt() {
	wStatus = true;
	if (!$.trim($("#subject").val())) {
		alert("제목을 입력하세요.");
		$("#subject").focus();
		wStatus = false;
		return false;
	}

	if (!$.trim($("#content").val())) {
		alert("내용을 입력하세요.");
		$("#content").focus();
		wStatus = false;
		return false;
	}

	if (!$.trim($("#passwd").val())) {
		alert("비밀번호를 입력하세요.");
		$("#passwd").focus();
		wStatus = false;
		return false;
	}
}