<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:include page="/views/common/header.jsp">
<jsp:param value="펫토피아" name="title"/>
</jsp:include>

 <style>
        /* 불투명한 배경 넣기 */
        .background {
            content: "";
            height: 100vh;
            background: url(https://png.pngtree.com/thumb_back/fh260/background/20230512/pngtree-beagles-are-a-cute-breed-and-make-great-pet-companions-image_2507608.jpg) no-repeat center;
            background-size: cover;
            opacity: 0.8;
            position: absolute;
            width: 100vw;

        }

        main {
            text-align: center;
            position: relative;
            color: white;
        }
    </style>

<div id = "mainPage">
    <div class="background">
    
    <main>
        <div style="margin-top:0;">
           
            <!-- <p>펫토피아 로고</p> -->
            <div style="margin-top:250px">  
			<i class="fa-solid fa-paw fs-1" > </i>
            <h1 class="fw-bold mt-3">동물과 사람</h1>
            <h1 class="fw-bold">모두의 꿈이 현실이 되는 곳, 펫토피아</h1>
            <h5>반려동물과 함께하는 행복한 동행이 시작됩니다.</h5>
            </div>
            
        </div>

        <!-- 운영시간/오시는길/공지사항 아이콘-->
        <div class="row mt-5 mb-5" style="margin-left: 10%; margin-right: 10%;">
            <div class="col">
                <button class="btn text-white" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa-regular fa-clock fs-2 mb-2" id="time"></i>
                    <p> 운영시간 </p>
                </button>
                <ul class="dropdown-menu" style="font-size: small;">
                    <li class="fw-bolder">펫토피아 이용시간</li>
                    <li> 09:00 ~ 18:00 </li>
                    <li> 매주 월요일 정기휴관</li>
                </ul>
            </div>

            <!-- 오시는 길 링크로 intro 페이지로 이동  -->
            <div class="col" id="intro">
                <a href="/pet/intro">
                    <button class="btn text-white" type="button">
                        <i class="fa-solid fa-location-dot fs-2 mb-2"></i>
                        <p> 오시는 길 </p>
                    </button>
                </a>
            </div>

            <!-- 공지사항 링크로 notice 페이지 이동  -->
            <div class="col" id="notice">
                <a href="/pet/noti/list">
                    <button class="btn text-white" type="button">
                        <i class="fa-solid fa-circle-exclamation fs-2 mb-2"></i>
                        <p> 공지사항 </p>
                    </button>
                </a>
            </div>
        </div>
    </main>
    </div>
    </div>
</body>

</html>