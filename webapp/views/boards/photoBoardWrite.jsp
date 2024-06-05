<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="게시글 등록" name="title" />
</jsp:include>

<style>
</style>

<div class="my-4" style="width: 65%; margin: auto;">
	<form action='<%=request.getContextPath()%>/boards/photoBoardWrite'
		method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label style="width: 100%;" for="validationCustom03"> <input
				type="text" name="title"
				class="form-control my-2 border border-dark-subtle" placeholder="제목"
				id="inputTitle" maxlength='30'>
			</label>
		</div>
		<div class='content'>
			<jsp:include page="note.jsp" />
		</div>

		<div class="col text-end" id="title">
			<label class="mt-3" style="float: left;"> 
				<input type="file" name="uploadFile" enctype="multipart/form-data">
			</label>
			<button type="button" class="btn btn btn-success text-white"
				id="cancelBtn" type="button" style="border: 1px solid black;">취소</button>
			<button type="submit" class="btn btn-warning text-white my-2"
				id="writeBtn" type="submit" style="border: 1px solid black;">등록</button>
		</div>

	</form>
</div>




</body>

</html>