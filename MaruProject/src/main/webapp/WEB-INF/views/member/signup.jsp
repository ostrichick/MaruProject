<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <!-- 시작 -->
  <br>
  <br>
  <br>
  <div class="container" style="width: 700px;">
    <h3 class="col-4" style="float: left;">회원가입</h3>
    <br> <br>
    <form class="bg2 text-black p-5 bor10 m-b-50" action="${pageContext.request.contextPath}/member/signup_process" method="post">
      <div class="" id="container">
        <p class="form-label">아이디</p>
        <input type="text" class="form-control col-md-10 float-left" id="member_id" name="member_id" placeholder="아이디를 입력해주세요">
        <button type="button" class="col-2 btn cl0 bg7 float-right">중복확인</button>
      </div>
      <br> <br>
      <div class="">
        <p class="form-label">비밀번호</p>
        <input type="password" class="form-control" id="member_pw" name="member_pw" placeholder="비밀번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">비밀번호확인</p>
        <input type="password" class="form-control" id="member_pw2" name="member_pw2" placeholder="비밀번호 확인">
      </div>
      <br>
      <div class="">
        <p class="form-label">이름</p>
        <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">휴대전화번호</p>
        <input type="text" class="form-control" id="member_phone" name="member_phone" placeholder="휴대 전화번호 를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">이메일</p>
        <input type="email" class="form-control col-md-9 float-left" id="member_email" name="member_email" placeholder="이메일을 입력해주세요">
        <button type="button" class="col-3 btn cl0 bg7 float-right">인증번호 전송</button>
      </div>
      <br>
      <div class="">
        <p class="form-label">인증번호</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="인증번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">주소</p>
        <input type="text" class="form-control col-md-10 float-left" id="member_addr" name="member_addr" placeholder="주소를 입력해주세요">
        <button type="button" id="member_addr_btn" class="col-2 btn cl0 bg7 float-right">주소찾기</button>
      </div>
      <div class="">
        <p class="form-label">상세주소</p>
        <input type="text" class="form-control" id="member_addr2" name="member_addr2" placeholder="상세주소를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">우편번호</p>
        <input type="text" class="form-control" id="member_postcode" name="member_postcode" placeholder="우편번호">
      </div>
      <br>
      <div class="text-center">
        <button type="submit" class="btn cl0 bg7">가입하기</button>
        <button type="reset" class="btn cl0 bg1">취소</button>
      </div>
    </form>
  </div>
  <!-- 끝 -->


  <hr style="clear: both; visibility: hidden; margin: 0;">
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
      document.getElementById("member_addr_btn").addEventListener("click", function() { //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
          oncomplete : function(data) { //선택시 입력값 세팅
            document.getElementById("member_addr").value = data.address; // 주소 넣기
            document.getElementById("member_postcode").value = data.zonecode; // 우편번호 넣기
            document.querySelector("input[name=member_addr2]").focus(); //상세입력 포커싱
          }
        }).open();
      });
    </script>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>