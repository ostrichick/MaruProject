<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>내 정보 수정</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%> 
  <!-- 시작 -->
<br><br><br> 
<div class="container" style="width:700px;"> 
<h3 class="col-4" style="float:left ;">회원정보수정</h3>  
<br> 
<br> 
    <form class="bg0 text-black p-5 bor10 m-b-50" action="${pageContext.request.contextPath}/member/updateinfo.do" method="post">
     	<div class="" id="container">  
        <p class="form-label">아이디</p>
        <input type="text" class="form-control col-md-12 float-left" id="member_id" name="member_id" value="${member_id}" readonly/>
      </div>
      <br> <br>
      <div class="">
        <p class="form-label">비밀번호</p>
        <input type="password" class="form-control" id="member_pw" name="member_pw"  value="${memberInfoVo.member_pw}" placeholder="비밀번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">비밀번호확인</p>
        <input type="password" class="form-control" id="member_pw2" name="member_pw2" placeholder="비밀번호 확인">
      </div>
      <br>
      <div class="">
        <p class="form-label">이름</p>
        <input type="text" class="form-control" id="member_name" name="member_name" value="${memberInfoVo.member_name}" readonly/>
      </div>
       <br>
      <div class="">
        <p class="form-label">휴대전화번호</p>
        <input type="text" class="form-control" id="member_phone" name="member_phone" value="${memberInfoVo.member_phone}" placeholder="휴대 전화번호 를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">이메일</p> 
        <input type="email" class="form-control col-md-9 float-left" id="member_email" name="member_email" value="${memberInfoVo.member_email}" placeholder="이메일을 입력해주세요">
        <button type="button" class="col-3 btn bg2 float-right">인증번호 전송</button> 
      </div> 
      <br>
      <div class="">
        <p class="form-label">인증번호</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="인증번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">주소</p>
        <input type="text" class="form-control col-md-10 float-left" id="member_addr" name="member_addr" value="${memberInfoVo.member_addr}" placeholder="주소를 입력해주세요">
        <button type="button" id="member_addr_btn" class="col-2 btn bg2 float-right">주소찾기</button>
      </div>
       <div class="">
        <p  class="form-label">상세주소</p>
        <input type="text" class="form-control" id="member_addr2" name="member_addr2" value="${memberInfoVo.member_addr2}" placeholder="상세주소를 입력해주세요">
      </div>
      <br>
      <div class="text-center">
        <button type="submit" class="btn bg2">수정하기</button> 
		<input type="button" id="deleteAccount" class="btn bg2" value="회원탈퇴">
		<input type="button" id="main_btn" class="btn bg2" value="취소">	 
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
     <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
  <script>
      $("#main_btn").on('click', function(event) {
        event.preventDefault();
        $(location).attr('href', "${pageContext.request.contextPath}/");
      });
      $("#deleteAccount").on('click', function(event) {
        event.preventDefault();
        $(location).attr('href', "${pageContext.request.contextPath}/member/deleteprocess.do");
      });
      //                         document.getElementById("main_btn").addEventListener("click", function() {
      //                           event.preventDefault();
      //                           location.href = "${pageContext.request.contextPath}/";
      //                         });
    </script>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>