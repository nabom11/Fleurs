<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Notice</title>
</head>

<script src="/js/jQuery-3.3.1.min.js"></script>

<body>

	<%@include file="../includes/subHeader.jsp" %>
	
	<div id="container">
		<!-- <h2 th:text="#{board.header.read}">회원게시판 상세보기</h2> -->
		
		<form:form modelAttribute="notice" id="notice" action="read"method="POST" class="readForm">
			<form:hidden path="noticeNo" />
			<%-- <input type="hidden" name="boardNo" th:field="*{boardNo}" />
			<input type="hidden" name="page" th:value="${pgrq.page}" />
			<input type="hidden" name="sizePerPage" th:value="${pgrq.sizePerPage}" />
			
			<input type="hidden" name="searchType" th:value="${pgrq.searchType}" />
			<input type="hidden" name="keyword" th:value="${pgrq.keyword}" /> --%>
		
			<div class="readTop">
				<h2 class="readTitle">${noticeList.title }</h2>
				<!-- <div class="readWriter">작성자 <span th:text="*{writer}" ></span></div> -->
			</div>
			
			<div class="readContent">
				[(*${noticeList.content })]
			</div>
		</form:form>
		
		<%-- <div th:with="pinfo=${#authentication.principal}">
			
			<th:block sec:authorize="hasRole('ADMIN')">
				<button type="submit" id="btnRemove" th:text="#{action.remove}" class="boardBtn2">삭제</button>
			</th:block>
		
			<th:block sec:authorize="hasRole('MEMBER')">
		       <th:block th:if="${pinfo.username eq board.writer}">
		       	<button type="submit" id="btnEdit" th:text="#{action.edit}" class="boardBtn">편집</button>
		       	<button type="submit" id="btnRemove" th:text="#{action.remove}" class="boardBtn2">삭제</button>
		       </th:block>
			</th:block>
		
			<button type="submit" id="btnList" th:text="#{action.list}" class="boardBtn2">목록으로</button>
		</div> --%>
		
		<!-- <script>
			$(document).ready(function() {
		
				var formObj = $("#notice");
		
				$("#btnEdit").on("click", function() {
					var boardNo = $("#noticeNo");
					var boardNoVal = boardNo.val();
					
					self.location = "/board/modify[(${pgrq.toUriString()})]" + "&boardNo=" + boardNoVal;
				});
		
				$("#btnRemove").on("click", function() {
					formObj.attr("action", "/notice/remove");
					formObj.submit();
				});
		
				$("#btnList").on("click", function() {
					self.location = "/board/notice[(${pgrq.toUriString()})]";
				});
		
			});
		</script> -->
	</div>
	
	<%@include file="../includes/footer.jsp" %>

</body>
</html>
