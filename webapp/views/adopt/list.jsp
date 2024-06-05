<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="유기동물 목록" name="title" />
</jsp:include>

<div id="adoptList">
	<main class="mt-5">
		<div id="main">
			<div
				class="rounded-5 mb-5 row fw-bold text-center justify-content-center bg-success bg-opacity-75 text-white"
				style="width: 30%; margin-left: 35%;">
				<p class="fs-1 mt-1">날 데려 가시개</p>
				<p class="fs-5 mb-2 fst-italic">"사지 말고 입양하세요"</p>
			</div>


			<div id="animalBoard" class="container">
				<c:forEach var="row" begin="0" end="3">
					<div class="row mb-3">
						<c:forEach var="col" begin="0" end="3">
							<div class="col animals">
								<c:forEach var="animal" items="${adoptList}" varStatus="status">
									<c:if test="${status.index == row * 4 + col}">
										<a href="/pet/adopt/view?num=${animal.num }">
											<div class="card" id="${animal.num}">
												<img src="${animal.filePath}" class="card-img-top" alt=""
													style="width: 300px; height: 300px">
												<div class="card-body">
													<h5 class="card-title">${animal.species}</h5>
													<p class="card-text">${animal.classification}/${animal.gender}/${animal.age}</p>
												</div>
											</div>
										</a>
									</c:if>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- 페이지 링크 -->
		<div class="text-center mt-5 mb-5">
			<a href="/pet/adopt/list?currentPageNo=1" style="color: black;">처음</a>
			<c:if test="${pagination.currentPageNo > 1 }">
				<a
					href="/pet/adopt/list?currentPageNo=${pagination.currentPageNo - 1 }"
					style="color: black;">이전</a>
			</c:if>
			<c:if test="${pagination.currentPageNo <= 1 }">
				<a href="#" style="color: black;">이전</a>
			</c:if>

			<c:forEach begin="${pagination.firstPageNoOnPageList}"
				end="${pagination.lastPageNoOnPageList}" var="pageNo">
				 <span style="margin: 5px;">
				<c:choose>
					<c:when test="${pagination.currentPageNo eq pageNo}">
						<a href="/pet/adopt/list?currentPageNo=${pageNo}"
							style="color: orange; font-weight: bold; border: 1px solid orange; padding: 6px;">${pageNo }</a>
					</c:when>
					<c:otherwise>
						<a href="/pet/adopt/list?currentPageNo=${pageNo}"
							style="color: black;">${pageNo }</a>
					</c:otherwise>
				</c:choose>
				</span>
			</c:forEach>

			<c:if test="${pagination.currentPageNo < pagination.totalPageCount}">
				<a
					href="/pet/adopt/list?currentPageNo=${pagination.currentPageNo + 1}"
					style="color: black;">다음</a>
			</c:if>
			<c:if test="${pagination.currentPageNo >= pagination.totalPageCount}">
				<a href="#"style="color: black;">다음</a>
			</c:if>

			<a href="/pet/adopt/list?currentPageNo=${pagination.totalPageCount }"
				style="color: black;">마지막</a>
		</div>


	</main>
</div>

<footer>
	<div id="kakao-talk-channel-chat-button"></div>
</footer>

<!-- 스크립트에서 Kakao SDK 불러오기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- 카카오톡 상담하기 버튼 생성 스크립트 -->
<script type="text/javascript">
	Kakao.init('ffe886fcaa59516f2b2fc313c8f23117');
	Kakao.Channel.createChatButton({
		container : '#kakao-talk-channel-chat-button', // 버튼이 표시될 위치 지정
		channelPublicId : '_xcfJWG' // 카카오톡 채널 홈 URL에 명시된 id로 설정
	});
</script>

</body>

</html>