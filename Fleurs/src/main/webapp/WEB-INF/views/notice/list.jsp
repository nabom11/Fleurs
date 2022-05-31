<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fleurs</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	<link href="/css/subStyle.css" rel="stylesheet" type="text/css">
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/script.js"></script>
	<style>
		
	</style>
</head>
<body>
    
	<%@include file="../includes/subHeader.jsp" %>
		
	<div id="container">
		<h2 class="boardTitle">공지사항</h2>
		
		<ul class=" noticeList">
			<li class="listTitle">
				<div>번호</div>
				<div>제목</div>
				<div>조회수</div>
				<div>등록일시</div>
			</li>
			<c:choose>
				<c:when test="${empty noticeList}">
					<li>
						List is empty.
					</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${noticeList}" var="notice">
						<li>
							<div>${notice.noticeNo}</div>
							<div><a href='/notice/read?noticeNo=${notice.noticeNo}'>${notice.title}</a></div>
							<div>${notice.views }</div>
							<div>${notice.writeDate}</div>
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
				<!-- <li>
					List is empty.
				</li> -->
				
				<%-- <li th:each="notice : ${noticeList}" class="boardNotice">
					<div><span class="noticeLabel">공지</span></div>
					<div><a href="read.html" th:href="@{|/notice/read?noticeNo=${notice.noticeNo}|}" th:text="${notice.title}">${notice.title}</a></div>
					<div th:text="#{notice.writer}">관리자</div>
					<div><span class="viewText" th:text="${notice.view}">조회수</span></div>
					<div th:text="${#temporals.format(notice.regDate, 'yy/MM/dd HH:mm')}"></div>
				</li>
				
				<li th:each="board : ${boardList}">
					<div th:text="${board.boardNo}">${board.boardNo}</div>
					<div><a href="read.html" th:href="@{|/board/read${pgrq.toUriString()}&boardNo=${board.boardNo}|}" th:text="${board.title}">${board.title}</a></div>
					<div th:text="${board.writer}">${board.writer}</div>
					<div><span class="viewText" th:text="${board.view}">${board.view}</span></div>
					<div th:text="${#temporals.format(board.regDate, 'yy/MM/dd HH:mm')}">등록일시</div>
				</li> --%>
			</ul>
			
			<%-- <div class="paging">
				<th:block th:if="${pgntn.prevPageable}" class="pagingArrow">
					<a th:href="@{|/board/list${pgrq.toUriStringByPage(pgntn.prevPageable.pageNumber + 1)}|}">◀</a>
				</th:block>
		
				<th:block th:each="p:${pgntn.pageableList}">
					<a href="list.html" th:href="@{|/board/list${pgrq.toUriStringByPage(p.pageNumber + 1)}|}" th:class="${p.pageNumber}+1 == ${pgrq.page} ? 'pagingBtn'">[[${p.pageNumber} + 1]]</a>
		            <!-- <a href="list.html" th:href="@{|/board/list${pgrq.toUriStringByPage(p.pageNumber + 1)}|}"><span th:unless="${p.pageNumber}+1 == ${pgrq.page}">[[${p.pageNumber} + 1]]</span></a> -->
				</th:block>
		
				<th:block th:if="${pgntn.nextPageable}" class="pagingArrow">
					<a href="list.html" th:href="@{|/board/list${pgrq.toUriStringByPage(pgntn.nextPageable.pageNumber + 1)}|}">▶</a>
				</th:block>
			</div>
			
			
			<form id="pgrq" action="list.html" th:action="@{|/board/list${pgrq.toUriStringForSearchAction(1)}|}" th:object="${pgrq}" method="GET">
				<select th:field="*{searchType}" class="searchOption">
					<option th:each="element : ${searchTypeCodeValueList}" th:value="${element.value}" th:text="${element.label}">제목</option>
				</select>
				
				<input type="text" name="keyword" th:field="*{keyword}" class="searchText" />
				<button id="searchBtn" th:text="#{action.search}">검색</button>
			</form> --%>
	</div>
        
        
	<%@include file="../includes/footer.jsp" %>

</body>
</html>