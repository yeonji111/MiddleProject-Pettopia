<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/views/common/header.jsp">
	<jsp:param value="회원가입" name="title" />
</jsp:include>

<main> 
  <form action="<%=request.getContextPath() %>/member/signup" class="m-auto form-signin needs-validation text-center" style="width: 80%;" method="post" novalidate>
    <h1 class="col text-center preconnect mt-5 mb-3" style="font-size: 60px;">펫토피아<i class="fa-solid fa-paw px-1"></i>
    </h1>

    <div class="form-group ">

      <label style="width: 300px;" for="validationCustom01">
        <input type="text" name="id" class="form-control" id="id" placeholder="ID" maxlength='20' onblur="checkId(event)"
          required>
        <div id="idCheck1" style="display: none; color: red; font-size: 10px;">ID는 8글자 이상 20글자 이하로 해주세요.</div>
        <div id="idCheck2" style="display: none; color: red; font-size: 10px;">ID는 알파벳 소문자, 숫자로 이루어져야 합니다.</div>
        <div id="idCheck3" style="display: none; color: red; font-size: 10px;">이미 존재하는 ID입니다.</div>
      </label>
    </div>

    <div class="form-group my-1">
      <label style="width: 300px;" for="validationCustom02">
        <input type="password" name="password" class="form-control" id="pw" placeholder="비밀번호" maxlength='20'
          onblur="checkPassword(event)" required>
        <div id="passwordCheck1" style="display: none; color: red; font-size: 10px;">비밀번호는 8글자 이상 20글자 이하로 해주세요.</div>
        <div id="passwordCheck2" style="display: none; color: red; font-size: 10px;">비밀번호는 대문자, 소문자, 숫자를 포함해야 합니다.</div>
      </label>
    </div>
    <div class="form-group my-1">
      <label style="width: 300px;" for="validationCustom03">
        <input type="password" class="form-control" id="confirmPw" placeholder="비밀번호 재확인" maxlength='20'
          onblur="checkPassword(event)" class="mt-1" required>

        <div id="passwordCheck3" style="display: none; color: red; font-size: 10px;">비밀번호 재확인이 틀렸습니다.</div>
      </label>
    </div>

    <div class="form-group">
      <label style="width: 300px;" for="validationCustom03">
        <input type="text" name="nickname" class="form-control" placeholder="닉네임" id="nik" onblur="checkNik(event)" maxlength='20'
          required>
      </label>
    </div>

    <div class="form-group my-1 mt-4">
      <label style="width: 300px;" for="validationCustom04">
        <input type="text" name="name" class="form-control" id="name" placeholder="이름" maxlength='20' onblur="checkName(event)"
          required>
      </label>
    </div>
    <div class="form-group">
      <label style="width: 300px;">
        <input type="text" name="birth" class="form-control" id="birth" placeholder="생년월일 8자리" maxlength='20'
          onkeypress='return checkNumber(event)' required>
      </label>
    </div>
    <div class="btn-group bg-warning my-1" role="group" aria-label="Basic checkbox toggle button group"
      style="width: 300px;" id="genderBtn">
      <input type="checkbox" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" value="1"
        onclick="NoMultiChk(this)">
      <label class="btn btn-outline-dark" for="btnradio1">남자</label>

      <input type="checkbox" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" value="2"
        onclick="NoMultiChk(this)">
      <label class="btn btn-outline-dark" for="btnradio3">여자</label>
    </div>
    <div class="form-group">
      <label style="width: 300px;">
        <input type="tel" name="phone" class="form-control" id="" placeholder="휴대전화번호" maxlength='20'
          onkeypress='return checkNumber(event)' required>
      </label>
    </div>
    <button style="width: 300px;" class="btn btn-lg btn-primary px-5 mt-3 btn-outline-dark text-white" type="submit"
      id="submitBtn">회원가입</button>
  </form>
