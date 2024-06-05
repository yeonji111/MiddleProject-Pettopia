<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="오시는길" name="title"/>
</jsp:include>

<main>

        <p class="text-center preconnect mt-5" style="font-size: 100px;">오시는 길</p>
        <section>
            <!-- api활용 지도 표시 -->
            <div class="row">
            <div class="d-flex justify-content-center mb-5 mt-5 col">
                <div id="map" style="width:900px;height:300px;"></div>
            </div>
            </div>


            <!-- 상세 정보 아이콘 -->
            <div class="d-flex justify-content-center mb-5">
                
                <div style="text-align: left;" class="row">
                   <div class="col"></div>
                    <div style="border: 1px solid #ddd;" class="rounded-4 py-3 col-5">
                    <p><i class="fa-sharp fa-solid fa-location-dot text-warning"></i> 대전 중구 계룡로 825 희영빌딩 1층 펫토피아 </p>
                    <p><i class="fa-solid fa-phone text-warning"></i> 042-719-8850 </p>
                    <p><i class="fa-solid fa-bus-simple text-warning"></i> 대중교통 이용 902, 912, 912-2, 912-4, 912-5 아울렛에서
                        도보 19분</p>
                    <p><i class="fa-solid fa-car text-warning"></i> 주차 안내 : 방문객 1주차장 무료 이용 가능 </p>
                </div>


                    <!-- 운영 시간 안내 -->
                    <div class="col"></div>
                    <div style="text-align: left; border: 1px solid #ddd;" class="rounded-4 py-3 col-5">
                        <p><i class="fa-sharp fa-solid fa-clock text-warning"></i> 운영 시간 </p>
                        <p> 월 정기휴무 (매주 월요일) </p>
                        <p> 화 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                        <p> 수 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                        <p> 목 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                        <p> 금 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                        <p> 토 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                        <p> 일 09:00 - 18:00 / 휴게시간 12:00 - 13:00 </p>
                    </div>

                </div>
        </section>
    </main>

    <!-- 페이지 하단 푸터, 간단한 센터 정보 안내 -->
    <footer>
        <div id="kakao-talk-channel-chat-button"></div>
    </footer>

    <!-- 스크립트에서 Kakao SDK 불러오기 -->
        <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ffe886fcaa59516f2b2fc313c8f23117"></script>
        <script src="util.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

    <!-- 카카오톡 상담하기 버튼 생성 스크립트 -->
    <script type="text/javascript">
        Kakao.init('ffe886fcaa59516f2b2fc313c8f23117');
        Kakao.Channel.createChatButton({
            container: '#kakao-talk-channel-chat-button', // 버튼이 표시될 위치 지정
            channelPublicId: '_xcfJWG' // 카카오톡 채널 홈 URL에 명시된 id로 설정
        });
    </script>


    <!-- 지도 표시 함수 -->
    <!-- 위도, 경도 원하는 장소로 변경 (청주보호소/학원)-->
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(36.3267, 127.4078), // 지도의 중심좌표
                level: 4 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커가 표시될 위치입니다 
        var markerPosition = new kakao.maps.LatLng(36.3267, 127.4078);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        var iwContent = '<div style="padding:3px; margin-bottom:10px; margin-left:2px; font-weight:bold;">펫토피아<br><a href="https://map.kakao.com/link/map/펫토피아,36.3267,127.4078" style="color:blue;"  target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/펫토피아,36.3267,127.4078" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(36.3267, 127.4078); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position: iwPosition,
            content: iwContent
        });

        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker); 
    </script>




</body>


</html>