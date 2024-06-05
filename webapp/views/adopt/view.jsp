<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="유기동물 정보" name="title" />
</jsp:include>

<div id="adoptDetail">
	<body class=" text-center">

		<div class="main">
			<header id="header"></header>

			<div class="fs-5 fw-bold">
				<i class="fa-solid fa-paw px-1 mt-5 fs-1"> </i> 새로운 가족을 찾습니다 <i
					class="fa-solid fa-paw px-1 mt-5 fs-1"> </i>
			</div>

			<div class="mt-3" style="font-size: smaller;">
				<p>
					<i class="fa-solid fa-phone"></i> <strong>문의</strong> 042-719-8850
					<span class="px-3"></span> | <span class="px-3"></span> <i
						class="fa-sharp fa-solid fa-location-dot px-2"></i><strong>방문</strong>
					대전 중구 계룡로 825 희영빌딩 1층 펫토피아
				</p>
			</div>
			<div class="bg-"></div>
			<div id="photoZone" class="mt-4 mb-4"><img src=" ${adoptVO.filePath}" style="width: 600px; height: 400px"></div>

			<ul id="animalInfo">
				<table>
					<tr>
						<td>현재상태</td>
						<td>${adoptVO.status}</td>
					</tr>
					<tr>
						<td>동물분류</td>
						<td>${adoptVO.classification}</td>
					</tr>

					<tr>
						<td>품종</td>
						<td>${adoptVO.species}</td>
					</tr>

					<tr>
						<td>나이</td>
						<td>${adoptVO.age}</td>
					</tr>

					<tr>
						<td>성별</td>
						<td>${adoptVO.gender}</td>
					</tr>

					<tr>
						<td>몸무게</td>
						<td>${adoptVO.weight}</td>
					</tr>

					<tr>
						<td>특징</td>
						<td>${adoptVO.memo}</td>
					</tr>
				</table>

			</ul>
			<a href="/pet/adopt/noti?num=${adoptVO.num }">
				<button class="text-white fw-bold p-3 bg-warning rounded-4 m-4" style="width: 200px;" id="goAdopNoti">입양신청</button>
			</a> 
			
			<a href="javascript:history.back()">
				<button class="text-white fw-bold p-3 bg-success rounded-4" style="width: 100px;">목록</button>
			</a>
		</div>

	</body>

</div>


</html>