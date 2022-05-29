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
	<script src="/js/summernote/summernote-lite.js"></script>
	<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
</head>
<body>
    
	<%@include file="../includes/subHeader.jsp" %>
		
	<div id="container">
		<h2 class="boardTitle">공지사항 등록</h2>
		
		<form:form modelAttribute="notice" action="register" id="notice" method="POST">
			<table class="boardRegister">
				<tr class="registerTitle">
					<td>제목</td>
					<td><form:input path="title" placeholder="제목을 입력하세요" /></td>
					<td><font color="red"><form:errors path="title" /></font></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="editordata" id="summernote"></textarea></td>
					<td><font color="red"><form:errors path="content" /></font></td>
				</tr>
			</table>
		</form:form>
		
		<div class="btnWrap">
			<button type="submit" id="btnRegister" class="boardBtn">등록하기</button>
			<button type="submit" id="btnList" class="boardBtn2">목록으로</button>
		</div>
		
		<script>
			$(document).ready(function() {
		
				var formObj = $("#notice");
				
				/* var token = $("meta[name='_csrf']").attr("content");
	            var header = $("meta[name='_csrf_header']").attr("content");
	            $(document).ajaxSend(function(e, xhr, options){
	                xhr.setRequestHeader(header, token);
	            }); */
				
				$('#summernote').summernote({
					height: 300, //에디터높이
					minHeight: null, //최소높이
					maxHeight: null, //최대 높이
					focus : true, //에디터 로딩 후 포커스를 맞출지 여부
					lang: "ko-KR", //한글 설정
					placeholder: '내용을 입력해주세요',
					callbacks: {	//여기 부분이 이미지를 첨부하는 부분
							onImageUpload : function(files) {
								uploadSummernoteImageFile(files[0],this);
							},
							onPaste: function (e) {
								var clipboardData = e.originalEvent.clipboardData;
								if (clipboardData && clipboardData.items && clipboardData.items.length) {
									var item = clipboardData.items[0];
									if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
										e.preventDefault();
									}
								}
							}
					}
				});
				
				//이미지 파일 업로드
				function uploadSummernoteImageFile(file, editor) {
					data = new FormData();
					data.append("file", file);
					$.ajax({
						data : data,
						type : "POST",
						url : "/notice/uploadSummernoteImageFile",
						contentType : false,
						processData : false,
						success : function(data) {
			            	//항상 업로드된 파일의 url이 있어야 한다.
							$(editor).summernote('insertImage', data.url);
						}
					});
				}
				
				/* 드래그로 파일추가 */
				$("div.note-editable").on('drop',function(e){
			         for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
			         	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
			         }
			        e.preventDefault();
			   	});
		
				$("#btnRegister").on("click", function() {
					formObj.attr("action", "/notice/register");
					formObj.attr("method", "post");
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