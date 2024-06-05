<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="관리" name="title" />
</jsp:include>

<div id="adminPage">
	<div class="text-center preconnect mt-5 mb-5" style="font-size: 80px;">
		관리자 페이지</div>

	<div id="container" class="mt-5 mb-5">
		<h1 class="mb-3 fw-bold btn btn-lg btn-outline-dark mx-5"
			style="margin: auto;" id="memberManageBtn">회원관리</h1>
		<ul id="todoList" style="display: block;">
			<!-- 각 회원 정보의 헤더 부분 -->
			<li class="todo fs-3 fw-bold text-center">
				<div class="todo-content">
					<strong>아이디</strong>
				</div>
				<div class="todo-content">
					<strong>비밀번호</strong>
				</div>
				<div class="todo-content">
					<strong>닉네임</strong>
				</div>
				<div class="todo-content">
					<strong>이름</strong>
				</div>
			</li>
			<!-- 각 회원 정보가 한 줄씩 입력되는 부분 -->
			<c:forEach var="member" items="${member}">
				<li class="todo fs-3 text-center">
					<div class="todo-content">${member.id}</div>
					<div class="todo-content">${member.password}</div>
					<div class="todo-content">${member.nickname}</div>
					<div class="todo-content">${member.name}</div> 
					<a href="/pet/member/delete?id=${member.id}"><button class="delete-btn btn btn-danger btn-outline-dark text-white btn-lg px-3">삭제</button></a>
				</li>
			</c:forEach>
		</ul>
	</div>

	<h1 class="mb-3 fw-bold btn btn-lg btn-outline-dark mx-5 mb-5"
		style="margin: auto;" id="newAdoptBtn">입양신청내역</h1>
		
	<div id="contr" class="d-flex justify-content-center" style="width: 60%; height: 48%">
		<div id="todot" class="container" style="display: block;">
		
			<c:forEach var="form" items="${forms}">
			    <div class="col photos" id="photo1">
			        <div class="card text-center my-3 p-2">
			            <a href="" onclick="return false;" class="
					    ${form.state == '승인됨' ? 'cardBg1 bg-primary bg-opacity-25' 
					    : form.state == '반려됨' ? 'cardBg1 bg-secondary bg-opacity-25' 
					    : 'cardBg2'}">
    						<img src="${form.filePath}" class="card-img-top rounded mx-auto d-block" style="width: 400px; height: 300px" alt="">
						</a>
						<div class="
					    ${form.state == '승인됨' ? 'cardBg1 bg-primary bg-opacity-25' 
					    : form.state == '반려됨' ? 'cardBg1 bg-secondary bg-opacity-25' 
					    : 'cardBg2'}">
			        		<div>신청자 : ${form.name}</div>
			                <div>연락처 : ${form.phone}</div>
			                <div>주소 : ${form.address}</div>
			                <div>주거형태 : ${form.live}</div>
			                <div>가족구성원 : ${form.family}</div>
			                <div>반려동물 경험 유무 : ${form.experience1}</div>
			                <div class="mb-3">현재 키우고 있는 반려동물 유무 : ${form.experience2}</div>
			                <div class="text-center">
			                    <a href='${pageContext.request.contextPath}/adopt/update?num=${form.formId }&state=yes'>
			                   		<button class="btn btn-warning text-white my-2 m-2 ${form.state == '승인됨' ? 'disabled' : ''}" 
									    style="background-color: ${form.state == '승인됨' ? '#6c757d' : '#ffc107'}; 
									    border-color: ${form.state == '승인됨' ? '#6c757d' : '#ffc107'}; 
									    color: #fff; cursor: ${form.state == '승인됨' ? 'not-allowed' : 'pointer'}; 
									    opacity: ${form.state == '승인됨' ? '0.65' : '1'};" 
									    type="button">
									    승인
									</button>
                                </a>
			                    <a href='${pageContext.request.contextPath}/adopt/update?num=${form.formId }&state=no'>
			                    	<button class="btn btn-success text-white m-2 ${form.state == '반려됨' ? 'disabled' : ''}" 
									    style="background-color: ${form.state == '반려됨' ? '#6c757d' : '#28a745'}; 
									    border-color: ${form.state == '반려됨' ? '#6c757d' : '#28a745'}; 
									    color: #fff; cursor: ${form.state == '반려됨' ? 'not-allowed' : 'pointer'}; 
									    opacity: ${form.state == '반려됨' ? '0.65' : '1'};" 
									    type="button">
									    반려
									</button>
								</a>
			                </div>
			            </div>
			        </div>
			    </div>
			</c:forEach>
		</div>
	</div>
</div>

<script>
	// 토글 함수
	document.addEventListener("DOMContentLoaded", function () {
	    // 기존 코드 유지
	
	    const memberManageBtn = document.getElementById("memberManageBtn");
	    const newAdoptBtn = document.getElementById("newAdoptBtn");
	
	    // 회원관리 버튼 토글
	    memberManageBtn.addEventListener("click", function () {
	        toggleTodoList();
	    });
	
	    // 입양신청내역 버튼 토글
	    newAdoptBtn.addEventListener("click", function () {
	        toggleAdoptList();
	    });
	
	    function toggleTodoList() {
	        const todoList = document.getElementById("todoList");
	        if (todoList.style.display === "none" || todoList.style.display === "") {
	            todoList.style.display = "block";
	        } else {
	            todoList.style.display = "none";
	        }
	    }
	
	    function toggleAdoptList() {
	        const adoptList = document.getElementById("todot");
	        if (adoptList.style.display === "none" || adoptList.style.display === "") {
	            adoptList.style.display = "block";
	        } else {
	            adoptList.style.display = "none";
	        }
	    }
	});

       
</script>

</body>

</html>