</main>

  <!-- 저장, 유효성 검사 -->
  <script>
    const submitBtn = document.querySelector("#submitBtn");
    const forms = document.querySelectorAll('.needs-validation');
    let memberArray = new Array();
    let mem_id;
    let mem_pw;
    let mem_nm;
    let mem_nik;

    // 성별 라디오 버튼 체크를 했는지 확인하는 함수
    function NoMultiChk(chk) {
      let obj = document.getElementsByName("btnradio");
      for (let i = 0; i < obj.length; i++) {
        if (obj[i] != chk) {
          obj[i].checked = false;
        }
      }
    }


    // 코드 내부를 엄격 모드로 유효성 검사(함수)를 진행 (=> 의도치 않는 오류를 막아주는 수단)
    (() => {
      'use strict'

      // 폼에 요구하는 모든 조건들을 forms라는 배열로 가져옴
      Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
          let flag = false;
          // 유효성 검사에 통과하지 않으면 제출X, 회원가입 진행X
          if (!form.checkValidity()) {
            
            flag = true;
            event.preventDefault();
            event.stopPropagation();
          }

          // 유효성 검사 통과하면 form에 was-validated라는 클래스 추가
          form.classList.add('was-validated');

          if (!flag) {
        	event.preventDefault();
            alert("회원가입이 완료되었습니다.");
        	form.submit();      
          }
        })
      })
    })()



    // . - 숫자만 입력할 수 있게 제한한 함수 생년월일, 휴대전화에서 사용
    function checkNumber(event) {
      if (event.key === '.'
        || event.key === '-'
        || event.key >= 0 && event.key <= 9) {
        return true;
      }
      return false;
    }


    function checkId(event) {
      // 알파벳 소문자 또는 숫자만 가능
      let regex1 = /^.{8,}$/;
      let regex2 = /^[a-z0-9]+$/;
      const idCheck1 = document.querySelector("#idCheck1");
      const idCheck2 = document.querySelector("#idCheck2");
      // 나중에 중복체크 할 예정
      if (!regex1.test(event.target.value)) {    // 정규식검사1
        event.target.value = "";
        idCheck1.style.display = "block";
        idCheck2.style.display = "none";
        idCheck3.style.display = "none";
      } else if (!regex2.test(event.target.value)) {   // 정규식검사2
        event.target.value = "";
        idCheck1.style.display = "none";
        idCheck2.style.display = "block";
        idCheck3.style.display = "none";
      } else {
        idCheck1.style.display = "none";
        idCheck2.style.display = "none";
        idCheck3.style.display = "none";
     
        mem_id = event.target.value;

        let flag = true;
        for (let i = 0; i < memberArray.length; i++) {
          if (memberArray[i]["mem_id"] == mem_id) {
            flag = false;
          }
        }
        if (!flag) {
          event.target.value = "";
          idCheck1.style.display = "none";
          idCheck2.style.display = "none";
          idCheck3.style.display = "block";
        }
      }
    }
    function checkPassword(event) {
      // 알파벳 대문자, 소문자, 숫자가 1글자 이상 포함되어야 함
      // 한글이 포함되어서는 안됨
      let regex1 = /^.{8,}$/;
      let regex2 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*$/;
      const passwordCheck1 = document.querySelector("#passwordCheck1");
      const passwordCheck2 = document.querySelector("#passwordCheck2");
      // const passwordCheck3 = document.querySelector('#passwordCheck3');

      if (!regex1.test(event.target.value)) {
        event.target.value = "";
        passwordCheck1.style.display = "block";
        passwordCheck2.style.display = "none";
      } else if (!regex2.test(event.target.value)) {
     
        event.target.value = "";
        passwordCheck1.style.display = "none";
        passwordCheck2.style.display = "block";
      } else {
        passwordCheck1.style.display = "none";
        passwordCheck2.style.display = "none";
     
        mem_pw = event.target.value;
      }
    }


    function checkName(event) {
     
      mem_nm = event.target.value;
    }
    function checkNik(event) {
     
      mem_nik = event.target.value;
    }
    function submit() {
      // addMember(mem_id, mem_pw, mem_nm, mem_nik);
    }


    // 비밀번호와 비밀번호 재확인을 비교하여 일치 여부를 확인하는 함수
    function checkPasswordConfirmation() {
      const password = document.getElementById('pw').value;
      const confirmPassword = document.getElementById('confirmPw').value;
      const passwordCheck3 = document.querySelector('#passwordCheck3');

      if (password !== confirmPassword) {
        passwordCheck3.style.display = 'block'; // 비밀번호 불일치 시 메시지 표시
        passwordCheck1.style.display = 'none';
        passwordCheck2.style.display = 'none';
        return false; // 일치하지 않음을 반환
      } else {
        passwordCheck3.style.display = 'none'; // 비밀번호 일치 시 메시지 숨김
        return true; // 일치함을 반환
      }
    }

    // 비밀번호 재확인 input에서 포커스를 잃었을 때 일치 여부를 확인하는 이벤트 핸들러
    document.getElementById('confirmPw').addEventListener('blur', checkPasswordConfirmation);

  </script>
  
</body>

</html>