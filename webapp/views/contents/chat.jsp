<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="이름짓기" name="title"/>
</jsp:include>
    <div id = "chatPage">
    <p class="mt-5 mb-5 col text-center preconnect" style="font-size: 60px;">인공지능(AI)를 활용하여
        반려동물 이름 짓기</p>
    <div class="text-center mb-5 fst-italic">
        <p>반려동물의 특성을
            파악하여 생성되는 이름!</p>
        <p>단 몇 분만에 가능합니다!<br>
            내 반려동물의 이름은 무엇이 좋을까요?</p>
    </div>

    <div class="col mx-5 text-center" style="margin-left: 500px;"><img src="views/품종추천이미지/이름추천.jpg" alt=""
            style="opacity: calc(70%);"></div>e
    <p class="mt-5 mb-5 col text-center fs-1 fw-bold">인공지능(AI)를 활용하여
        반려동물 이름을 쉽고
        빠르게 만들어 보세요!</p>

    <div class="row mt-5 text-dark w-50 py-4 px-3 rounded-4"
        style="background-color: rgba(253, 232, 200, 0.7); margin-left: 25%;">
        <h5 class="col fw-bold mt-3">반려동물의 특성을
            파악하여 생성되는 이름! <br>
            <p class="row fw-light mt-2 px-1 text-center" style="font-size: smaller;">
                인공지능(AI)를 활용하여 반려동물 이름을 쉽고<br> 빠르게 생성합니다! <br>여러분의 동물 친구에게 딱 맞는 이름을 찾아드립니다</p>
        </h5>

        <p class="col mt-3">반려동물의 이름은 매우 중요한 역할을 합니다. <strong>식별성 강화, 반려견과 소통과 교감, 유대감 형성, 애착과 안정감 형성</strong>을 위해 이름은 반려동물과
            주인 간의 소통을 강화하고 특별한 유대감을 형성하는 데 도움이 됩니다. </p>


    </div>

    <h5 class="mt-5 text-center fst-italic">간단한 질문에 답변하고 나의 반려동물 특징을 담은 별명과 이름을
        확인해보세요!<br> 창의적이고 재밌는 결과가 기다립니다.<br><br>
        <!-- <a href="./chatStart.html" class="btn btn-lg bg-warning text-center btn-outline-dark px-5 mb-5">시작하기</a> -->
        <button class="btn btn-lg text-center btn-outline-dark px-5 mb-5" id="startBtn"
            style="background-color: orange;">시작하기</button>
    </h5>


    <div id="chat-container" style="display: none;" class="mb-5">
        <div id="chat-messages"></div>
        <div id="user-input">
            <input type="text" placeholder="ex. 활발한 노란색 중형 개 이름을 추천해줘" />
            <button>전송</button>
        </div>
    </div>
    </div>

    <!-- 시작하기 버튼 이벤트 함수 -->
    <script>
        const startBtn = document.querySelector("#startBtn");
        const chatContainer = document.querySelector('#chat-container');


        startBtn.addEventListener('click', function () {
            // 클릭할 때마다 chat-container의 표시 여부를 토글
            chatContainer.style.display = chatContainer.style.display === 'none' ? 'block' : 'none';
            const location = document.querySelector("#chat-container").offsetTop;
            console.log(location);
            window.scrollTo({ top: location, behavior: "smooth" });
        })
    </script>


    <script>
        // 채팅 메시지를 표시할 DOM
        const chatMessages = document.querySelector('#chat-messages');
        // 사용자 입력 필드
        const userInput = document.querySelector('#user-input input');
        // 전송 버튼
        const sendButton = document.querySelector('#user-input button');
        // 발급받은 OpenAI API 키를 변수로 저장
        const apiKey = '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';
        // OpenAI API 엔드포인트 주소를 변수로 저장
        const apiEndpoint = 'https://api.openai.com/v1/chat/completions'
        function addMessage(sender, message) {
            // 새로운 div 생성
            const messageElement = document.createElement('div');
            // 생성된 요소에 클래스 추가
            messageElement.className = 'message';
            // 채팅 메시지 목록에 새로운 메시지 추가
            messageElement.textContent = `\${sender}: \${message}`;
            chatMessages.prepend(messageElement);
        }
        // ChatGPT API 요청
        async function fetchAIResponse(prompt) {
            // API 요청에 사용할 옵션을 정의
            const requestOptions = {
                method: 'POST',
                // API 요청의 헤더를 설정
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer \${apiKey}`
                },
                body: JSON.stringify({
                    model: "gpt-3.5-turbo",  // 사용할 AI 모델
                    messages: [{
                        role: "user", // 메시지 역할을 user로 설정
                        content: prompt // 사용자가 입력한 메시지
                    },],
                    temperature: 0.8, // 모델의 출력 다양성
                    max_tokens: 1024, // 응답받을 메시지 최대 토큰(단어) 수 설정
                    top_p: 1, // 토큰 샘플링 확률을 설정
                    frequency_penalty: 0.5, // 일반적으로 나오지 않는 단어를 억제하는 정도
                    presence_penalty: 0.5, // 동일한 단어나 구문이 반복되는 것을 억제하는 정도
                    stop: ["Human"], // 생성된 텍스트에서 종료 구문을 설정
                }),
            };
            // API 요청후 응답 처리
            try {
                const response = await fetch(apiEndpoint, requestOptions);
                const data = await response.json();
                const aiResponse = data.choices[0].message.content;
                return aiResponse;
            } catch (error) {
                console.error('OpenAI API 호출 중 오류 발생:', error);
                return 'OpenAI API 호출 중 오류 발생';
            }
        }
        // 전송 버튼 클릭 이벤트 처리
        sendButton.addEventListener('click', async () => {
            // 사용자가 입력한 메시지
            const message = userInput.value.trim();
            // 메시지가 비어있으면 리턴
            if (message.length === 0) return;
            // 사용자 메시지 화면에 추가
            addMessage('사용자', message);
            userInput.value = '';
            //ChatGPT API 요청후 답변을 화면에 추가
            const aiResponse = await fetchAIResponse(message);
            addMessage('챗봇', aiResponse);
        });
        // 사용자 입력 필드에서 Enter 키 이벤트를 처리
        userInput.addEventListener('keydown', (event) => {
            if (event.key === 'Enter') {
                sendButton.click();
            }
        });
        // 
    </script>

</body>

</html>