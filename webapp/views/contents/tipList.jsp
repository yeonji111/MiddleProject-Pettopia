<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="팁 게시판" name="title" />
</jsp:include>


<div id="tipListPage">
	<p class="text-center mt-5 mb-5 preconnect" style="font-size: 90px;">Tips</p>

	<div class="row" id="tipsItems" style="margin-left: 20%;">


		<!-- 팁 리스트 반복하여 보여주기 -->
		<c:forEach var="tip" items="${tips}">
			<a href = "/pet/tip/detail?num=${tip.num}">
			<div class="row mb-4 tips" id="tip">
				<div class="col-6 mx-5">
					<p class="row fs-5 py-4 fw-bold" id="tipsTitle" style="color:black;">${tip.title}</p>
					<p class="row" style="color: gray;" id="tipsContent" >${tip.content}</p>
				</div>
				<div class="col-4">
					<img src="${tip.image}" alt="이미지" class="rounded-4 my-4"
						id="tipsImg">
				</div>
			</div>
			</a>
		</c:forEach>
	</div>

	
			<!-- 페이지 링크 -->
		<div class="mt-5 mb-5 text-center">
			<a href="<%=request.getContextPath()%>/tip/list?currentPageNo=1"
				style="color: black;">처음</a>
			<c:if test="${pagination.currentPageNo > 1 }">
				<a
					href="<%=request.getContextPath() %>/tip/list?currentPageNo=${pagination.currentPageNo - 1}"
					style="color: black;">이전</a>
			</c:if>

			<c:if test="${pagination.currentPageNo <= 1 }">
				<a href="#" style="color: black;">이전</a>
			</c:if>


			<c:forEach begin="${pagination.firstPageNoOnPageList}"
				end="${pagination.lastPageNoOnPageList}" var="pageNo">
				<span style="margin: 5px;"> <c:choose>
						<c:when test="${pagination.currentPageNo eq pageNo}">
							<a href="/pet/tip/list?currentPageNo=${pageNo}"
								style="color: orange; font-weight: bold; border: 1px solid orange; padding: 6px;">${pageNo }</a>
						</c:when>
						<c:otherwise>
							<a href="/pet/tip/list?currentPageNo=${pageNo}"
								style="color: black;">${pageNo }</a>
						</c:otherwise>
					</c:choose>
				</span>
			</c:forEach>



			<c:if test="${pagination.currentPageNo < pagination.totalPageCount}">
				<a
					href="<%=request.getContextPath() %>/tip/list?currentPageNo=${pagination.currentPageNo + 1}"
					style="color: black;">다음</a>
			</c:if>
			<c:if
				test="${pagination.currentPageNo >= pagination.totalPageCount }">
				<a href="#" style="color: black;">다음</a>
			</c:if>
			<a
				href="<%=request.getContextPath() %>/tip/list?currentPageNo=${pagination.totalPageCount}"
				style="color: black;">마지막</a>

		</div>

<script>
    // 모든 #tipsContent 요소 선택
    let tipsContentElements = document.querySelectorAll("#tipsContent");

    // 각 요소에 대해 처리
    tipsContentElements.forEach(function(tipsContentElement) {
        // 요소의 텍스트 내용 가져오기
        let tipsContent = tipsContentElement.innerText;

        // 220자까지만 잘라서 다시 할당
        let truncatedContent = tipsContent.substring(0, 220);

        // 요소의 텍스트 내용을 220자까지 잘라진 내용으로 설정
        tipsContentElement.innerText = truncatedContent + "..."; // ... 추가
    });
</script>



	</body>

	</html>