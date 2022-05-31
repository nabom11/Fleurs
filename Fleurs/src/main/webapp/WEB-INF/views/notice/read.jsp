<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<body>

	<%@include file="../includes/subHeader.jsp" %>
	
	<div id="container">
		
		<form:form modelAttribute="notice" id="notice" action="read" method="POST" class="readForm">
			<form:hidden path="noticeNo" />
			<%-- <input type="hidden" name="boardNo" th:field="*{boardNo}" />
			<input type="hidden" name="page" th:value="${pgrq.page}" />
			<input type="hidden" name="sizePerPage" th:value="${pgrq.sizePerPage}" />
			
			<input type="hidden" name="searchType" th:value="${pgrq.searchType}" />
			<input type="hidden" name="keyword" th:value="${pgrq.keyword}" /> --%>
		
			<div class="readTop">
				<h2 class="readTitle">${notice.title }</h2>
				<!-- <div class="readWriter">작성자 <span th:text="*{writer}" ></span></div> -->
			</div>
			
			<div class="readContent">
				${notice.content }
			</div>
		</form:form>
		
		<div class="btnWrap">
		    <button type="submit" id="btnEdit" class="boardBtn">편집</button>
		    <button type="submit" id="btnRemove" class="boardBtn2">삭제</button>
			<button type="submit" id="btnList" class="boardBtn2">목록으로</button>
		</div>
		
		<script>
			$(document).ready(function() {
		
				var formObj = $("#notice");
		
				$("#btnEdit").on("click", function() {
					var noticeNo = $("#noticeNo");
					var noticeNoVal = boardNo.val();
					
					self.location = "/notice/modify?noticeNo=" + noticeNoVal;
				});
		
				$("#btnRemove").on("click", function() {
					formObj.attr("action", "/notice/remove");
					formObj.submit();
				});
		
				$("#btnList").on("click", function() {
					self.location = "list";
				});
		
			});
		</script>
	</div>
	
	<%@include file="../includes/footer.jsp" %>

</body>
</html>
