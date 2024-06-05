<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="유기동물 정보" name="title" />
</jsp:include>

<div id="adopNotiPage">

	<body>


		<main class="container" style="width: 80%;">
			<!-- 입양 전 주의사항 안내 부분 -->
			<h3 class="mt-5 mb-3 text-center fw-bold">입양 전 주의사항</h3>
			<ul class="px-5 mt-5 mb-5">
				<li>신청서 검토는 최대 7일 정도 소요될 수 있습니다.</li>
				<li>입양 신청이 반려되는 경우 문자로 안내해 드리고 있습니다.</li>
				<li>입양을 결정하기 전 센터에 방문을 원하시는 경우 아래의 번호로 미리 연락을 주시면 원활한 상담을 도와드릴
					수 있습니다.</li>
				<li>입양 후 7일/30일/6개월 단위로 사후관리 상담을 진행하고 있습니다.</li>
				<li>입양을 신청하기 전 반려동물을 양육하기에 충분한 준비가 되어있는지 신중하게 고민 후 결정해 주시기
					바랍니다.</li>
			</ul>

			<!-- 센터 간략 소개 부분 -->
			<div class="row text-center">
				<div
					class="col mt-3 bg-warning py-2 px-4 text-white rounded-4 fw-bold"
					style="font-size: smaller; height: max-content; width: max-content; border: 2px solid black;">
					<p class="mt-3">
						<i class="fa-solid fa-phone"></i> <strong>문의</strong> 042-719-8850
						<span class="px-3"></span> | <span class="px-3"></span> <i
							class="fa-sharp fa-solid fa-location-dot px-2"></i><strong>방문</strong>
						대전 중구 계룡로 825 희영빌딩 1층 펫토피아
					</p>
				</div>
			</div>
			<!-- 입양 절차 이미지 -->
			<div class="row">
				<div class="col-5 mt-5">
					<img
						src="https://img.freepik.com/free-photo/shallow-focus-vertical-shot-of-a-cute-golden-retriever-puppy-sitting-on-a-grass-ground_181624-27259.jpg"
						alt="유기동물입양절차안내이미지" style="width: 100%;">
				</div>

				<!-- 입양 절차 안내 부분 -->
				<div class="col-7">

					<!-- <div class="mt-5 bg-warning">입양 절차 안내</div>/ -->
					<div class="row mt-5 px-2">
						<div
							class="col-1 bg-warning fs-5 py-3 text-white rounded-3 text-center fw-bold">확인</div>
						<div class="col-11 py-3 mt-3">펫토피아 사이트 또는 직접 방문하여 보호 동물 확인</div>
					</div>
					<h1 class="px-1 text-center fw-bold">↓</h1>
					<div class="row mt-5 px-2">
						<div
							class="col-1 bg-warning fs-5 py-3 text-white rounded-3 text-center fw-bold">신청</div>
						<div class="col-11 py-3 mt-2">펫토피아 사이트에서 입양신청하기 양식에 따라 신청서
							작성 또는 센터에 직접 방문하여 입양 신청서 작성</div>
					</div>
					<h1 class="px-1 text-center fw-bold">↓</h1>
					<div class="row mt-5 px-2">
						<div
							class="col-1 bg-warning fs-5 py-3 text-white rounded-3 text-center fw-bold">선정</div>
						<div class="col-11 py-3 mt-2">입양 신청서를 토대로 가장 적합한 환경의 신청자분께
							연락하여 전화 상담 및 방문 상담 진행</div>
					</div>
					<h1 class="px-1 text-center fw-bold">↓</h1>
					<div class="row mt-5 px-2">
						<div
							class="col-1 bg-warning fs-5 py-3 text-white rounded-3 text-center fw-bold">입양</div>
						<div class="col-11 py-3 mt-3">입양 확정 후 방문하여 입양 확인서 및 동물등록신청서
							작성</div>
					</div>
				</div>
			</div>
			<div style="width: 50%; margin-left: 25%;" class="row text-center">
				<!-- 로그인 상태중일때 -->
				<c:if test="${not empty sessionScope.member}">
					<a href="/pet/adopt/form?num=${num }"
						class="col-8 mt-5 mb-5 text-center">
						<button class="fw-bold p-3 bg-primary text-white rounded-4"
							style="width: 100%;">입양 신청서 작성하기</button>
				</c:if>

				<!-- 비로그인 상태중일때, 로그인화면으로 이동 -->
				<c:if test="${empty sessionScope.member}">
					<a href="/pet/member/login" class="col-8 mt-5 mb-5 text-center">
						<button class="fw-bold p-3 bg-primary text-white rounded-4"
							style="width: 100%;">입양 신청서 작성하기</button>
				</c:if>



				</a> <a href="/pet/adopt/list" class="col-4 mt-5 mb-5 text-center">
					<button class="fw-bold p-3 text-white rounded-4"
						style="width: 100%; background-color: orange;">목록</button>
				</a>
			</div>
		</main>

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
</div>

</html>