<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="오시는길" name="title" />
</jsp:include>

<!-- 글 내용 -->
<div id="boardDetailMain">
	<table class="mt-5 py-5 justify-content-center" id="notiMain">
		<tr id="contentHead">
			<th class="col-4 py-3 px-5">${photo.id}</th>
			<th class="col-5 fs-2">${photo.title}</th>
			<th class="col-3 px-5">${photo.createDate}</th>
		</tr>
		<tr id="contentMain">
			<td colspan="3">
				<div id="contentSpace">${photo.content}</div>
			</td>
		</tr>

	</table>

	<!-- 댓글 -->
	<div id="reply">
		<div style="border-bottom: 1px solid #ddd; width: 65%;"
			class="py-3 fw-bold fs-5">
			<i class="fa-solid fa-comment"></i> 댓글
		</div>

		<table id="viewComment" class="mb-1 row">
			<c:forEach var="reply" items="${comment}">
				<tr class="my-1 mb-1">
					<td class="py-2 "
						style="background-color: #fff8deaf; width: 100px;"><strong>${reply.id}</strong></td>
					<td class="py-3 my-2">${reply.content}(작성일자:
						${reply.commentDate}) <c:if
							test="${sessionScope.member.id eq reply.id or member.id eq 'adminadmin'}">
				
							<!-- 삭제 버튼 -->
							<form action='<%=request.getContextPath()%>/photoComment/delete'
								method="get">
								<input type="hidden" name="num" value="${reply.commentNum}">
								<input type="hidden" name="pageNo" value="${photo.num}">
								<button type="submit"
									style="background-color: white; border: 1px solid #FFFFFF; color: red; font-weight: bold; margin-left: 75%"; >삭제</button>
							</form>
						</c:if>

					</td>

				</tr>
			</c:forEach>
		</table>

		<c:if test="${not empty sessionScope.member}">
			<div id="writeComment" class="row mb-5">
				<form action='<%=request.getContextPath()%>/photoComment/write'
					method="post">
					<input type="hidden" name="num" value="${photo.num}"> <input
						type="hidden" name="id" value="${sessionScope.member.id}">
					<div class="row">
						<textarea id="commentArea" class="col-7 mt-5"
							placeholder="명예훼손, 개인정보 유출, 분쟁유발, 허위사실 유포 등의 글은 법률에 의해 처벌 받을 수 있습니다. 
건전한 커뮤니티를 위해 자제를 당부 드립니다."
							cols="80" rows="3" name="content"></textarea>
						<button id="commentBtn"
							class="col-1 mx-1 btn btn-outline-dark mt-5 fs-4 text-white"
							style="background-color: #198754" type="submit">등록</button>
					</div>
				</form>
			</div>
		</c:if>
	</div>
	<div class="row mb-5 mt-3">

		<div class="col-3"></div>

		<div class="col-3">
			<div class="row w-50 mt-3 text-center">
				<c:if test="${sessionScope.member.id == photo.id || sessionScope.member.id eq 'adminadmin'}">
					<c:set var="isOwner" value="true" />
				</c:if>

			<c:if test="${isOwner == 'true'}">
					<a href="/pet/photo/delete?num=${photo.num}"class="col">
						<button class="btn btn-md bg-danger bg-gradient col mx-2 fw-bold" 
							id="deleteBtn" type="button" style=" width: 100%;">삭제</button>
					</a>
					<a href="/pet/photo/update?num=${photo.num}" class="col">
						<button class="btn btn-md bg-secondary bg-gradient col fw-bold"
							id="modifyBtn" type="submit" style=" width: 100%;">수정</button>
					</a>
				</c:if>

			</div>
		</div>

		<div class="col-2"></div>

		<div class="col-4">
			<button id="goBoardList" class="btn btn-outline-dark">목록</button>

		</div>

	</div>
</div>
<input type="text" id="modifyCheck" style="display: none;">
<input type="text" id="openIdCheck" style="display: none;">
<input type="text" id="openerType" style="display: none;">



<script>
	
</script>
</body>

</html>