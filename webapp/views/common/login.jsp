<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="로그인" name="title" />
</jsp:include> 

  <h1 class="col text-center preconnect mt-5" style="font-size: 60px;">펫토피아<i class="fa-solid fa-paw px-1 mt-3"></i>
  </h1>
  <h5 class="col text-center  text-secondary fst-italic mt-3" style="font-size: 13px;">"평생 친구를 만나러 오신 것을 환영합니다. 우리는 여기
    있습니다."</h5>

  <main class="container" style="width: 45%; margin-left: auto;">
    <form action="<%=request.getContextPath()%>/member/login" style="margin-left: 20%;" method="post">

      <div class="row mt-5 mb-3 text-center">
        <div class="col-2 py-2">아이디</div>
        <div class=" col-7"><input type="text" id="id" name="id" class="form-control" placeholder="아이디를 입력해주세요"></div>
      </div>

      <div class="row mb-5 text-center">
        <div class="col-2 py-2">비밀번호</div>
        <div class=" col-7"><input type="password" name="password" id="pw" class="form-control" placeholder="비밀번호를 입력해주세요" onkeydown="handleKeyPress(event)">
        </div>
        
        <c:if test="${loginCheck == false}">        
	        <div id="loginCheck" style="color: red; font-size: 15px; margin-right: 25%" class="text-center mt-3 col">아이디 또는
	          비밀번호를 잘못 입력하셨습니다.
	        </div>
        </c:if>
      </div>

      <!-- 한줄에 하나씩 넣는 방법 -->
      <div class="text-center row">
        <button class="mx-3 btn btn-warning btn-lg" id="loginBtn"
          style="border: 1px solid black; width: 70%;" type="submit">로그인</button>

        <a href="/pet/views/member/sign_up.jsp" type="button" class="btn btn-primary btn-lg mt-3 mx-3 text-white"
          style="border: 1px solid black; width: 70%; margin: 0px;">
          회원가입</a>
      </div>

    </form>

  </main>


  

</body>

</html>