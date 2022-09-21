<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="/css/bootstrap.css"/>
 <script src="/js/jquery-3.2.1.js"></script>
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
    <form name="joinform" class="needs-validation bg2 text-black p-5 bor10 m-b-50" novalidate  action="${pageContext.request.contextPath}/member/signup_process" method="post">
      <div class="" id="container"> 
        <p class="form-label">아이디</p>
        <input type="text" class="form-control col-md-10 float-left member_id" id="member_id" name="member_id" placeholder="아이디를 입력해주세요"  required style="IME-MODE: disabled"/> <!-- 필수록 입력해야 합니다. --> 
        <button type="button" class="col-2 btn cl0 bg7 float-right" >중복확인</button>
     	<img id="id_check_sucess" style="display: none;">
     	<span class="valid-feedback"></span>
      </div>
      <br> <br>
      <div class="signInMark">
        <p class="form-label">비밀번호</p>
        <input type="password" class="pw form-control" id="member_pw" name="member_pw" placeholder="비밀번호를 입력해주세요(6글자~16글자)" required onchange="check_pw()"/>  <!-- 필수록 입력해야 합니다. --> 
      	<span id="pw"></span>
      </div>
      <br> 
      <div class="signInMark">  
        <p class="form-label">비밀번호확인</p>
        <input type="password" class="pw form-control" id="member_pw2" name="member_pw2" placeholder="비밀번호 확인" required onchange="check_pw()"/> <!-- 필수록 입력해야 합니다. --> 
     	<span id="check"></span>
      </div>
      <br> 
      <div class=""> 
        <p class="form-label">이름</p>
        <input type="text" class="form-control" required id="member_name" name="member_name" placeholder="이름을 입력해주세요" onKeyup="this.value=this.value.replace(/[^가-힣ㄱ-ㅎㅏ-ㅣ]/g,'');"/> <!-- 필수록 입력해야 합니다. -->  
	</div> 
      <br> 
      <div class="">
        <p class="form-label">휴대전화번호</p>
        <input type="text" class="form-control" required id="member_phone" name="member_phone" placeholder="휴대 전화번호 를 입력해주세요" maxlength=12 onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/> <!-- 필수록 입력해야 합니다. --> 
      </div>
      <br>
      <div class="has-feedback">
        <p class="form-label">이메일</p> 
        <input type="email" required class="form-control col-md-9 float-left" id="member_email" name="member_email" placeholder="이메일을 입력해주세요" /> <!-- 필수록 입력해야 합니다. --> 
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
        <input type="text" required class="form-control col-md-10 float-left" id="member_addr" name="member_addr" placeholder="주소를 입력해주세요" /> <!-- 필수록 입력해야 합니다. --> 
        <button type="button" id="member_addr_btn" class="col-2 btn cl0 bg7 float-right">주소찾기</button>
      </div>
      <div class="">
        <p class="form-label">상세주소</p>
        <input type="text" required class="form-control" id="member_addr2" name="member_addr2" placeholder="상세주소를 입력해주세요" /> <!-- 필수록 입력해야 합니다. --> 
      </div>
      <br>
      <div class="">
        <p class="form-label">우편번호</p> 
        <input type="text" class="form-control" id="member_postcode" name="member_postcode" placeholder="우편번호" maxlength=5 readonly/> <!-- 필수록 입력해야 합니다. --> 
      </div>
      <br>
      <div class="text-center"> 
        <button type="submit" class="btn cl0 bg7" onclick="pwck()">가입하기</button> 
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
      
      document.getElementById("member_addr").addEventListener("click", function() { //주소입력칸을 클릭하면
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
    <script type="text/javascript"> 
    function check_pw(){
    	 
        var pw = document.getElementById('member_pw').value;
        var SC = ["!","@","#","$","%"];
        var check_SC = 0;

        if(pw.length < 6 || pw.length>16){
        	document.getElementById('pw').innerHTML='비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.' 
            document.getElementById('pw').style.color='red';
            document.getElementById('member_pw').value='';
        }else{
        	document.getElementById('pw').style.color='green'; 
        	document.getElementById('pw').innerHTML=''  
            }
        for(var i=0;i<SC.length;i++){ 
            if(pw.indexOf(SC[i]) != -1){
                check_SC = 1;
            }
        }
        if(check_SC == 0){
        	document.getElementById('pw').innerHTML='!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.'
        		document.getElementById('pw').style.color='red';
        	document.getElementById('member_pw').value='';
        }else{
        	document.getElementById('pw').style.color='green';  
        	document.getElementById('pw').innerHTML=''
        }
        if(document.getElementById('member_pw').value !='' && document.getElementById('member_pw2').value!=''){
            if(document.getElementById('member_pw').value==document.getElementById('member_pw2').value){
                document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                document.getElementById('check').style.color='green'; 
            }
            else{
                document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                document.getElementById('check').style.color='red';
            }
        }
    }
</script>
   <script type="text/javascript">   
   (function () {
     'use strict'

     // Fetch all the forms we want to apply custom Bootstrap validation styles to
     var forms = document.querySelectorAll('.needs-validation')

     // Loop over them and prevent submission
     Array.prototype.slice.call(forms)
       .forEach(function (form) {
         form.addEventListener('submit', function (event) {
           if (!form.checkValidity()) {
             event.preventDefault()
             event.stopPropagation()
           }

           form.classList.add('was-validated')
         }, false)
       })
   })()
    </script>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>