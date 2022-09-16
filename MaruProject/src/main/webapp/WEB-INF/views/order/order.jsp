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
      <h3 class="col-md-4">주문자정보</h3>
      <hr>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">주문자</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="주문자를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">휴대폰번호</p>
        <div class="row">
          <div class="dropdown">
            <button class="btn btn-dark dropdown-toggle ml-3" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">선택</button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="#">010</a></li>
              <li><a class="dropdown-item" href="#">011</a></li>
              <li><a class="dropdown-item" href="#">016</a></li>
              <li><a class="dropdown-item" href="#">017</a></li>
            </ul>
          </div>
          <input type="text" class="form-control col-md-4 ml-5" id="exampleFormControlInput1">
          <input type="text" class="form-control col-md-4 ml-4" id="exampleFormControlInput1">
        </div>
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">이메일</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이메일을 입력해주세요">
      </div>
      <br>


      <h3 class="col-md-4 mt-5">배송지정보</h3>
      <hr>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">이름</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이름을 입력해주세요">
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">주소</p>
        
        <input type="text" class="form-control col-md-10 float-left" id="exampleFormControlInput1" placeholder="주소를 입력해주세요">
        <button type="button" class="btn btn-dark pull-right">주소찾기</button>
        <input type="text" class="form-control" id="exampleFormControlInput1">
        <input type="text" class="form-control" id="exampleFormControlInput1">
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">휴대폰번호</p>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="휴대폰번호를 입력해주세요">
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">배송요청사항</p>
        <input type="text" class="form-control col-md-10 float-left" id="exampleFormControlInput1">
        <div class="dropdown">
          <button class="btn btn-dark dropdown-toggle float-right" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">선택</button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">문앞에 놓아주세요</a></li>
            <li><a class="dropdown-item" href="#">부재시 연락주세요</a></li>
            <li><a class="dropdown-item" href="#">경비실에 맡겨주세요</a></li>
            <li><a class="dropdown-item" href="#">직접입력</a></li>
          </ul>
        </div>
      </div>
      <br> <br>


      <h3 class="col-md-4 bg-dark mt-5">결제수단</h3>
      <hr>
      <!-- 버튼을 클릭하여 결제수단을 선택하고, 결제수단이 변경되면 하단에 보여지는 입력폼이 달라짐-->
      <button type="button" class="btn btn-primary">신용카드결제</button>
      <button type="button" class="btn btn-primary disabled">계좌입금</button>

      <!-- 신용카드버튼을 눌렀을때의 입력폼-->
      <div class="dropdown mt-3">
        카드선택
        <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">선택</button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
          <li><a class="dropdown-item" href="#">삼성카드</a></li>
          <li><a class="dropdown-item" href="#">신한카드</a></li>
          <li><a class="dropdown-item" href="#">국민카드</a></li>
          <li><a class="dropdown-item" href="#">등등</a></li>
        </ul>
      </div>
      <div class="dropdown mt-3">
        할부선택
        <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">선택</button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
          <li><a class="dropdown-item" href="#">일시불</a></li>
          <li><a class="dropdown-item" href="#">2개월</a></li>
          <li><a class="dropdown-item" href="#">3개월</a></li>
          <li><a class="dropdown-item" href="#">4개월</a></li>
          <li><a class="dropdown-item" href="#">5개월</a></li>
          <li><a class="dropdown-item" href="#">6개월</a></li>
        </ul>
      </div>
      <br>
      <p>총결제예정금액: 150,000,000</p>

      <div class="bg-secondary text-white m-5">
        <strong> 구매동의 및 결제대행 서비스 이용약관 등에 동의하십니까?</strong><br>
        <div class="form-check m-3 ml-5">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
          <label class="form-check-label" for="flexCheckDefault"> 모두동의 </label>
        </div>
      </div>



      <div class="text-center mt-3">
        <button id="linkToPay" type="submit" class="btn btn-dark">결제하기</button>
        <button id="linkToMain" type="button" class="btn btn-dark">계속 쇼핑하기</button>
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