<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="품종 추천 결과" name="title" />
</jsp:include>


<!-- 결과 출력 -->
    <!-- 결과 출력 -->
    
    <div id = "recommendPage">
    <div id="dogPhoto" class="text-center mt-5">
        <h1 class="preconnect" style="font-size: 50px;">당신에게 추천하는 반려견</h1>
        <img id="petImage" src="<%=request.getContextPath() %>/views/${result.img}" alt="" class="mt-3 mb-5" style = "width : 500px; height:400px;">
        <div id="recommendPetName" class="preconnect mb-4" style="font-size: 50px;">${result.name}</div>
        <div id="recommendPetDetail" class="text-center w-50 mb-3 mt-3 bg-light rounded-4 p-5" style="margin:auto">
        ${result.detail}</div>
        <a href="<%=request.getContextPath() %>/recommend"><button class="mt-4 mb-5 btn btn-primary btn-lg w-50"> 다시하기 </button></a>
    </div>
    </div>









</body>
</html>