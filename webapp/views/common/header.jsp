<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${param.title}</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="util.js"></script>


<style>
@import
	url('https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Dongle&family=Gamja+Flower&family=Gasoek+One&display=swap')
	;

#work {
	width: 200px;
	height: 200px;
	border-radius: 20%;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

.dropdown-menu {
	list-style: none;
	overflow: hidden;
}

.btn {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-weight: bold;
}

.btnw {
	color: white;
}

.preconnect {
	font-family: "Gasoek One", sans-serif;
}

.dropdown-menu {
	font-family: 'Courier New', Courier, monospace;
	font-size: small;
}

#header {
	background-color: orange;
}

button {
	color: black;
}

#login, #logout, #admin {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 25px;
	font-weight: bold;
	margin-top: 17px;
	color: white;
}

#welcome {
	color: white;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#footer {
	position: absolute;
	bottom: 0;
	color: white;
	margin-top: 5px;
	background-color: orange;
	height: 50px;
}

#logoutA, #loginA, #adminA {
	color: white;
}

a {
	text-decoration-line: none;
}

a:hover {
	cursor: pointer;
}

.animals:hover {
	cursor: pointer;
}

#kakao-talk-channel-chat-button {
	position: fixed;
	z-index: 999;
	right: 30px;
	bottom: 30px;
}

#aboutMent {
	color: white;
	font-size: larger;
}

#boardDetailPage #notiMain {
	margin: auto;
	width: 1000px;
}

#boardDetailPage #reply {
	margin-left: 26%;
}

#boardDetailPage #contentHead {
	border-bottom: 1px solid black;
	background-color: #198754;
	color: white;
}

#boardDetailPage #contentMain {
	border: 1px solid #ddd;
	height: 800px;
}

#boardDetailPage #viewComment td {
	width: 915px;
	border-bottom: 1px solid #ddd;
}

#boardDetailPage #modifyBtn:hover {
	color: white;
	border: 1px solid black;
}

#boardDetailPage #deleteBtn:hover {
	color: white;
	border: 1px solid black;
}

#noticeBoardListPage #noticeBoardMain {
	margin-left: 20%;
	width: 60%;
}

#noticeBoardListPage th {
	padding: 10px;
	margin-top: 100px;
	background-color: #198754;
	color: white;
}

#noticeBoardListPage th:nth-child(1), #noticeBoardListPage th:nth-child(3),
	#noticeBoardListPage th:nth-child(4), #noticeBoardListPage td:nth-child(1),
	#noticeBoardListPage td:nth-child(3), #noticeBoardListPage td:nth-child(4)
	{
	width: calc(14%);
	padding: calc(11px);
	border-bottom: 1px solid #ddd;
}

/* 제목만 길게, 등록일 날짜,시간 두 줄로 표현  */
#noticeBoardListPage   td:nth-child(2), #noticeBoardListPage th:nth-child(2)
	{
	/* 제목만 길게, 등록일 날짜,시간 두 줄로 표현  */
	/* width: 30%;  */
	border-bottom: 1px solid #ddd;
}

#noticeBoardListPage  button {
	background-color: white;
	border: none;
}

#noticeBoardListPage #noticeBoardTable {
	width: 100%;
	/* 표의 전체 너비를 100%로 설정 */
	table-layout: fixed;
	/* 표의 레이아웃을 고정으로 설정하여 셀 너비가 고정되도록 함 */
}

#noticeBoardListPage  .pointer {
	cursor: pointer;
}

#photoBoardListPage button {
	background-color: white;
	border: none;
}

#photoBoardListPage  #goWrite {
	border: 1px solid black;
}

#photoBoardListPage .pointer {
	cursor: pointer;
}

.section_padding_130 {
	padding-top: 130px;
	padding-bottom: 130px;
}

.faq_area {
	position: relative;
	z-index: 1;
}

.faq-accordian {
	position: relative;
	z-index: 1;
}

.faq-accordian .card {
	position: relative;
	z-index: 1;
	margin-bottom: 1.5rem;
}

.faq-accordian .card:last-child {
	margin-bottom: 0;
}

.faq-accordian .card .card-header {
	background-color: rgba(255, 238, 191, 0.233);
	padding: 0;
	border-bottom-color: #ebebeb;
}

.faq-accordian .card .card-header h5 {
	cursor: pointer;
	padding: 1.75rem 2rem;
	color: #3f43fd;
	/* font-weight: bold; */
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-ms-grid-row-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
}

.faq-accordian .card .card-header h5 span {
	font-size: 1.5rem;
}

