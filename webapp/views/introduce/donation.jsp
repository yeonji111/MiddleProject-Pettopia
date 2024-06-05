<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="후원" name="title"/>
</jsp:include>


<div id = "donationPage">
        <!-- 올바른 문화 형성, 가치관 안내 -->
        <section class="container text-center mt-5 mb-5 justify-content-center">
            <div>
                유기견 입양을 선호하지 않는 이유는 질병문제 41%, 행동문제 33%로 조사되었습니다.<br>
                하지만 이러한 문제는 <strong>올바른 훈련법과 보호자의 꾸준한 관심</strong>으로 충분히 개선할 수 있는 문제들입니다.<br>
                <br>
                <p>펫토피아는 이러한 인식을 개선하기 위해 유기동물 인식 개선 캠페인과 보호동물의 행동교정에 노력을 기울이고 있으며,<br>
                사지 않고 입양하는 문화를 만들기 위해 노력하고 있습니다.<br>
                여러분의 후원금은 펫토피아의 올바른 반려동물 문화 만들기를 위한 활동에 사용됩니다.</p>
            </div>
        </section>


        <!-- 후원금 사용처 안내 -->
        <section>
            <div class="container text-center mt-5 mb-5">
                <div class="row">

                    <div class="col">
                        <p class="fs-5 fw-bold">OFFLINE EVENT</p>
                        <img src="https://wemakenews.co.kr/data/tmp/2211/20221113213253_kkhphmgr.jpg" alt="홍보 전시회 포스터" class="rounded-4" style="width: 250px; height: 168px;">
                        <p style="font-size: smaller;" class="mt-2"> 입양 홍보 전시회 </p>
                    </div>

                    <div class="col">
                        <p class="fs-5 fw-bold">DONATION</p>
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRnUMBCYv5Ztg901kgPzcgq4xU-TWPYAgSZw&usqp=CAU" class="rounded-4"
                            alt="유기동물 사료 기부"  style="width: 250px; height: 168px;">
                        <p style="font-size: smaller;" class="mt-2"> 타 유기동물 보호센터 사료 기부 </p>
                    </div>

                    <div class="col">
                        <p class="fs-5 fw-bold">FESTIVAL</p>
                        <img src="https://cdn.imweb.me/thumbnail/20220113/01cf4b19e94f1.jpg"
                            alt="댕댕런 반려동물, 유기동물과 함께 하는 마라톤" class="rounded-4"  style="width: 250px; height: 168px;">
                        <p style="font-size: smaller;" class="mt-2"> 유기동물, 반려동물과 함께 하는 마라톤 행사 추진 </p>
                    </div>

                    <div class="col ">
                        <p class="fs-5 fw-bold">EDUCATION</p>
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_XL_OqpZpYmeKq64Tdp4qODXwEzEKlL4Z5w&usqp=CAU"
                            alt="보호동물 행동교정" class="rounded-4"   style="width: 250px; height: 168px;">
                        <p style="font-size: smaller;" class="mt-2"> 보호동물 행동교정 </p>
                    </div>

                </div>
            </div>
        </section>

        <section class="container rounded-4 mb-5 fw-bold text-center justify-content-center bg-success bg-opacity-75" style="width: 30%; height: 100px; padding-top: 10px;">
            <div class="fs-5 text-light"> 올바른 반려동물 문화 만들기에 동참해주세요 </div>
            <div> 후원계좌 : 92581-73645-028 댕댕은행 </div>
            <div> 입금자명 : 펫토피아 </div>

        </section>

        <footer>
            <div id="kakao-talk-channel-chat-button"></div>
        </footer>
   
</div>
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