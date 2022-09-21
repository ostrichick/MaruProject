<!-- 장바구니 페이지

프론트) product_idx와 cart_product_number를 이용해 카트 테이블과 상품 테이블을 조인시켜서 상품가격을 가져오고
product_number의 값을 올리고 내릴때마다 JS 이벤트를 사용해 실시간으로 해당품목 가격합과 장바구니 금액 총합을 구한다  

백엔드)
    1. 쓰기 : product/detail 에서 처리

    2. 보기 :
      -> db에서 member_idx가 일치하는 회원의 cartVo를 ArrayList로 담아서 가져옴
      -> ArrayList안의 cartVo를 하나씩 출력
      -> 조건문을 이용해 ArrayList<cartVo>가 비어있을 경우 장바구니가 비어있습니다 메세지 출력
    
    3. 수정 : 
    
    4. 삭제 : 
    
    -->
<!--===============================================================================================-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>장바구니</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="${MaruContextPath}/" class="stext-109 cl8 hov-cl1 trans-04"> 메인화면 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <span class="stext-109 cl4"> 장바구니 </span>
    </div>
  </div>

  <!-- Shoping Cart -->
  <form class="container m-b-50">
    <h3 class="m-tb-50 m-l-50">장바구니</h3>
    <div class="wrap-table-shopping-cart">
      <table class="table-shopping-cart txt-center">
        <tr class="table_head">
          <th class="">선택</th>
          <th colspan="2" class="">상품</th>
          <th class="">가격</th>
          <th class="">수량선택</th>
          <th class=""></th>
        </tr>

        <tr class="table_row">
          <td class="">
            <div class="form-check">
              <input class="input-lg form-check-input dis-inline-block" type="checkbox" value="" id="delete_item" checked>
            </div>
          </td>
          <td class="">
            <div class="">
              <img class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/resources/images/product-01.jpg" width="150" alt="IMG">
            </div>
          </td>
          <td class="txt-left">제품명ㅇㅇㅇㅇ ㅇㅇㅇㅇㅇ</td>
          <td class="txt-right">1,380,000원</td>
          <td class="">
            <div class="wrap-num-product flex-w m-auto">
              <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-minus"></i>
              </div>

              <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-plus"></i>
              </div>
            </div>
          </td>

          <td class="">
            <button type="button" class="btn bg1 cl7 btn-outline-dark">삭제</button>
          </td>
        </tr>
        <c:forEach var="cart" items="${cartList}" varStatus="status">

        <tr class="table_row">
          <td class="">
            <div class="form-check">
              <input class="form-check-input dis-inline-block" type="checkbox" value="" id="delete_item" checked>
            </div>
          </td>
          <td class="">
            <div class="">
              <img class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/resources/images/product-01.jpg" width="150" alt="IMG">
            </div>
          </td>
          <td class="txt-left">${cart.product_idx }</td>
          <td class="txt-right">180,000원</td>
          <td class="">
            <div class="wrap-num-product flex-w m-auto">
              <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-minus"></i>
              </div>

              <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-plus"></i>
              </div>
            </div>
          </td>
          <td class="">
            <button type="button" class="btn bg1 cl7 btn-outline-dark">삭제</button>
          </td>
        </tr>
        </c:forEach>
        
      </table>
    </div>

    <div class="bg8 text-dark p-l-150 p-tb-40 fs-18 ">
      <p class="fs-20 p-tb-10">
        <strong>[ 주문내역 ]</strong>
      </p>
      <table class="txt-right table-hover">
        <tr>
          <td>주문금액 :</td>
          <td>180,000원</td>
        </tr>
        <tr>
          <td>배송비 :</td>
          <td>2,500원</td>
        </tr>
        <tr>
          <td>총주문금액 :</td>
          <td>182,500원</td>
        </tr>
      </table>
    </div>
    <div class="mt-5 txt-center">
      <button id="linkToOrder" type="button" class="btn btn-lg bg7 cl7 btn-outline-secondary">상품 구매</button>
      <button id="linkToMain" type="button" class="btn bg2 cl2 ml-5 btn-outline-secondary">계속 쇼핑하기</button>
    </div>
  </form>
  <script>
      document.querySelector("#linkToOrder").addEventListener("click", fn_linkToOrder);
      function fn_linkToOrder() {
        let url = "${MaruContextPath}/order/order?cart_idx=";
        //         url += idx; // fn_linkToOrder() 인자를 cart_idx 로 받아서 url에 더할 것
        location.href = url;
      }

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