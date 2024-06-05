<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="입양 신청서" name="title" />
</jsp:include>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-9 mx-auto">
				<h1 class="mb-3 mt-5 text-center preconnect"
					style="font-size: 70px;">
					입양 신청서 <i class="fa-solid fa-paw px-1 mt-3"></i>
				</h1>

				<ul class=" mt-5 mb-5 py-3 rounded-3 text-dark"
					style="font-size: smaller; background-color: rgba(255, 234, 196, 0.288);">
					<li>신청서 검토는 최대 7일 정도 소요될 수 있습니다.</li>
					<li>입양 신청이 반려되는 경우 문자로 안내해 드리고 있습니다.</li>
					<li>작성 시 정보를 정확하게 기재해 주시길 바랍니다.</li>
					<li>동물 입양은 반드시 가족 구성원 전원의 동의를 얻어야 합니다.</li>
					<li>미성년자가 입양을 신청한 경우,본인 및 가족 구성원 중 알레르기가 있거나 <br>동물에게 위해가
						될 수 있는 정신 질환을 가진 경우 입양자 선정에서 제외됩니다.
					</li>
					<li>입양 후 7일/30일/6개월 단위로 사후관리 상담을 진행하고 있습니다.</li>
					<li>입양을 신청하기 전 반려동물을 양육하기에 충분한 준비가 되어있는지 신중하게 고민 후 결정해 주시기
						바랍니다.</li>
				</ul>
				<form action="/pet/adopt/form" class="validation-form" novalidate method="post">
					<input type="hidden" name="num" value="${num }">
					<div class="row">
						<div class="col mb-3">
							<label for="name">이름
								<input type="text"
									class="form-control" name="name" id="name" placeholder="박마루" value=""
									required>							
							</label> 
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="phoneNumber">연락처
							<input type="phoneNumber"
								class="form-control" name="phone" id="phoneNumber" placeholder="010-0000-0000"
								required>
						</label>
						<div class="invalid-feedback">연락처를 입력해주세요.</div>
					</div>

					<!-- 거주지 -->
					<div class="mb-3">

						<label for="address">주소</label>

						<div class="row">
							<input type="text" name="postcode" id="daum_postcode" placeholder="우편번호"
								class="col-10 form-control w-25" style="margin-left: 11px;"
								required> <input type="button"
								onclick="daum_execDaumPostcode()" value="검 색" class="col-1 mx-2"
								required>
						</div>

						<input type="text" name="address1" id="daum_address" placeholder="주소"
							class="form-control" required><br> 
						<input type="text" name="address2" id="daum_detailAddress" placeholder="상세주소"
							class="form-control" required> 
						<input type="text" name="address3" id="daum_extraAddress" placeholder="참고항목(동, 건물명)"
							class="form-control" required>

						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>

					<!-- 주거 형태 -->
					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="home">주거형태
								<select name="live" class="custom-select d-block w-100 py-1" id="home" required>
									<option value=""></option>
									<option value="아파트">아파트</option>
									<option value="단독주택">단독주택</option>
									<option value="오피스텔/빌라">오피스텔/빌라</option>
									<option value="기타">기타</option>
								</select>
							</label> 
							<div class="invalid-feedback">주거 형태를 선택해주세요.</div>
						</div>
					</div>

					<!-- 가족구성원 -->
					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="member">가족구성원
								<select name="family" class="custom-select d-block w-100 py-1" id="member" required>
									<option value=""></option>
									<option value="1인가구">1인가구</option>
									<option value="2인가구">2인가구</option>
									<option value="신혼부부">신혼부부</option>
									<option value="3-4인가구">3-4인가구</option>
									<option value="대가족">대가족</option>
								</select>
							</label> 
							<div class="invalid-feedback">가족 구성원을 선택해주세요.</div>
						</div>
					</div>

					<!-- 반려동물 경험 유무 -->
					<div class="row">
						<div class="col-md-8 mb-3">
							반려동물 경험 유무<br> 
							<label for="yes">있음
								<input type="radio" id="yesWas" name="experience1" value="있음" required /> 
							</label>
							<label for="no">없음
								<input type="radio" id="noWas" name="experience1" value="없음" required /> 
							</label>
							<div class="invalid-feedback">반려동물 경험 유무를 알려주세요</div>
						</div>
					</div>

					<!-- 현재 키우고 있는 반려동물 유무 -->
					<div class="row">
						<div class="col-md-8 mb-3">
							현재 키우고 있는 반려동물 유무<br> 
							<label for="yes">있음
								<input type="radio" id="yesNow" name="experience2" value="있음" required /> 
							</label>
							
							<label for="no">없음
								<input type="radio" id="noNow" name="experience2" value="없음" required />
							</label>
							<div class="invalid-feedback">현재 키우고 있는 반려동물 유무를 알려주세요</div>
						</div>
					</div>

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>


					<div style="width: 50%; margin-left: 25%;"
						class="row text-center mb-5">
						<div class="col mt-5 mb-3 text-center">
							<button class="fw-bold p-3 bg-primary text-white rounded-4" style="width: 100%;" type="submit" id="submitBtn">신청서 제출</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<!-- 주소API 활용 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function daum_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("daum_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("daum_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('daum_postcode').value = data.zonecode;
                document.getElementById("daum_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("daum_detailAddress").focus();
            }
        }).open();
    }

</script>

<!-- 정보를 기입하지 않은 경우 제출되지 않는 스크립트 -->
<!-- 부트스트랩 내에서 제공하는 유효성 검사 (validate, was-validate 사용) -->
<script>
    window.addEventListener('load', () => {
        const forms = document.getElementsByClassName('validation-form');

        Array.prototype.filter.call(forms, (form) => {

            form.addEventListener('submit', function (event) {

                // 유효성 검사에서 통과하지 못할 시 폼제출막기
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                } else {
                    event.preventDefault();
                    alert("입양 신청서가 제출되었습니다. 감사합니다.");
					form.submit();
                                     
                }
                
                form.classList.add('was-validated');
            }, false)

        });
    },);

</script>
</body>

</html>