.faq-accordian .card .card-header h5.collapsed {
	color: #02031a;
}

.faq-accordian .card .card-header h5.collapsed span {
	-webkit-transform: rotate(-180deg);
	transform: rotate(-180deg);
}

.faq-accordian .card .card-body {
	padding: 1.75rem 2rem;
}

.faq-accordian .card .card-body p:last-child {
	margin-bottom: 0;
}

@media only screen and (max-width: 575px) {
	.support-button p {
		font-size: 14px;
	}
}

.support-button i {
	color: #3f43fd;
	font-size: 1.25rem;
}

@media only screen and (max-width: 575px) {
	.support-button i {
		font-size: 1rem;
	}
}

.support-button a {
	text-transform: capitalize;
	color: #2ecc71;
}

@media only screen and (max-width: 575px) {
	.support-button a {
		font-size: 13px;
	}
}

#tipListPage #tipsImg {
	width: 350px;
	height: 200px;
}

#tipListPage #tip:hover {
	cursor: pointer;
}

#recommendPetPage #petImage {
	width: 400px;
	height: 400px;
}

/* 첫번째 옵션_색상 */
#recommendPetPage #optA {
	font-weight: bolder;
	width: 300px;
	height: 300px;
}

#recommendPetPage #dogPhoto {
	width: 450px;
	height: 400px;
}

#storePage button {
	background-color: white;
	border: none;
}

#storePage .card-body {
	display: flex;
	flex-direction: column;
}

#storePage .card-body>h5, #storePage .card-text, #storePage .card-body>div
	{
	width: 100%;
}

#storePage .card-body .card-text {
	margin-top: auto;
	/* 카테고리를 아래쪽으로 밀어냄 */
}

#storePage .categoryBtn.active .material-icons {
	color: blue;
}

#storePage .categoryBtn.active {
	transform: scale(1.3);
}

#storePage .categoryBtn:not(.active) {
	transform: scale(0.7);
}

#adoptList button {
	background-color: white;
	border: none;
}

#adoptList #paging button {
	margin: 0 5px;
	/* 페이지 번호 버튼 간의 간격 조정 */
}

/* 기존에 float를 사용한 스타일을 제거하거나 수정 */
#adoptList #previous, #next {
	float: none;
	/* 불필요한 float 스타일 제거 */
	margin: 0 5px;
	/* 필요에 따라 조정 */
}

#adoptDetail table {
	width: 50%;
	margin-left: 24%;
}

#adoptDetail table tr td {
	border: 1px solid black;
	padding: 5px;
	text-align: center;
}

#adoptDetail tr {
	font-size: small;
}

#adminPage .todo {
	margin: 0.5rem;
	font-size: 1.2rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: relative;
	padding-right: 60px;
}

#adminPage .todo .todo-content {
	flex: 1;
	padding: 0.5rem 1rem;
	border-bottom: 1px dotted #ccc;
}

#adminPage li {
	list-style-type: none;
}

#adminPage .todo button {
	padding: 0.5rem;
	font-size: 0.8rem;
	cursor: pointer;
	position: absolute;
	right: 10px;
	top: 50%;
	transform: translateY(-50%);
}

#adminPage #contr {
	position: absolute;
	left: 60%;
	transform: translateX(-62%);
}

#boardDetailMain #notiMain {
	margin: auto;
	width: 1000px;
}

#boardDetailMain #reply {
	margin-left: 26%;
}

#boardDetailMain #contentHead {
	border-bottom: 1px solid black;
	background-color: #198754;
	color: white;
}

#boardDetailMain #contentMain {
	border: 1px solid #ddd;
	height: 800px;
}

#boardDetailMain #modifyBtn:hover {
	color: white;
	border: 1px solid black;
}

#boardDetailMain #deleteBtn:hover {
	color: white;
	border: 1px solid black;
}

#adoptNotiPage li {
	margin-bottom: 3px;
}

#chatPage body {
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

#chatPage .message {
	border-top: 1px solid #ccc;
	padding: 10px;
	margin-top: 5px;
	background-color: #e6e6e6;
}

#chatPage #chat-container {
	margin: auto;
	width: 600px;
	height: 600px;
	display: flex;
	flex-direction: column-reverse;
	border: 1px solid #ccc;
	position: relative;
	overflow: hidden;
	/* 내용이 넘칠 경우 스크롤 표시 */
}

#chatPage #chat-messages {
	flex: 1;
	overflow-y: auto;
	padding: 10px;
	/* display: flex; */
	flex-direction: column;
	height: 100%;
	/* chat-container 내에 상대적으로 높이 100%로 설정 */
}

