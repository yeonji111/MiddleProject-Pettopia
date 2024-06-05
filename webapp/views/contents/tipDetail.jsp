<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="팁 글 상세보기" name="title"/>
</jsp:include>



<!-- 팁 제목 -->
<div style="font-size:xxx-large; margin:auto" class ="text-center preconnect mt-5 mb-5">${tip.title}

</div>

<!-- 팁 이미지 -->
<div class="d-flex">
	<img src="${tip.image}" style="width:40%; height:500px; margin:auto;">

</div>

<!-- 팁 내용 -->
<div class ="w-50 mb-5 mt-5" style="margin:auto; font-size:18px;">
${tip.content}

</div>



   
</body>

</html>