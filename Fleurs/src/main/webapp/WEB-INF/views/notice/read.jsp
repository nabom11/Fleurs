<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Notice</title>
</head>

<script src="/js/jQuery-3.3.1.min.js"></script>

<body>

	<div id="container">
		<!-- <h2 th:text="#{notice.header.read}">공지사항 상세보기</h2> -->
		
		<form id="notice" action="list.html" th:action="@{/notice/remove}" th:object="${notice}" method="POST">
			<input type="hidden" name="noticeNo" th:field="*{noticeNo}" />
			
			<div class="noticeTop">
				<div>공지</div><h2 th:text="*{title}" class="noticeTitle">글제목</h2>
				<!-- <div class="readWriter">작성자 <span th:text="*{writer}" ></span></div> -->
			</div>
			
			<div class="readContent">
				[(*{content})]
			</div>
		
		</form>
		
		<div>
			<button type="submit" id="btnEdit" th:text="#{action.edit}">편집</button>
			<button type="submit" id="btnRemove" th:text="#{action.remove}">삭제</button>
			<button class="boardBtn2"><a href="../board/list.html" th:href="@{/board/list}" th:text="#{action.list}" >목록으로</a></button>
		</div>
		
		<script>
			$(document).ready(function() {
		
				var formObj = $("#notice");
		
				console.log(formObj);
		
				$("#btnEdit").on("click", function() {
					var noticeNo = $("#noticeNo");
					var noticeNoVal = noticeNo.val();
					
					self.location = "modify?noticeNo=" + noticeNoVal;
				});
		
				$("#btnRemove").on("click", function() {
					formObj.attr("action", "remove");
					formObj.submit();
				});
		
				$("#btnList").on("click", function() {
					self.location = "list";
				});
		
			});
		</script>
	</div>

</body>
</html>
