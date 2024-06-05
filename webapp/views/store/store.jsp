<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="스토어" name="title" />
</jsp:include>

<div id="storePage">

	<div class="text-center mb-3 my-4 mb-5 fs-5">
		<a
			class="categoryBtn mx-3 ${empty param.searchType && empty param.searchWord && empty param.category ? 'fs-2' : ''}"
			href="/pet/store/list" style="color: black;"> 전체 </a> <a
			class="categoryBtn mx-3 ${param.category == '영양제' ? 'fs-2':''}"
			href="/pet/store/list?searchType=&searchWord=&category=영양제"
			style="color: black;"> 영양제 </a> <a
			class="categoryBtn mx-3 ${param.category == '치약' ? 'fs-2':''}"
			href="/pet/store/list?searchType=미용&searchWord=&category=치약"
			style="color: black;"> 위생 </a> <a
			class="categoryBtn mx-3 ${param.category == '배변' ? 'fs-2':''}"
			href="/pet/store/list?searchType=&searchWord=&category=배변"
			style="color: black;"> 배변 </a> <a
			class="categoryBtn mx-3 ${param.category == '후드' ? 'fs-2':''}"
			href="/pet/store/list?searchType=야외&searchWord=&category=후드"
			style="color: black;"> 패션 </a> <a
			class="categoryBtn mx-3 ${param.searchType eq '리빙' and param.searchWord eq '이동장' and param.category eq '' ? 'fs-2':''}"
			href="/pet/store/list?searchType=리빙&searchWord=이동장&category="
			style="color: black;"> 기타 </a>
	</div>


	<form action="/store/list" method="get">
		<div id="photoBoardMain">
			<div id="photoBoard" class="container">
				<div class="row mb-3">
					<c:forEach var="store" items="${stores}">
						<div class="col-md-3">
							<div class="card mb-3" style="width: 299px; height: 500px">
								<a href="${store.link}" target="_blank"> <img
									src="${store.image}" class="card-img-top" alt=""
									style="width: 296px; height: 296px">
								</a>
								<div class="card-body">
									<h5 class="card-title">${store.title}</h5>
									<p class="card-text">${store.mainCategory}/${store.subCategory}</p>
									<div>${store.price}원</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


		<!-- 페이지 링크 -->

		<div class="mt-5 mb-5 text-center">
			<a
				href="/pet/store/list?currentPageNo=1&searchType=${searchType}&searchWord=${searchWord}&category=${category}"
				style="color: black;">처음</a>
			<c:if test="${pagination.currentPageNo > 1}">
				<a
					href="/pet/store/list?currentPageNo=${pagination.currentPageNo - 1}&searchType=${searchType}&searchWord=${searchWord}&category=${category}"
					style="color: black;">이전</a>
			</c:if>
			<c:if test="${pagination.currentPageNo <= 1}">
				<a href="#" style="color: black;">이전</a>
			</c:if>


			<c:forEach begin="${pagination.firstPageNoOnPageList}"
				end="${pagination.lastPageNoOnPageList}" var="pageNo">
				<span style="margin: 5px;"> <c:choose>
						<c:when test="${pagination.currentPageNo eq pageNo}">
							<a
								href="/pet/store/list?searchType=${searchType}&searchWord=${searchWord}&category=${category}&currentPageNo=${pageNo}"
								style="color: orange; font-weight: bold; border: 1px solid orange; padding: 6px;">${pageNo }</a>
						</c:when>
						<c:otherwise>
							<a
								href="/pet/store/list?searchType=${searchType}&searchWord=${searchWord}&category=${category}&currentPageNo=${pageNo}"
								style="color: black;">${pageNo }</a>
						</c:otherwise>
					</c:choose>
				</span>
			</c:forEach>


			<c:if test="${pagination.currentPageNo < pagination.totalPageCount}">
				<a
					href="/pet/store/list?currentPageNo=${pagination.currentPageNo + 1}&searchType=${searchType}&searchWord=${searchWord}&category=${category}"
					style="color: black;">다음</a>
			</c:if>
			<c:if test="${pagination.currentPageNo >= pagination.totalPageCount}">
				<a href="#" style="color: black;">다음</a>
			</c:if>
			<a
				href="/pet/store/list?currentPageNo=${pagination.totalPageCount}&searchType=${searchType}&searchWord=${searchWord}&category=${category}"
				style="color: black;">마지막</a>
		</div>

		<!-- 페이지 링크 -->





	</form>
</div>

</body>
</html>