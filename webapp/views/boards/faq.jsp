<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="FAQ" name="title" />
</jsp:include>


<div id="faqPage">
	<div class="faq_area" id="faq">
		<div class="container">

			<h1 class="preconnect mb-5 mt-5 text-center" style="font-size: 60px;">F
				A Q</h1>


			<ul class="w-50"
				style="margin-left: 30%; color: #6b6b6b; font-size: smaller;">
				<li style="color: #6b6b6b;">펫토피아를 이용해주시는 분께서 <strong>자주
						물어보시는 질문</strong>들을 한데 모아놨습니다
				</li>
				<li style="color: #6b6b6b;">이외 궁금하신 점은 <strong>카카오톡
						상담하기 혹은 펫토피아 센터 번호</strong>로 연락주세요
				</li>
			</ul>

			<div class="line mb-5"></div>


			<div class="row justify-content-center">
				<div class="col-10 col-sm-10 col-lg-8">
					<div class="accordion faq-accordian" id="faqAccordion">
						<div class="card border-0 wow fadeInUp" data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">

							<div class="card border-0 wow fadeInUp" data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
								<div class="card-header" id="headingSix">
									<h5 class="mb-0 collapsed" data-toggle="collapse"
										data-target="#collapseSix" aria-expanded="true"
										aria-controls="collapseSix">
										펫토피아의 운영시간은 어떻게 되나요?<span class="lni-chevron-up"></span>
									</h5>
								</div>
								<div class="collapse" id="collapseSix"
									aria-labelledby="headingSix" data-parent="#faqAccordion">
									<div class="card-body">
										<ul>
											<li>월 정기휴무 (매주 월요일)</li>
											<br>
											<li>화 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
											<li>수 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
											<li>목 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
											<li>금 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
											<li>토 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
											<li>일 09:00 - 18:00 / 휴게시간 12:00 - 13:00</li>
											<br>
										</ul>
									</div>
								</div>
							</div>

							<div class="card border-0 wow fadeInUp" data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
								<div class="card-header" id="headingSeven">
									<h5 class="mb-0 collapsed" data-toggle="collapse"
										data-target="#collapseSeven" aria-expanded="true"
										aria-controls="collapseSeven">
										펫토피아의 주소는 어떻게 되나요?<span class="lni-chevron-up"></span>
									</h5>
								</div>
								<div class="collapse" id="collapseSeven"
									aria-labelledby="headingSeven" data-parent="#faqAccordion">
									<div class="card-body">
										<ul>
											<li>"대전 중구 계룡로 825 희영빌딩 1층 펫토피아" 입니다.</li>
											<br>
											<p>
												센터의 다른 상세정보는 <a href="<%=request.getContextPath() %>/intro" class="text-primary">여기</a>를
												클릭해주세요
											</p>
										</ul>
									</div>
								</div>
							</div>

							<div class="card border-0 wow fadeInUp" data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
								<div class="card-header" id="headingEight">
									<h5 class="mb-0 collapsed" data-toggle="collapse"
										data-target="#collapseEight" aria-expanded="true"
										aria-controls="collapseEight">
										후원금은 어디에 사용되나요?<span class="lni-chevron-up"></span>
									</h5>
								</div>
								<div class="collapse" id="collapseEight"
									aria-labelledby="headingEight" data-parent="#faqAccordion">
									<div class="card-body">
										<ul>
											<p>펫토피아는 유기동물 인식을 개선하기 위해 유기동물 인식 개선 캠페인과 보호동물의 행동교정에 노력을
												기울이고 있으며, 사지 않고 입양하는 문화를 만들기 위해 노력하고 있습니다.</p>
											<br>

											<li>유지 및 관리 비용: 보호센터 운영에 필요한 주거 공간, 음식, 물 등의 일상적인 유지 비용을
												포함합니다.</li>
											<br>
											<li>의료 비용: 유기견들의 의료 비용으로서, 예방 접종, 중성화 수술, 질병 치료, 상처 치료
												등이 해당됩니다.</li>
											<br>
											<li>사회화 및 행동 교정 프로그램: 유기견들의 사회화와 행동 개선을 위한 교육 프로그램 및 훈련
												비용을 지원합니다.</li>
											<br>
											<li>입양 캠페인 및 홍보 비용: 보호견들을 입양가정에 매칭시키기 위한 캠페인, 입양 홍보 및 광고
												활동에 사용됩니다.</li>
											<br>
											<li>시설 개선 및 환경 개선: 보호센터 시설의 보수 및 개선을 위한 비용으로서, 켄넬, 운동장,
												청결 유지 장비 등을 포함합니다.</li>
											<br>
											<li>보호견의 사료 및 간식 구매: 유기견들에게 적절한 영양 공급을 위해 사료와 간식을 구매하는 데
												사용됩니다.</li>
											<br>
											<li>전문가 및 직원 비용: 보호견들에게 전문적인 돌봄을 제공하기 위해 수의사, 행동 전문가, 관리
												직원 등의 비용을 지원합니다.</li>
											<br>
											<li>응급 상황 대비 비용: 응급 상황 발생 시에 대비하여 비상 상황을 대처하기 위한 비용을
												지원합니다.</li>
											<br>
											<li>지역 사회와의 협력 및 교육 프로그램: 유기견 문제에 대한 사회적 인식을 높이기 위한 협력
												프로그램 및 교육 활동에 사용됩니다.</li>
											<br>
										</ul>
									</div>
								</div>
							</div>

							<div class="card-header" id="headingOne">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne">
									입양 절차 및 요건이 어떻게 되나요?<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseOne"
								aria-labelledby="headingOne" data-parent="#faqAccordion">
								<div class="card-body">
									<p>절차</p>
									<ul>
										<li>문의 및 신청: 입양을 원하는 사람은 해당 입양 센터나 기관에 문의하고 입양 신청서를
											작성합니다.</li>
										<li>면접 및 검토: 입양 신청서를 제출한 후, 입양 센터에서는 신청자와의 면접 및 가정 방문을 통해
											입양 가능 여부를 검토합니다.</li>
										<li>선정 및 계약: 검토를 거쳐 입양이 승인되면 입양 센터와 입양자 간에 입양 계약을 체결하게
											됩니다.</li>
										<li>반환 및 지속적인 지원: 입양 후에도 센터는 입양 가정과의 관계를 유지하며, 필요한 경우
											추가적인 지원을 제공합니다.</li>
									</ul>
									<p>요건</p>
									<ul>
										<li>입양자의 나이: 입양자가 성인이어야 합니다.</li>
										<li>동의서 및 서류 제출: 입양 신청서와 함께 개인 정보 및 동의서 등의 서류 제출</li>
										<li>면담: 면접을 통해 입양자의 생활 환경과 유기견에 대한 책임감을 확인합니다.</li>
										<li>동물 복지 및 책임: 유기견을 입양하려는 사람은 해당 동물의 복지와 책임을 질 수 있는 자격이
											있어야 합니다.</li>
									</ul>

								</div>
							</div>
						</div>
						<div class="card border-0 wow fadeInUp" data-wow-delay="0.3s"
							style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
							<div class="card-header" id="headingTwo">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseTwo" aria-expanded="true"
									aria-controls="collapseTwo">
									입양 비용이 얼마인가요?<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseTwo"
								aria-labelledby="headingTwo" data-parent="#faqAccordion">
								<div class="card-body">

									펫토피아는 입양 시 예방 접종, 중성화 수술, 마이크로칩 장착을 의무로 합니다<br> 따라서 입양하고자
									하는 유기견의 중성화 수술 여부와 예방 접종 여부에 따라 추가 비용이 상이할 수 있습니다.

								</div>
							</div>
						</div>
						<div class="card border-0 wow fadeInUp" data-wow-delay="0.4s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<div class="card-header" id="headingThree">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseThree" aria-expanded="true"
									aria-controls="collapseThree">
									유기견의 건강 및 상태가 걱정이 됩니다<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseThree"
								aria-labelledby="headingThree" data-parent="#faqAccordion">
								<div class="card-body">

									<ul>
										<li>정기적인 건강 검진: 펫토피아는 입양 전에 유기견의 건강을 최대한 확인하고 관리합니다. 정기적인
											건강 검진과 예방 접종을 통해 유기견의 건강을 지속적으로 모니터링하고 있습니다.</li>
										<br>

										<li>의료 기록 제공: 유기견의 의료 기록을 제공하여 입양자가 그 동물의 과거 의료 이력을 확인할 수
											있습니다. 이는 동물의 건강 상태를 이해하고 적절한 관리를 할 수 있도록 도와줍니다.</li>
										<br>

										<li>전문가의 조언: 만약 입양 후에도 걱정이 있으시다면 언제든지 저희 센터의 전문가들에게 문의하실
											수 있습니다. 입양 후 지속적인 지원을 제공하여 유기견의 건강과 행복을 돕는 것이 저희의 목표입니다.</li>
										<br>

										<li>입양 후 지속적인 관리: 유기견을 안정적이고 건강하게 키우기 위해 입양 후에도 센터에서는
											지속적인 관리와 지원을 제공합니다. 필요한 경우 건강 상태를 확인하고 적절한 조치를 취할 수 있도록
											도와드리겠습니다.</li>
										<br>

										<li>신뢰할 수 있는 정보 제공: 유기견 보호 센터는 입양자가 동물의 건강과 복지에 대해 걱정할
											필요가 없도록 노력하고 있습니다. 센터에서는 입양자에게 신뢰할 수 있는 정보와 자료를 제공하여 입양 후에도
											동물을 적절히 관리할 수 있도록 돕고 있습니다.</li>
										<br>
									</ul>
								</div>
							</div>
						</div>

						<div class="card border-0 wow fadeInUp" data-wow-delay="0.5s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<div class="card-header" id="headingFour">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseFour" aria-expanded="true"
									aria-controls="collapseFour">
									유기동물이라 아이들이 많이 사납고 키우기 힘들지 않을까요?<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseFour"
								aria-labelledby="headingFour" data-parent="#faqAccordion">
								<div class="card-body">
									<ul>
										<li>개별적인 접근: 각각의 유기견은 개별적인 성격과 특성을 갖고 있습니다. 저희 센터에서는 각
											유기견의 성격을 면밀히 관찰하고 입양자에게 정확한 정보를 제공하여 적절한 선택을 할 수 있도록 돕고 있습니다.</li>
										<br>

										<li>성장과 적응: 유기견은 새로운 환경에 적응하고 성장하는 과정이 필요할 수 있습니다. 시간이
											지나면서 입양된 유기견들은 새로운 가정에서 사랑과 관심을 받으며 안정감을 찾아갈 것입니다.</li>
										<br>

										<li>종합적인 평가: 저희 센터에서는 입양 전에 유기견의 성격과 특성을 종합적으로 평가하고 입양자에게
											솔직하고 정확한 정보를 제공합니다. 이를 통해 입양자가 동물과 잘 맞는지를 신중히 고려할 수 있습니다.</li>
										<br>

										<li>지속적인 지원: 유기견을 입양한 후에도 저희 센터는 지속적인 지원을 제공합니다. 만약 입양 후에
											문제가 발생하거나 도움이 필요하다면 언제든지 연락하실 수 있으며, 센터에서는 적절한 조언과 지원을 제공할
											것입니다.</li>
										<br>

										<li>양육 경험의 중요성: 입양자가 유기견의 성격과 특성에 대해 걱정한다면, 센터에서는 입양 전에
											입양자와의 면접을 통해 유기견의 양육 경험과 동물에 대한 이해도를 고려하여 적절한 조언을 제공합니다.</li>
										<br>
									</ul>
								</div>
							</div>
						</div>

						<div class="card border-0 wow fadeInUp" data-wow-delay="0.6s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<div class="card-header" id="headingFive">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseFive" aria-expanded="true"
									aria-controls="collapseFive">
									입양 후 지원받을 수 있는 제도와 서비스가 있을까요?<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseFive"
								aria-labelledby="headingFive" data-parent="#faqAccordion">
								<div class="card-body">
									<ul>
										<li>지속적인 연락과 지원: 펫토피아는 입양 후에도 지속적인 연락과 지원을 제공합니다. 만약 어떤
											문제가 발생하거나 도움이 필요하다면 언제든지 저희에게 연락하실 수 있습니다.</li>
										<br>
										<li>상담 및 조언: 입양 후에도 저희 센터에서는 입양자에게 필요한 상담과 조언을 제공합니다.
											유기견의 행동 문제나 건강 관리에 대한 질문이 있으시면 언제든지 도와드리겠습니다.</li>
										<br>
										<li>임시 보호 및 재입양: 만약 입양 후에 동물과의 상호 작용이 어려운 상황이 발생하면, 저희
											센터에서는 임시 보호나 재입양을 고려할 수 있습니다. 입양자와 유기견 모두에게 최선의 해결책을 찾기 위해
											노력합니다.</li>
										<br>
										<li>사회적 활동 및 교육 프로그램: 저희 센터에서는 입양자들을 위한 다양한 사회적 활동과 교육
											프로그램을 제공합니다. 유기견과의 교감을 즐기는 행사나 훈련 강의 등에 참여하여 입양 후에도 동물과 함께
											행복한 시간을 보낼 수 있습니다.</li>
										<br>
										<li>커뮤니티 지원: 펫토피아는 지역 커뮤니티와 함께하여 입양자들에게 필요한 지원을 제공합니다. 지역
											동물 복지 단체나 베테랑 입양자들과의 연결을 통해 더 많은 지원을 받을 수 있습니다.</li>
										<br>
									</ul>
								</div>
							</div>
						</div>


						<div class="card border-0 wow fadeInUp" data-wow-delay="0.6s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<div class="card-header" id="headingNine">
								<h5 class="mb-0 collapsed" data-toggle="collapse"
									data-target="#collapseNine" aria-expanded="true"
									aria-controls="collapseNine">
									펫토피아에서 자원봉사를 할 수 있는 방법이 있나요?<span class="lni-chevron-up"></span>
								</h5>
							</div>
							<div class="collapse" id="collapseNine"
								aria-labelledby="headingNine" data-parent="#faqAccordion">
								<div class="card-body">
									<p>물론입니다! 펫토피아에서는 자원봉사자님들의 도움을 환영하며, 주로 다음과 같은 방법으로 봉사할 수
										있습니다.</p>
									<ul>
										<li>보호견 돌봄: 보호견들의 산책, 먹이 주기, 청소 등의 기본적인 돌봄을 제공합니다.</li>
										<br>
										<li>행동 교정 및 사회화: 보호견들의 행동 문제를 개선하고 사회화를 도와줍니다.</li>
										<br>
										<li>입양 캠페인 및 홍보: 입양 캠페인의 일환으로 홍보 활동을 지원합니다.</li>
										<br>
										<li>시설 관리 및 정리: 보호센터 시설의 정리, 청소, 정비 작업을 수행합니다.</li>
										<br>
										<li>이벤트 및 행사 참여: 보호견을 대중에 소개하기 위한 이벤트나 행사에 참여하여 도움을 줍니다.</li>
										<br>
									</ul>
									<p>
										봉사신청은 <a href="./volunteer.html" class="text-primary">여기</a>를
										클릭해주세요.
									</p>
								</div>
							</div>
						</div>



					</div>

					<div
						class="support-button text-center d-flex align-items-center justify-content-center mt-4 mb-5 wow fadeInUp"
						data-wow-delay="0.5s"
						style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
						<i class="lni-emoji-sad"></i>
						<p class="mb-0 px-2">Can't find your answers?</p>
						<a href="/pet/views/introduce/about.jsp"> 센터 정보 확인하기 </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
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