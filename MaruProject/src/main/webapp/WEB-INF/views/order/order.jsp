<!--
// 페이지를 열때 장바구니,상품 페이지에서 controller로 정보를 보내면서 생성한 order_idx를 selectKey로 선택해 다시 불러옴
 
//기본값으로 회원정보에서 불러와 출력하되 수정 가능하게 input 필드 제공 
 order_name 
 order_address
 order_address2
 order_passcode
 order_phone
  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문/결제</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <section class="container row m-lr-auto m-tb-150">
    <!-- 	<h4 class="d-block">주문페이지</h4><br> -->
    <form action="${MaruContextPath}/order/order_process" method="post" class="col-md-6 m-auto bg2 cl2 p-5">
      <!-- DB로부터 주문자 정보와 주소를 불러와서 input 태그 기본값으로 집어넣을 것 -->
      <h3 class="">주문자정보</h3>
      <hr>
      <div class="">
        <p class="form-label">주문자</p>
        <input type="text" class="form-control" placeholder="주문자를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">휴대폰번호</p>
        <div class="input-group">
          <select class="form-select col-4" id="phone_1">
            <option value="010" selected>010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="019">019</option>
          </select>
          <input type="text" class="form-control col-4" id="phone_2" maxlength="4">
          <input type="text" class="form-control col-4" id="phone_3" maxlength="4">
          <!-- 자바스크립트로 phone_1,2,3을 하나의 input:text,hidden,name=member_phone 으로 합쳐서 form으로 전송시킬것 -->
        </div>
      </div>
      <br>
      <div class="">
        <p class="form-label">이메일</p>
        <input type="text" class="form-control" placeholder="이메일을 입력해주세요">
      </div>
      <br>


      <h3 class="">배송지정보</h3>
      <hr>
      <div class="">
        <p class="form-label">이름</p>
        <input type="text" class="form-control" placeholder="이름을 입력해주세요">
      </div>
      <br>
      <div>
        <p class="form-label">주소</p>
        <div class="input-group">
          <input type="text" class="form-control col-md-10 float-left" placeholder="주소를 입력해주세요">
          <button type="button" class="btn bg7 cl7 btn-outline-dark pull-right">주소찾기</button>
        </div>
        <input type="text" class="form-control">
        <input type="text" class="form-control">
      </div>
      <br>
      <div class="">
        <p class="form-label">휴대폰번호</p>
        <input type="text" class="form-control" placeholder="휴대폰번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p class="form-label">배송요청사항</p>
        <input type="text" class="form-control" id="delivery_request" list="request_list">
        <datalist id="request_list">
          <option value="문 앞"></option>
          <option value="경비실"></option>
          <option value="택배함"></option>
          <option value="직접 입력"></option>

        </datalist>
      </div>
      <br> <br>


      <h3 class="">결제수단</h3>
      <hr>
      <!-- 버튼을 클릭하여 결제수단을 선택하고, 결제수단이 변경되면 하단에 보여지는 입력폼이 달라짐-->

      <div class="btn-group" role="group" aria-label="Basic radio toggle button group m-tb-10">
        <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio1" autocomplete="off" checked>
        <label class=" col-4" for="btnradio1">신용카드</label>

        <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio2" autocomplete="off">
        <label class=" col-4" for="btnradio2">계좌이체</label>

        <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio3" autocomplete="off">
        <label class=" col-4" for="btnradio3">간편결제</label>
      </div>



      <!-- 신용카드버튼을 눌렀을때의 입력폼-->
      <div class="input-group m-tb-20">
        <span class="input-group-text"> 카드 선택 </span>
        <select class="form-select" id="order_card">
          <option value="삼성" selected>삼성카드</option>
          <option value="현대">현대카드</option>
          <option value="신한">신한카드</option>
          <option value="...">...</option>
        </select>
      </div>
      <br>
      <p>결제 예정 금액: 150,000,000</p>

      <div class="bg-secondary text-white m-5 rounded p-all-10">
        <strong> 구매동의 및 결제대행 서비스 이용약관 등에 동의하십니까?</strong><br>
        <div class="form-check m-3">
          <input class="form-check-input" type="checkbox" value="" id="agree">
          <label class="form-check-label" for="agree"> 모두 동의 </label>
        </div>
      </div>



      <div class="text-center mt-3">
        <button id="linkToPay" type="submit" class="btn bg7 cl7 btn-outline-dark">결제하기</button>
        <button id="linkToMain" type="button" class="btn bg7 cl7 btn-outline-dark">계속 쇼핑하기</button>
      </div>
    </form>
  </section>
  <script>
      document.querySelector("#linkToMain").addEventListener("click", fn_linkToMain);
      function fn_linkToMain() {
        location.href = "${MaruContextPath}/";
      }
    </script>


  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>