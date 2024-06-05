<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="공지사항" name="title" />
</jsp:include>
<style>
#boardTitle {
	color: black;
}
</style>

<div id="noticeBoardListPage">
	<h1 class="preconnect text-center mt-5" style="font-size: 60px;">공지사항</h1>
	<!--  글쓰기, 검색 버튼 -->
	<div style="margin-left: 60%" class="mb-2">

		<c:if test="${sessionScope.member.id eq 'adminadmin'}">
			<!--  <label> 제목 <input type="text" name="searchWord"
	placeholder="검색어">
</label>
<button type="submit"
	class="btn btn-md  text-white bg-success btn-outline-dark">검색</button>-->
			<a href="<%=request.getContextPath()%>/boards/write">
				<button class="btn bg-warning btn-outline-dark mb-3"
					style="margin-left: 30%;">공지글 등록</button>
			</a>
		</c:if>
	</div>


	<div class="text-center">
		<div id="noticeBoardMain">
			<table id="noticeBoardTable" class="text-center">
				<tr class="text-white" style="margin-top: 0">
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>등록일</th>
				</tr>


				<c:forEach var="board" items="${boards}">
					<tr>
						<td>${board.num}</td>
						<td><a
							href="<%=request.getContextPath()%>/noti/view?num=${board.num}"
							id="boardTitle">${board.title}</a></td>
						<td>${board.nickname}</td>
						<td>${board.createDate}</td>
					</tr>
				</c:forEach>
			</table>

		</div>

		<!-- 페이지 링크 -->
		<div class="mt-5 mb-5 text-center">
			<a href="<%=request.getContextPath()%>/noti/list?currentPageNo=1"
				style="color: black;">처음</a>
			<c:if test="${pagination.currentPageNo > 1 }">
				<a
					href="<%=request.getContextPath() %>/noti/list?currentPageNo=${pagination.currentPageNo - 1}"
					style="color: black;">이전</a>
			</c:if>

			<c:if test="${pagination.currentPageNo <= 1 }">
				<a href="#" style="color: black;">이전</a>
			</c:if>


			<c:forEach begin="${pagination.firstPageNoOnPageList}"
				end="${pagination.lastPageNoOnPageList}" var="pageNo">
				<span style="margin: 5px;"> <c:choose>
						<c:when test="${pagination.currentPageNo eq pageNo}">
							<a href="/pet/noti/list?currentPageNo=${pageNo}"
								style="color: orange; font-weight: bold; border: 1px solid orange; padding: 6px;">${pageNo }</a>
						</c:when>
						<c:otherwise>
							<a href="/pet/noti/list?currentPageNo=${pageNo}"
								style="color: black;">${pageNo }</a>
						</c:otherwise>
					</c:choose>
				</span>
			</c:forEach>



			<c:if test="${pagination.currentPageNo < pagination.totalPageCount}">
				<a
					href="<%=request.getContextPath() %>/noti/list?currentPageNo=${pagination.currentPageNo + 1}"
					style="color: black;">다음</a>
			</c:if>
			<c:if
				test="${pagination.currentPageNo >= pagination.totalPageCount }">
				<a href="#" style="color: black;">다음</a>
			</c:if>
			<a
				href="<%=request.getContextPath() %>/noti/list?currentPageNo=${pagination.totalPageCount}"
				style="color: black;">마지막</a>

		</div>
	</div>
</div>

<script>
	
</script>

</body>

</html>