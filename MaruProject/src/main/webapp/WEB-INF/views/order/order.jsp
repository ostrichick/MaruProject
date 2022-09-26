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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <section class="container row m-lr-auto m-tb-150">

    <!-- DB로부터 주문자 정보와 주소를 불러와서 input 태그 기본값으로 집어넣을 것 -->
    <form action="${MaruContextPath}/order/order_process" method="post" class="col-md-6 m-auto bg2 cl2 p-5">
      <h3 class="">주문자정보</h3>
      <hr>
      <div class="">
        <p class="form-label">주문자</p>
        <input type="text" class="form-control" value="${memberInfoVo.member_name }" readonly>
      </div>
      <br>

      <div class="">
        <p class="form-label">휴대폰번호</p>
        <div class="input-group">
          <select class="form-select col-4" id="phone_1" disabled>
            <option value="010" selected>010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="019">019</option>
          </select>
          <input type="text" class="form-control col-4" id="phone_2" maxlength="4" readonly>
          <input type="text" class="form-control col-4" id="phone_3" maxlength="4" readonly>
          <!-- 자바스크립트로 phone_1,2,3을 하나의 input:text,hidden,name=member_phone 으로 합쳐서 form으로 전송시킬것 -->
        </div>
      </div>
      <br>
      <div class="">
        <p class="form-label">이메일</p>
        <input type="text" class="form-control" value="${memberInfoVo.member_email}" readonly>
      </div>
      <br>
      <hr />
      <h3 class="">수령인 배송지 정보</h3>
      <hr>

      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <input type="checkbox" id="order_same_person" aria-label="Checkbox for following text input" checked>
          </div>
        </div>
        <input type="text" class="form-control" value="주문자와 같음" aria-label="Text input with checkbox" readonly>
      </div>



      <div class="">
        <p class="form-label">이름</p>
        <input type="text" class="form-control" name="order_name" value="${memberInfoVo.member_name }">
      </div>
      <br>
      <div>
        <p class="form-label">주소</p>
        <div class="input-group">
          <input type="text" class="form-control col-md-10 float-left" name="order_address" value="${memberInfoVo.member_addr}">
          <button type="button" class="btn bg7 cl7 btn-outline-dark pull-right">주소찾기</button>
        </div>
        <input type="text" class="form-control" name="order_address2" value="${memberInfoVo.member_addr2}">
        <input type="text" class="form-control" name="order_postcode" value="${memberInfoVo.member_postcode}">
      </div>
      <br>
      <div class="">
        <p class="form-label">휴대폰번호</p>
        <input type="text" class="form-control" name="order_phone" value="${memberInfoVo.member_phone}">
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

      <!--       <h3 class="">결제수단</h3> -->
      <!--       <hr> -->
      <!--       버튼을 클릭하여 결제수단을 선택하고, 결제수단이 변경되면 하단에 보여지는 입력폼이 달라짐 -->

      <!--       <div class="btn-group" role="group" aria-label="Basic radio toggle button group m-tb-10"> -->
      <!--         <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio1" autocomplete="off" checked> -->
      <!--         <label class=" col-4" for="btnradio1">신용카드</label> -->

      <!--         <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio2" autocomplete="off"> -->
      <!--         <label class=" col-4" for="btnradio2">계좌이체</label> -->

      <!--         <input type="radio" class="btn-check m-b-7" name="btnradio" id="btnradio3" autocomplete="off"> -->
      <!--         <label class=" col-4" for="btnradio3">간편결제</label> -->
      <!--       </div> -->

      <!--       신용카드버튼을 눌렀을때의 입력폼 -->
      <!--       <div class="input-group m-tb-20"> -->
      <!--         <span class="input-group-text"> 카드 선택 </span> -->
      <!--         <select class="form-select" id="order_card"> -->
      <!--           <option value="삼성" selected>삼성카드</option> -->
      <!--           <option value="현대">현대카드</option> -->
      <!--           <option value="신한">신한카드</option> -->
      <!--           <option value="...">...</option> -->
      <!--         </select> -->
      <!--       </div> -->
      <!--       <br> -->

      <p>
        결제 예정 금액: <span id="order_total_price">${order_total_price }</span>
      </p>
      <!--       <div class="bg-secondary text-white m-5 rounded p-all-10"> -->
      <!--         <strong> 구매동의 및 결제대행 서비스 이용약관 등에 동의하십니까?</strong><br> -->
      <!--         <div class="form-check m-3"> -->
      <!--           <input class="form-check-input" type="checkbox" value="" id="agree"> -->
      <!--           <label class="form-check-label" for="agree"> 모두 동의 </label> -->
      <!--         </div> -->
      <!--       </div> -->

      <div class="text-center mt-3">
        <a href="#" id="linkToPay" type="submit" class="btn bg7 cl7 btn-outline-dark">결제하기</a> <a href="${MaruContextPath}" id="linkToMain" type="button" class="btn bg7 cl7 btn-outline-dark">계속 쇼핑하기</a>
      </div>
    </form>
  </section>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <script>
      let order_total_price = parseInt("${order_total_price}");
      $("#order_total_price").html("₩" + order_total_price.toLocaleString('en').split(".")[0]);

      let member_name = "${memberInfoVo.member_name}";
      let member_email = "${memberInfoVo.member_email}";
      let member_phone = "${memberInfoVo.member_phone}";
      let member_combined_address = "${memberInfoVo.member_addr}" + " " + "${memberInfoVo.member_addr}";
      let member_postcode = "${memberInfoVo.member_postcode}";

      let phone_2ndpart = member_phone.substr(3, 4)
      let phone_3rdpart = member_phone.substr(7)

      $("#phone_2").val(phone_2ndpart);
      $("#phone_3").val(phone_3rdpart);

      $("#order_same_person").on("change", function() {
        //         $("form[type = post]").find()
        $("input").each(function(index, item) {
//           console.log(index);
//           console.log(item);
          console.log(item.getAttribute("readonly"));
//            if (item.attr("readonly") == undefined) {
//             item.val("");
//           } 
        })

      })

      document.querySelector("#linkToPay").addEventListener("click", iamport);
      function iamport() {
        //가맹점 식별코드
        IMP.init('imp48355641');
        IMP.request_pay({
          pg : 'html5_inicis',
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '테스트용 장바구니1', //결제창에서 보여질 이름. 
          amount : 123,//order_total_price, //실제 결제되는 가격
          buyer_email : member_email,
          buyer_name : member_name,
          buyer_tel : member_phone,
          buyer_addr : member_combined_address,
          buyer_postcode : member_postcode
        }, function(rsp) {
          console.log(rsp);
          if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
            $("form[method=post]").submit();
          } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
          }
          alert(msg);
        });
      }
    </script>
</body>
</html>