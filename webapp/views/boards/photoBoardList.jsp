<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="후기 게시판" name="title" />
</jsp:include>

<div id="photoBoardListPage">
	<p class="preconnect text-center mt-5" style="font-size: 70px;">
		입양 후기 게시판 <i class="fa-solid fa-paw"></i>
	</p>
	<p class="fst-italic text-center mb-5">
		당신의 반려동물과의 특별한 이야기를 공유해주세요! <br> 펫토피아 입양 후기 게시판은 여러분의 따뜻한 이야기로 가득
		차 있습니다. <br> 입양 후기를 통해 다른 이들에게 영감을 주고, 함께 나누는 소중한 공간이 되어보세요. <br>
		당신의 이야기가 누군가에게 희망과 행복을 전달할 수 있습니다.
	</p>
	<form action="/pet/photo/list" method="get">
		<div id="photoBoardMain" class="mt-3 mb-5">
			<div class="row mb-2" style="margin-left: 19%;">

				
				<c:if test="${sessionScope.member.id != null}">
					<a href="<%=request.getContextPath()%>/boards/photoBoardWrite"
						id="goWrite" class="col-1 btn bg-warning mb-3 btn-outline-dark">글쓰기</a>
				</c:if>

			</div>

			<div id="photoBoard" class="container w-100 py-3 px-3 rounded-3"
				style="border: 1px solid #ddd; background-color: rgba(250, 235, 215, 0.274);">

				<div class="row mb-3">
					<c:forEach var="photoBoard" items="${PhotoBoards}">
						<div class="col-md-3">
							<div class="card mb-3" style="width: 299px; height: 400px">
								<a
									href="<%=request.getContextPath()%>/photo/view?num=${photoBoard.num}">
									<c:if test="${empty photoBoard.filepath}">
										<img id="preview"
											src="${pageContext.request.contextPath }/images?filename=default_image.jpg"
											alt="기본 이미지" style="max-width: 300px; max-height: 300px;">
									</c:if> <c:if test="${not empty photoBoard.filepath}">
										<img
											src="${pageContext.request.contextPath }/images?filename=${photoBoard.filepath}"
											class="card-img-top" alt=""
											style="width: 296px; height: 296px">
									</c:if>
								</a>

								<div class="card-body">
									<h5 class="card-title">${photoBoard.title}</h5>
									<p class="card-text">${photoBoard.nickname}/${photoBoard.createDate}</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

			<!-- 페이지 링크 -->
		<div class="mt-5 mb-5 text-center">
			<a href="<%=request.getContextPath()%>/photo/list?currentPageNo=1"
				style="color: black;">처음</a>
			<c:if test="${pagination.currentPageNo > 1 }">
				<a
					href="<%=request.getContextPath() %>/photo/list?currentPageNo=${pagination.currentPageNo - 1}"
					style="color: black;">이전</a>
			</c:if>

			<c:if test="${pagination.currentPageNo <= 1 }">
				<a href="#" style="color: black;">이전</a>
			</c:if>


			<c:forEach begin="${pagination.firstPageNoOnPageList}"
				end="${pagination.lastPageNoOnPageList}" var="pageNo">
				<span style="margin: 5px;"> <c:choose>
						<c:when test="${pagination.currentPageNo eq pageNo}">
							<a href="/pet/photo/list?currentPageNo=${pageNo}"
								style="color: orange; font-weight: bold; border: 1px solid orange; padding: 6px;">${pageNo }</a>
						</c:when>
						<c:otherwise>
							<a href="/pet/photo/list?currentPageNo=${pageNo}"
								style="color: black;">${pageNo }</a>
						</c:otherwise>
					</c:choose>
				</span>
			</c:forEach>



			<c:if test="${pagination.currentPageNo < pagination.totalPageCount}">
				<a
					href="<%=request.getContextPath() %>/photo/list?currentPageNo=${pagination.currentPageNo + 1}"
					style="color: black;">다음</a>
			</c:if>
			<c:if
				test="${pagination.currentPageNo >= pagination.totalPageCount }">
				<a href="#" style="color: black;">다음</a>
			</c:if>
			<a
				href="<%=request.getContextPath() %>/photo/list?currentPageNo=${pagination.totalPageCount}"
				style="color: black;">마지막</a>

		</div>
	</form>
</div>

<script>
	function previewImage(event) {
		var input = event.target;
		var preview = document.getElementById('preview');

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				preview.src = e.target.result;
			};

			reader.readAsDataURL(input.files[0]);
		} else {
			preview.src = "default_image.jpg"; // 파일 선택하지 않았을 때 기본 이미지로 변경
		}
	}
</script>


</body>

</html>