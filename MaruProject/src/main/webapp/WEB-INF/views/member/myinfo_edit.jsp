<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>내 정보</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>  
  
  <section class="container row" style="margin:150px auto">
	<h3 class="d-block">회원정보수정</h3><br>
	<form class="col-md-6 m-auto bg-secondary text-white p-5" id="frm" action="${pageContext.request.contextPath}/member/updateinfo.do" method="post">
		<div>
			<p class="form-label">아이디</p>
			<div>
			<input type="text" class="form-control" name="member_id" value="${member_id}" readonly/>
			</div>			
		</div><br><br>
		<div>
			<p class="form-label">비밀번호</p>
			<input type="password" class="form-control" name="member_pw" value="${memberInfoVo.member_pw}" placeholder="비밀번호를 입력해주세요">
		</div><br>	
		<div>
			<p class="form-label">비밀번호확인</p>
			<input type="password" class="form-control" id="member_pw2" name="member_pw2" placeholder="비밀번호 확인">
		</div><br>		
		<div>
			<p class="form-label">이름</p>
			<input type="text" class="form-control" name="member_name" value="${memberInfoVo.member_name}" readonly />			
		</div><br>
		<div>
			<p class="form-label">휴대전화번호</p>
			<input type="text" class="form-control" name="member_phone" value="${memberInfoVo.member_phone}" placeholder="휴대전화번호를 입력해주세요">			
		</div><br>		
		<div>
			<p class="form-label">이메일</p>
			<input type="text" class="form-control col-md-9 float-left" name="member_email" value="${memberInfoVo.member_email}" placeholder="이메일을 입력해주세요">
			<button type="button" class="btn btn-dark float-right">인증번호 전송</button>
		</div><br><br>		
		<div>
			<p class="form-label">인증번호</p>
			<input type="text" class="form-control" placeholder="인증번호를 입력해주세요">
		</div><br>		
		<div>
			<p class="form-label">주소</p>
			<input type="text" class="form-control col-md-10 float-left" name="member_addr" id="member_addr" value="${memberInfoVo.member_addr}" placeholder="주소를 입력해주세요">			
			<button type="button" id="member_addr_btn" class="btn btn-dark float-right">주소찾기</button>
		</div><br><br>
		<div>
			<p class="form-label">상세주소</p>
			<input type="text" class="form-control" name="member_addr2" id="member_addr2" value="${memberInfoVo.member_addr2}" placeholder="상세주소를 입력해주세요">
		</div><br>
		<div class="text-center">
		<button type="submit" class="btn btn-dark">수정하기</button>
		<input type="button" id="deleteAccount" class="btn btn-dark" value="회원탈퇴">
		<input type="button" id="main_btn" class="btn btn-dark" value="메인화면">		
		</div>
	</form>
</section>  
  
  <hr style="clear: both; visibility: hidden; margin: 0;">
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
      document.getElementById("member_addr_btn").addEventListener("click", function() {
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