#chatPage #user-input {
	display: flex;
	padding: 10px;
	position: absolute;
	bottom: 0;
	width: 100%;
	background-color: #f0f0f0;
}

#chatPage #user-input input {
	flex: 1;
	padding: 10px;
	outline: none;
}

#chatPage #user-input button {
	border: none;
	background-color: #1e88e5;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}
</style>
</head>

<body>
	<header id="header" class="preconnect">
		<div class="row" style="margin: auto;">
			<div class="col-10 mt-3">
				<a href="/pet/main" class="text-white"><button
						class="nav-link text-white mx-5 px-5" style="font-size: 70px;">
						펫토피아 <i class="fa-solid fa-paw px-1 mt-3"></i>
					</button></a>
			</div>

			<div class="col-2 mt-3">
				<div class="row">
					<c:choose>
						<c:when test="${not empty sessionScope.member}">
							<div class="col-5" id="logout">
								<a href="/pet/member/logout" id="logoutA">로그아웃</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col-12" id="login">
								<a href="/pet/member/login" id="loginA">로그인</a>
							</div>
						</c:otherwise>
					</c:choose>
					<c:if test="${sessionScope.member.id eq 'adminadmin'}">
						<div class="col-4" id="admin">
							<a href="/pet/member/admin" id="adminA">관리</a>
						</div>
					</c:if>

				</div>
				<c:if test="${not empty sessionScope.member}">
					<div class="row">
						<div class="col-6 mt-2 py-1" id="welcome">
							<div
								style="width: max-content; border-bottom: 1px dotted white; border-top: 1px dotted white; font-size: 20px;">
								<i class="fa-solid fa-user"> ${sessionScope.member.nickname }</i>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>


		<div class="navbar container mt-3">
			<div class="dropdown">
				<a href="/pet/about" class="text-white"><button
						class="btn btnw fs-2" type="button" aria-expanded="false">
						사이트 소개</button></a>
				<ul class="dropdown-menu">
					<a href="/pet/about" class="text-white ">
						<li><button class="dropdown-item" type="button" id="about">센터
								소개</button>
					</a>
					</li>
					<a href="/pet/intro" class="text-white">
						<li><button class="dropdown-item" type="button" id="intro">오시는
								길</button>
					</a>
					</li>
				</ul>
			</div>
			<div class="dropdown">
				<a href="/pet/adopt/list" class="text-white"><button class="btn btnw fs-2"
						type="button" aria-expanded="false">입양</button></a>
			</div>
			<div class="dropdown">
				<a href="/pet/volunteer" class="text-white"><button class="btn btnw fs-2"
						type="button" aria-expanded="false">자원봉사</button></a>
				<ul class="dropdown-menu">
					<a href="/pet/volunteer" class="text-white">
						<li><button class="dropdown-item" type="button">봉사신청</button>
					</a>
					</li>
					<a href="/pet/donation" class="text-white">
						<li><button class="dropdown-item" type="button">후원하기</button>
					</a>
					</li>
				</ul>
			</div>
			<div class="dropdown">
				<a href="/pet/noti/list" class="text-white"><button class="btn btnw fs-2"
						type="button" aria-expanded="false">게시판</button></a>
				<ul class="dropdown-menu">
					<a href="/pet/noti/list" class="text-white">
						<li><button class="dropdown-item" type="button">공지사항</button></li>
					</a>
					<a href="/pet/photo/list" class="text-white"><li><button class="dropdown-item"
								type="button" id="goPhotoBoard">후기 게시판</button></li></a>
					<a href="/pet/faq" class="text-white">
						<li><button class="dropdown-item" type="button">FAQ</button></li>
					</a>
				</ul>
			</div>
			<div class="dropdown">
				<a href="/pet/recommend" class="text-white"><button class="btn btnw fs-2"
						type="button" aria-expanded="false">콘텐츠</button></a>
				<ul class="dropdown-menu">
					<a href="/pet/chat" class="text-white">
						<li><button class="dropdown-item" type="button">이름짓기</button></li>
					</a>
					<a href="/pet/recommend">
						<li><button class="dropdown-item" type="button">품종추천</button></li>
					</a>
					<a href="/pet/tip/list">
						<li><button class="dropdown-item" type="button">TIPS</button></li>
					</a>
				</ul>
			</div>
			<div class="dropdown">
				<a href="/pet/store/list" class="text-white"><button class="btn btnw fs-2"
						type="button" aria-expanded="false">스토어</button></a>
			</div>
		</div>
	</header>