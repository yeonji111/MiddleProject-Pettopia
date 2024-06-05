<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:include page="/views/common/header.jsp">
<jsp:param value="봉사" name="title"/>
</jsp:include>
    

    <main class="container text-center">


        <section class="d-flex p-5 row">
            <img src="./volunteer.png" alt="자원봉사모집공고이미지" class="rounded-5 col" style="width: 550px; height: 600px;">
            <div class="col fs-bold" style="margin-top: 10px;">
                <a href="https://www.1365.go.kr"><button class="w-100 btn btn-lg btn-warning my-4 text-white">봉사
                        신청하기<i class="fa-solid fa-paw"></i></button></a>
                        
                <div class="row mt-4">

                    <img src="https://dept.galleria.co.kr/rightgalleria/images/news/new-p-9-1.jpg" alt="환경정화중인 자원봉사자분들"
                        id="work" class="col">
                    <img src="https://www.youthdaily.co.kr/data/photos/20231043/art_16980240994461_a8aa92.jpg"
                        alt="산책봉사중인 자원봉사자분들" id="work" class="col">
                    <img src="https://spnimage.edaily.co.kr/images/Photo/files/NP/S/2017/09/PS17090800177.jpg"
                        alt="미용봉사중인 자원봉사자분들" id="work" class="col">


                </div>

                <div class="row mt-4">
                    <img src="https://mblogthumb-phinf.pstatic.net/MjAyMTEyMDhfMTM2/MDAxNjM4OTcyNDMxNDI1.TKxNjEXNwo4lIE6GXeYWTe1I5xLO1vXa4oZFEi5YQBkg.3A3Rm-4W7k4Xgq6V8O5cD8xsTHZk51NbfZcHhR-b80Qg.JPEG.miran990620/1638970011688.jpg?type=w800"
                        alt="미용봉사중인 자원봉사자분들" id="work" class="col">
                    <img src="https://www.sjpost.co.kr/news/photo/201708/18968_15878_1332.jpg" alt="돌봄봉사중인 청소년 자원봉사자분들"
                        id="work" class="col">
                    <img src="https://ojsfile.ohmynews.com/STD_IMG_FILE/2020/0629/IE002659762_STD.jpg"
                        alt="산책봉사중인 자원봉사자분들" id="work" class="col">
                </div>

            </div>

        </section>



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
            container: '#kakao-talk-channel-chat-button', // 버튼이 표시될 위치 지정
            channelPublicId: '_xcfJWG' // 카카오톡 채널 홈 URL에 명시된 id로 설정
        });
    </script>


</body>

</html>