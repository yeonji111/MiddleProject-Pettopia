<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="품종추천" name="title"/>
</jsp:include>

    <div id = "recommendPetPage">
    <div id="select" class=" mt-5 mb-5">

        <div id="questionA" class="text-center">
            <h1 class="preconnect" style="font-size: 50px;"> Q.내가 원하는 반려동물의 털색은? </h1>

            <div class="row mt-5 mb-5 w-75" style="margin-left: 15%;">
                <div class="py-2 col mx-1"  id="optA"
                    onclick="nextQuestionA('questionB', 'questionA', 'white')"> <img src="views/품종추천이미지/흰색.jpg" alt="흰색" id = "dogPhoto"><h1  class="mt-3" style="font-weight: bolder;">흰색</h1> </div>
                <div class="py-2 col mx-1"  id="optA"
                    onclick="nextQuestionA('questionB', 'questionA', 'brown')"> <img src="views/품종추천이미지/갈색.jpg" alt="갈색" id = "dogPhoto"><h1  class="mt-3" style="font-weight: bolder;">갈색</h1> </div>
                <div class="py-2 col mx-1" id="optA"
                    onclick="nextQuestionA('questionB', 'questionA', 'black')"> <img src="views/품종추천이미지/검정색.jpg" alt="검정색" id = "dogPhoto"><h1  class="mt-3" style="font-weight: bolder;">검정색</h1> </div>
            </div>
        </div>

        <!-- 사이즈 질문 -->
        <div id="questionB" class="text-center" style="display: none;">
            <h1 class="preconnect" style="font-size: 50px;"> Q.내가 원하는 반려동물의 사이즈는? </h1>
            <div class="row mt-5 mb-5 w-75" style="margin-left: 15%;">
                <div id="optB" class="py-2 col mx-1" onclick="nextQuestionB('questionC', 'questionB', 'small')"><img src="views/품종추천이미지/소형견.jpg" alt="소형견" id = "dogPhoto"> <h1 class="mt-3" style="font-weight: bolder;">소형</h1></div>
                <div id="optB" class="py-2 col mx-1" onclick="nextQuestionB('questionC', 'questionB', 'medium')"><img src="views/품종추천이미지/중형견.jpg" alt="중형견" id = "dogPhoto"> <h1 class="mt-3" style="font-weight: bolder;">중형</h1></div>
                <div id="optB" class="py-2 col" onclick="nextQuestionB('questionC', 'questionB', 'large')"><img src="views/품종추천이미지/대형견.jpg" alt="대형견" id = "dogPhoto"> <h1 class="mt-3" style="font-weight: bolder;">대형</h1></div>
            </div>
        </div>

        <!-- 거주지 질문 -->

        <div id="questionC" class="text-center" style="display: none;">
            <h1 class="preconnect" style="font-size: 50px;"> Q.내가 반려동물을 키울 장소는? </h1>
            <div class="row mt-5 mb-3">
            
               
                <div class="col-6" onclick="showResult('result', 'questionC', 'in')">
                    <img src="views/품종추천이미지/아파트.jpg" alt="아파트에서 개 키우는 모습" style="width: 500px; height: 333px;">
                    <h1 class="mt-3" style="font-weight: bolder;">실내</h1>
                </div>
                
                
                
                <div class="col-6" onclick="showResult('result', 'questionC', 'out')">
                    <img src="views/품종추천이미지/단독주택.jpg" alt="마당있는 단독 주택에서 개 키우는 모습">
                    <h1 class="mt-3" style="font-weight: bolder;">실외</h1>
                </div>
                
                
                <div class="col"></div>
            </div>
      
        </div>
    </div>

    <!-- 결과 출력 -->
    <div id="result" class="text-center mt-5" style="display: none;">
        <h1 class="preconnect" style="font-size: 50px;">당신에게 추천하는 반려견</h1>
        <img id="petImage" src="" alt="" class="mt-3 mb-5">
        <div id="recommendPetName" class="preconnect mb-4" style="font-size: 50px;"></div>
        <div id="recommendPetDetail" class="text-center w-50 mb-3 mt-3 bg-light rounded-4 p-5" style="margin:auto">
        </div>
        <a href="./recommendPet.html"><button class="mt-4 mb-5 btn btn-primary btn-lg w-50"> 다시하기 </button></a>
    </div>
</div>

    <script>
        let currentQuestion = 'questionA';
        let selectedColor = '';
        let selectedSize = '';
        let selectedHome = '';
        let selectedImg = '';
        let selectedName = '';
        let selectedDetail = '';
		let resultUrl = "/pet/recommend/result?";

        function nextQuestionA(next, current, color) {
            document.getElementById(current).style.display = 'none';
            document.getElementById(next).style.display = 'block';
            currentQuestion = next;
            selectedColor = color;

            resultUrl += "color=" + color;

        }

	
        function nextQuestionB(next, current, size) {
            document.getElementById(current).style.display = 'none';
            document.getElementById(next).style.display = 'block';
            currentQuestion = next;
            selectedSize = size;
         
            resultUrl += "&size=" + size;
        }


        // 3차 필터 및 조건에 충족하는 결과물 출력
        function showResult(next, current, home) {
            document.getElementById(current).style.display = 'none';
            document.getElementById(next).style.display = 'block';
            currentQuestion = next;
            selectedHome = home;
            resultUrl += "&home=" + home;
            location.href = resultUrl;
           
            // 
//             recommendPet.find(pet => console.log(pet.name));

//             recommendPet.find(pet =>
//                 selectedImg = pet.img);

//             recommendPet.find(pet =>
//                 selectedName = pet.name

//             );


//             recommendPet.find(pet =>
//                 selectedDetail = pet.detail
//             );


//             document.getElementById('select').style.display = 'none';
//             document.getElementById('result').style.display = 'block';

//             // id에 해당하는결과물 이미지, 이름, 상세정보 출력
//             document.getElementById('petImage').src = selectedImg;
//             document.getElementById('recommendPetName').innerHTML = `${selectedName}`;
//             document.getElementById('recommendPetDetail').innerHTML = `${selectedDetail}`;

        }

    </script>


</body>

</html>