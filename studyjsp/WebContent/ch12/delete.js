var wStatus = true;

$(document).ready(function() {
	formCheckIt();
	if (wStatus) {
		var pageNum = $("#delete").val();

		var query = {
			passwd : $("#passwd").val(),
			num : $("#num").val()
		};

		$.ajax({
			type : "POST",
			url : "deletePro.jsp",
			data : query,
			success : function(data) {
				if (data == 1) {
					alert("글이 삭제되었습니다.");
					var query = "list.jsp?pageNum=" + pageNum;
					$("#main_board").load(query);
				} else {
					alert("비밀번호 틀림.");
					$("#passwd").val();
					$("#passwd").focus();
				}
			}
		});
	}

	$("#cancle").click(function() {
		var pageNum = $("#cancle").val();
		var query = "list.jsp?pageNum=" + pageNum;
		$("#main_board").load(query);
	});
});

function formCheckIt() {
	wStatus = true;
	if (!$.trim($("#passwd").val())) {
		alert("비밀번호를 입력하세요.");
		$("#passwd").focus();
		wStatus = false;
		return false;
	}
}