<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="게시글 등록" name="title" />
</jsp:include>
<div class="my-4" style="width: 65%; margin: auto;">
<div style = "display: none;"> ${board.num}</div>
	<form action = '<%=request.getContextPath() %>/noti/update' method="post">
		<div class="form-group">
			<label style="width: 100%;" for="validationCustom03">
			 <input
				type="text" name = "title" class="form-control my-2 border border-dark-subtle"
				placeholder="제목" id="inputTitle" maxlength='30'>
			<input type="hidden" name ="num" value = "${board.num}">
			</label>
		</div>
		<div class='content'>
			<jsp:include page="note.jsp" />
		</div>
		<div class="text-end row">
			<a href = "/pet/noti/list">
			<button type="button" class="col-1 btn btn btn-success text-white"
				id="cancelBtn" type="button" style="border: 1px solid black;">취소</button></a>
			<button type="submit"  class="col-1 btn btn-warning text-white my-2"
				id="writeBtn" style="border: 1px solid black;">수정</button>
			
		</div>
	</form>
</div>